Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD51AEB7C
	for <lists+linuxppc-users@lfdr.de>; Tue, 10 Sep 2019 15:27:27 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46SQn804sPzF0Qh
	for <lists+linuxppc-users@lfdr.de>; Tue, 10 Sep 2019 23:27:24 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Received: from ozlabs.org (bilbo.ozlabs.org [203.11.71.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 46SQXz0048zDrdj;
 Tue, 10 Sep 2019 23:16:50 +1000 (AEST)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=neuling.org
Authentication-Results: lists.ozlabs.org; dkim=pass (2048-bit key;
 unprotected) header.d=neuling.org header.i=@neuling.org header.b="afV9jy3e"; 
 dkim-atps=neutral
Received: from neuling.org (localhost [127.0.0.1])
 by ozlabs.org (Postfix) with ESMTP id 46SQXw5LXpz9s7T;
 Tue, 10 Sep 2019 23:16:48 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=neuling.org;
 s=201811; t=1568121409;
 bh=8YpvriWgZotmerko0J+/vGDj0I0pWRFk35pz5gDDI3E=;
 h=Subject:From:To:Cc:Date:From;
 b=afV9jy3e43LDgZZ6cCx9zYoP1i33CBwatneHIcRpDM/dYSvl+PlNywbzT+32oG8bn
 fEMIvS/EcUUFmz95slyme9PkgMYgwoPxm0MXKvlhgOpBJTLx8yJ+fD9kBATXOj0sLi
 nG6HuBAKzF/cRbGWpr+PY+ZZjgLNPMuG903ctQ4DgFMuPgXxDt1fq1bFFHmpCcU6RY
 kg0D3PZkrvxrSW/O7PyFz9OOIHTq218qDKrHhGyJxJFRkeGORToHoddoe+bLFs1/eP
 MVgPofN8mI0/qQ2RmkZQupFHsoohFs5gTiHM6Y7yW3C1MGAvBppA731Z70wSer0/Xn
 4tyf33YQYzK8w==
Received: by neuling.org (Postfix, from userid 1000)
 id 9362C2A01E8; Tue, 10 Sep 2019 23:16:48 +1000 (AEST)
Message-ID: <856d6efa0e9b4dd39030e7372a17e3dba2db2aef.camel@neuling.org>
From: Michael Neuling <mikey@neuling.org>
To: oss-security <oss-security@lists.openwall.com>
Date: Tue, 10 Sep 2019 23:16:48 +1000
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: [Linuxppc-users] CVE-2019-15030: Linux kernel: powerpc: data leak
 with FP/VMX triggerable by unavailable exception in transaction
X-BeenThere: linuxppc-users@lists.ozlabs.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Practical discussions on Power systems and Linux SW
 <linuxppc-users.lists.ozlabs.org>
List-Unsubscribe: <https://lists.ozlabs.org/options/linuxppc-users>,
 <mailto:linuxppc-users-request@lists.ozlabs.org?subject=unsubscribe>
List-Archive: <http://lists.ozlabs.org/pipermail/linuxppc-users/>
List-Post: <mailto:linuxppc-users@lists.ozlabs.org>
List-Help: <mailto:linuxppc-users-request@lists.ozlabs.org?subject=help>
List-Subscribe: <https://lists.ozlabs.org/listinfo/linuxppc-users>,
 <mailto:linuxppc-users-request@lists.ozlabs.org?subject=subscribe>
Cc: Michael Ellerman <michael@ellerman.id.au>,
 Gustavo Romero <gromero@linux.vnet.ibm.com>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Linuxppc-users <linuxppc-users@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

The Linux kernel for powerpc since v4.12 has a bug in it's TM handling where any
user can read the FP/VMX registers of a difference user's process. Users of TM +
FP/VMX can also experience corruption of their FP/VMX state.

To trigger the bug, a process starts a transaction and reads a FP/VMX register.
This transaction can then fail which causes a rollback to the checkpointed
state. Due to the kernel taking an FP/VMX unavaliable exception inside a
transaction and the kernel's incorrect handling of this, the checkpointed state
can be set to the FP/VMX registers of another process. This checkpointed state
can then be read by the process hence leaking data from one process to another.

The trigger for this bug is an FP/VMX unavailable exception inside a
transaction, hence the process needs FP/VMX off when starting the transaction.
FP/VMX availability is under the control of the kernel and is transparent to the
user, hence the user has to retry the transaction many times to trigger this
bug. 

All 64-bit machines where TM is present are affected. This includes all POWER8
variants and POWER9 VMs under KVM or LPARs under PowerVM. POWER9 bare metal
doesn't support TM and hence is not affected.

The bug was introduced in commit:
  f48e91e87e67 ("powerpc/tm: Fix FP and VMX register corruption")
Which was originally merged in v4.12

The upstream fix is here:
  https://git.kernel.org/torvalds/c/8205d5d98ef7f155de211f5e2eb6ca03d95a5a60

The fix can be verified by running the tm-poison from the kernel selftests. This
test is in a patch here:
https://patchwork.ozlabs.org/patch/1157467/
which should eventually end up here:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/testing/selftests/powerpc/tm/tm-poison.c

cheers
Mikey





_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
