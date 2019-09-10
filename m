Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id 286EBAEB93
	for <lists+linuxppc-users@lfdr.de>; Tue, 10 Sep 2019 15:29:38 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46SQqg33PSzDr7M
	for <lists+linuxppc-users@lfdr.de>; Tue, 10 Sep 2019 23:29:35 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Received: from ozlabs.org (bilbo.ozlabs.org [IPv6:2401:3900:2:1::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 46SQY41FGVzDrcF;
 Tue, 10 Sep 2019 23:16:56 +1000 (AEST)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=neuling.org
Authentication-Results: lists.ozlabs.org; dkim=pass (2048-bit key;
 unprotected) header.d=neuling.org header.i=@neuling.org header.b="oUUf9Q64"; 
 dkim-atps=neutral
Received: from neuling.org (localhost [127.0.0.1])
 by ozlabs.org (Postfix) with ESMTP id 46SQY16KHnz9sP6;
 Tue, 10 Sep 2019 23:16:53 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=neuling.org;
 s=201811; t=1568121413;
 bh=AuX99LUqbp1Lf5Waj0ruq7cGRnU1eycOTwzoHk5YkPk=;
 h=Subject:From:To:Cc:Date:From;
 b=oUUf9Q64Li8hy7ydebbi2lLVMvsD3aRYrfl8Q4F5PTGojl/aBh202eNYsD9haEyjX
 oKYKjO72NZoacLd8SPMjb057qAXCf3ZfjcmNPS5U0zyVF/1ZTDKyQhulDqHfi/ho2z
 H3UgB3zbZK1gYRvDrFJ/HVYjEGpL0oS29fXO0WTBxvZAAZ+3UhVkRJxzl4Vhk21EEn
 VgXONSN+j4pZeCd3Ia/IaFDAIbKP3SvKAb8EJ7BZS9xjjcC0r4uFvnK3XE/CUkyyXS
 bu5YExcfGHPWBRulBgjw6KtOgzn8U89hIZGJJdxLtW+Nw1PobTSwCB1+r6+/dO1b/k
 pvdLmCgyrlnpQ==
Received: by neuling.org (Postfix, from userid 1000)
 id BB6EE2A276E; Tue, 10 Sep 2019 23:16:53 +1000 (AEST)
Message-ID: <2b9f664b4763f745dee7efa526285eb891c99c72.camel@neuling.org>
From: Michael Neuling <mikey@neuling.org>
To: oss-security <oss-security@lists.openwall.com>
Date: Tue, 10 Sep 2019 23:16:53 +1000
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: [Linuxppc-users] CVE-2019-15031: Linux kernel: powerpc: data leak
 with FP/VMX triggerable by interrupt in transaction
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

The Linux kernel for powerpc since v4.15 has a bug in it's TM handling during
interrupts where any user can read the FP/VMX registers of a difference user's
process. Users of TM + FP/VMX can also experience corruption of their FP/VMX
state.

To trigger the bug, a process starts a transaction with FP/VMX off and then
takes an interrupt. Due to the kernels incorrect handling of the interrupt,
FP/VMX is turned on but the checkpointed state is not updated. If this
transaction then rolls back, the checkpointed state may contain the state of a
different process. This checkpointed state can then be read by the process hence
leaking data from one process to another.

The trigger for this bug is an interrupt inside a transaction where FP/VMX is
off, hence the process needs FP/VMX off when starting the transaction. FP/VMX
availability is under the control of the kernel and is transparent to the user,
hence the user has to retry the transaction many times to trigger this bug. High
interrupt loads also help trigger this bug.

All 64-bit machines where TM is present are affected. This includes all POWER8
variants and POWER9 VMs under KVM or LPARs under PowerVM. POWER9 bare metal
doesn't support TM and hence is not affected.

The bug was introduced in commit:
  fa7771176b439 ("powerpc: Don't enable FP/Altivec if not checkpointed")
Which was originally merged in v4.15

The upstream fix is here:
  https://git.kernel.org/torvalds/c/a8318c13e79badb92bc6640704a64cc022a6eb97

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
