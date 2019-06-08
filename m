Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0762C3A21B
	for <lists+linuxppc-users@lfdr.de>; Sat,  8 Jun 2019 23:12:39 +0200 (CEST)
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 45LsYF3jJ0zDqv5
	for <lists+linuxppc-users@lfdr.de>; Sun,  9 Jun 2019 07:12:33 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=none (mailfrom) smtp.mailfrom=student.ethz.ch
 (client-ip=82.130.99.26; helo=edge20.ethz.ch;
 envelope-from=koenigni@student.ethz.ch; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org; dmarc=none (p=none dis=none)
 header.from=student.ethz.ch
X-Greylist: delayed 198 seconds by postgrey-1.36 at bilbo;
 Sun, 09 Jun 2019 07:12:00 AEST
Received: from edge20.ethz.ch (edge20.ethz.ch [82.130.99.26])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 45LsXc2dzwzDqv5
 for <linuxppc-users@lists.ozlabs.org>; Sun,  9 Jun 2019 07:12:00 +1000 (AEST)
Received: from mailm111.d.ethz.ch (129.132.139.3) by edge20.ethz.ch
 (82.130.99.26) with Microsoft SMTP Server (TLS) id 14.3.439.0; Sat, 8 Jun
 2019 23:06:55 +0200
Received: from [192.168.178.82] (87.78.108.52) by mailm111.d.ethz.ch
 (2001:67c:10ec:5602::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Sat, 8 Jun 2019
 23:06:26 +0200
From: Nicolas Koenig <koenigni@student.ethz.ch>
To: <linuxppc-users@lists.ozlabs.org>
Message-ID: <ac9c89c3-6f16-3090-35a8-7a58c5c4458f@student.ethz.ch>
Date: Sun, 9 Jun 2019 01:06:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [87.78.108.52]
X-ClientProxiedBy: mailm110.d.ethz.ch (2001:67c:10ec:5602::22) To
 mailm111.d.ethz.ch (2001:67c:10ec:5602::23)
X-TM-SNTS-SMTP: AE8298E878069A604DA122AD9B5EAA1EC770F1DD00B6ED762A3F0ACF2D4419FD2000:8
Subject: [Linuxppc-users] Discrepancies between Performance Simulator and
 Silicon
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

Hello everyone,

while trying to solve the riddle surrounding xsadddp's throughput, I 
recently came across the power9 performance simulator, which is supposed 
to be cycle-accurate. When trying it, I noticed that there appears to be 
a discrepancy for the following code:

loop:
   .rept 16
     mtvsrd %vs1, %r3
   .endr
   bdnz loop

When executing it in the performance simulator, it yields a stable 4 
mtvsrd instructions per cycle (excluding branches), while the actual 
silicon can only sustain 3 mtvsrd instructions per cycle (again, 
excluding branches). What might be the reason for this difference?

Thanks in advance
   Nicolas

P.S.: It also seems like scrollpv can't disassemble the mtvsrd 
instruction, it just shows ?????? and the instruction in hex (it is the 
right instruction though, I double checked).
_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
