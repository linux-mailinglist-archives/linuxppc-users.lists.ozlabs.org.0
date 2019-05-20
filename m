Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id B51A8229C1
	for <lists+linuxppc-users@lfdr.de>; Mon, 20 May 2019 03:45:47 +0200 (CEST)
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 456hYh4Z6LzDqHw
	for <lists+linuxppc-users@lfdr.de>; Mon, 20 May 2019 11:45:44 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=none (mailfrom) smtp.mailfrom=free.fr
 (client-ip=2a01:e0c:1:1599::14; helo=smtp5-g21.free.fr;
 envelope-from=dftxbs3e@free.fr; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=free.fr
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [IPv6:2a01:e0c:1:1599::14])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 456hYY4gsTzDqGc
 for <linuxppc-users@lists.ozlabs.org>; Mon, 20 May 2019 11:45:37 +1000 (AEST)
Received: from webmail.free.fr (unknown [172.20.243.59])
 by smtp5-g21.free.fr (Postfix) with ESMTP id D12725FEF7
 for <linuxppc-users@lists.ozlabs.org>; Mon, 20 May 2019 03:45:31 +0200 (CEST)
Received: from [185.189.113.83]
	by webmail.free.fr
MIME-Version: 1.0
Date: Mon, 20 May 2019 03:45:31 +0200
From: dftxbs3e@free.fr
To: linuxppc-users@lists.ozlabs.org
Message-ID: <e174b6de612bd280e950ba5bf925a5a7@free.fr>
X-Sender: dftxbs3e@free.fr
User-Agent: Webmail Free/1.3.3
Subject: [Linuxppc-users] Poor RAID6 performance (vpermxor8 0 MB/s)
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

My RAID6 array has been suffering quite poor write performance (26MB/s), 
using RAID1 does not have that write performance loss. While I do know 
RAID6 causes a write performance hit, I would expect better.

I have noticed this in my dmesg kernel log:

[  255.514795] raid6: using algorithm vpermxor8 gen() 0 MB/s
[  255.514800] raid6: using intx1 recovery algorithm

Is that a bug?

Thanks
_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
