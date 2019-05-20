Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0AB238C3
	for <lists+linuxppc-users@lfdr.de>; Mon, 20 May 2019 15:50:18 +0200 (CEST)
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 4570df1ZRrzDqCR
	for <lists+linuxppc-users@lfdr.de>; Mon, 20 May 2019 23:50:14 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=none (mailfrom) smtp.mailfrom=free.fr
 (client-ip=2a01:e0c:1:1599::13; helo=smtp4-g21.free.fr;
 envelope-from=dftxbs3e@free.fr; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=free.fr
Received: from smtp4-g21.free.fr (smtp4-g21.free.fr [IPv6:2a01:e0c:1:1599::13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 456hJQ2srmzDqGb
 for <linuxppc-users@lists.ozlabs.org>; Mon, 20 May 2019 11:34:05 +1000 (AEST)
Received: from webmail.free.fr (unknown [172.20.243.6])
 by smtp4-g21.free.fr (Postfix) with ESMTP id 327CE19F4EA
 for <linuxppc-users@lists.ozlabs.org>; Mon, 20 May 2019 03:33:56 +0200 (CEST)
Received: from [185.189.113.83]
	by webmail.free.fr
MIME-Version: 1.0
Date: Mon, 20 May 2019 03:33:56 +0200
From: dftxbs3e@free.fr
To: linuxppc-users@lists.ozlabs.org
Message-ID: <c22b01d0f00fb508fe64b314df6532e0@free.fr>
X-Sender: dftxbs3e@free.fr
User-Agent: Webmail Free/1.3.3
X-Mailman-Approved-At: Mon, 20 May 2019 23:49:46 +1000
Subject: [Linuxppc-users] AES NX Coprocessor dm-crypt support
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

Hello,

I am interested in support for the NX AES Coprocessor as described in 
section 11.1 and 25.3 of the POWER9 User Manual ( 
https://wiki.raptorcs.com/w/images/8/89/POWER9_um_OpenPOWER_v20GA_09APR2018_pub.pdf 
) in Linux's dm-crypt.

Currently I am using LUKS on NVMe drives that advertise having 3.2GB/s 
read speeds (Samsung) and I am currently capped to 1GB/s with current 
on-chip instructions (vcipher etc).

If we consider the advertised performance for the NX Coprocessors and my 
dual CPU system, two NX engines per CPU (6.4 * 2 * 2), it would total 
for 25.6 Gbps 256bit AES performance which equals 3.2GB/s. That would 
allow me to use LUKS over my NVMe drives without performance loss, which 
is needless to say, quite awesome.

Another significant benefit of this would be XMR mining, the current 
latest POWER miner does not make use of NX coprocessors. ( 
https://github.com/madscientist159/xmrig ).

How would I go about this? Currently there's a gzip implementation at 
https://github.com/abalib/power-gzip - it's cited in the manual.

PS: I'm part of an active community around POWER9 and the Talos II 
systems at #talos-workstation on Freenode IRC, feel free to join and 
ping JSharp, tpearson, koenigni, awordnot or (myself) dftxbs3e about 
this.

Thanks
_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
