Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 122F2A7DA0
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 10:23:40 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46NcKP00F5zDqtW
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 18:23:37 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=molgen.mpg.de
 (client-ip=141.14.17.11; helo=mx1.molgen.mpg.de;
 envelope-from=pmenzel@molgen.mpg.de; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=molgen.mpg.de
X-Greylist: delayed 493 seconds by postgrey-1.36 at bilbo;
 Wed, 04 Sep 2019 18:23:18 AEST
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 46NcK26JJxzDqWN
 for <linuxppc-users@lists.ozlabs.org>; Wed,  4 Sep 2019 18:23:17 +1000 (AEST)
Received: from [141.14.12.56] (g056.RadioFreeInternet.molgen.mpg.de
 [141.14.12.56])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id CBC952000C005;
 Wed,  4 Sep 2019 10:14:56 +0200 (CEST)
To: Mark Nellen <mnellen@us.ibm.com>, Ahmed Amer <ahmed.amer@ae.ibm.com>
References: <OF1DAD104A.0728C4AC-ON0025846A.00502AEE-1567521338935@notes.na.collabserv.com>
 <OFAF2370E8.4E8E8CD9-ON0025846A.00585224-0025846A.00587CBB@notes.na.collabserv.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <301733b4-7be5-bf31-2ce5-6db0b9692bd2@molgen.mpg.de>
Date: Wed, 4 Sep 2019 10:14:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <OFAF2370E8.4E8E8CD9-ON0025846A.00585224-0025846A.00587CBB@notes.na.collabserv.com>
Content-Language: en-US
Subject: Re: [Linuxppc-users] PostgreSQL support on IBM Power Systems
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
Cc: Yasal Akgun <YASAL@tr.ibm.com>, linuxppc-users@lists.ozlabs.org,
 Amit Dave <ADave@ae.ibm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

RGVhciBNYXJrLAoKCk9uIDAzLjA5LjE5IDE4OjA2LCBNYXJrIE5lbGxlbiB3cm90ZToKPiBTZWUg
dGhpcyBjb21wZXRpdGl2ZSBkZWNrLiAgTWlnaHQgaGF2ZSB3aGF0IHlvdSB3YW50LiAgU2xpZGVz
IDEzLzE0IGFyZSBtb3N0Cj4gcmVjZW50LiAgU2xpZGUgNjMsNjcsNjggYXJlIHA4IGJ1dCBnb29k
IHRvIHNob3cgdGhhdCB3ZSBoYXZlIGEgaGlzdG9yeSBvZiBnb29kCj4gcGVyZm9ybWFuY2UgYW5k
IGludmVzdG1lbnQuICBTbGlkZXMgYXJlIEVudGVycHJpc2VEQiBidXQgUG9zdGdyZXMgd291bGQg
YmVpbmcKPiB2ZXJ5IHNpbWlsYXIuCj4gKmh0dHBzOi8vaWJtLmJveC5jb20vcy82amNkbnAwOHpn
Nml4dGtocmE3ZmdoNjYzbW5wNnV5MSoKCkNvdWxkIHlvdSBwbGVhc2UgbWFrZSB0aGUgZG9jdW1l
bnQgYXZhaWxhYmxlIHdpdGhvdXQgcGVvcGxlIGhhdmluZyB0byAKZ2V0IGEg4oCcYm94IGFjY291
bnTigJ0gb3IgR29vZ2xlIGFjY291bnQuCgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eHBwYy11c2VycyBtYWls
aW5nIGxpc3QKTGludXhwcGMtdXNlcnNAbGlzdHMub3psYWJzLm9yZwpodHRwczovL2xpc3RzLm96
bGFicy5vcmcvbGlzdGluZm8vbGludXhwcGMtdXNlcnMK
