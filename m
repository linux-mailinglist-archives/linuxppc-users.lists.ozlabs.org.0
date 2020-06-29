Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id 2337A20CFA9
	for <lists+linuxppc-users@lfdr.de>; Mon, 29 Jun 2020 17:27:34 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 49wWZV2DHJzDqL0
	for <lists+linuxppc-users@lfdr.de>; Tue, 30 Jun 2020 01:27:30 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=none (no SPF record) smtp.mailfrom=danny.cz
 (client-ip=2a02:2b88:2:1::1cde:1; helo=redcrew.org; envelope-from=dan@danny.cz;
 receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=danny.cz
X-Greylist: delayed 328 seconds by postgrey-1.36 at bilbo;
 Tue, 30 Jun 2020 01:26:55 AEST
Received: from redcrew.org (redcrew.org [IPv6:2a02:2b88:2:1::1cde:1])
 by lists.ozlabs.org (Postfix) with ESMTP id 49wWYq3QS5zDqH5
 for <linuxppc-users@lists.ozlabs.org>; Tue, 30 Jun 2020 01:26:55 +1000 (AEST)
Received: from server.danny.cz (72.155.broadband6.iol.cz [88.101.155.72])
 by redcrew.org (Postfix) with ESMTP id 90E86579
 for <linuxppc-users@lists.ozlabs.org>; Mon, 29 Jun 2020 17:21:19 +0200 (CEST)
Received: from talos.danny.cz (unknown
 [IPv6:2001:470:5c11:160:47df:83f6:718e:218])
 by server.danny.cz (Postfix) with SMTP id 526DD11A823
 for <linuxppc-users@lists.ozlabs.org>; Mon, 29 Jun 2020 17:21:19 +0200 (CEST)
Date: Mon, 29 Jun 2020 17:21:19 +0200
From: Dan =?UTF-8?B?SG9yw6Fr?= <dan@danny.cz>
To: linuxppc-users@lists.ozlabs.org
Message-Id: <20200629172119.b9897a295a4490b81f43088b@danny.cz>
In-Reply-To: <181BAE84-2F75-49AC-9F05-307D1423812A@tieto.com>
References: <181BAE84-2F75-49AC-9F05-307D1423812A@tieto.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; powerpc64le-redhat-linux-gnu)
Mime-Version: 1.0
Subject: Re: [Linuxppc-users] EPEL repo updates for ppc64le ?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

T24gTW9uLCAyOSBKdW4gMjAyMCAwNToyNjoyNSArMDAwMAoiVG9tbWkgU2lodm8iIDxUb21taS5T
aWh2b0B0aWV0b2V2cnkuY29tPiB3cm90ZToKCj4gSGkhCj4gCj4gCj4gCj4gRG9lcyBhbnlvbmUg
a25vdyB3aGF0IGluc3RhbmNlIGlzIG1haW50YWluaW5nIC8gdXBkYXRpbmcgdGhpcyBFUEVMCj4g
cmVwbyBmb3IgcHBjNjRsZSA/Cj4gCj4gaHR0cDovL2Z0cC5mdW5ldC5maS9wdWIvbGludXgvbWly
cm9ycy9yZWRoYXQvZXBlbC83U2VydmVyL3BwYzY0bGUvUGFja2FnZXMvCgphcmUgeW91IGFza2lu
ZyBhYm91dCB0aGlzIHBhcnRpY3VsYXIgbWlycm9yIG9yIGFib3V0IEVQRUwgaW4gZ2VuZXJhbD8K
RVBFTCBpcyBhIHN1YnByb2plY3Qgb2YgRmVkb3JhIChodHRwczovL2ZlZG9yYXByb2plY3Qub3Jn
L3dpa2kvRVBFTCkuCkRvIHlvdSBoYXZlIHNvbWV0aGluZyBzcGVjaWZpYyBpbiBtaW5kPwoKCgkJ
RGFuCiAKPiAKPiBUaGFua3MhCj4gCj4gCj4gCj4gQnIsCj4gCj4gdG9tbWkKPiAKPiAKPiAKPiAK
PiAKPiBZc3TDpHbDpGxsaXNpbiB0ZXJ2ZWlzaW4gLyBCZXN0IHJlZ2FyZHMsCj4gCj4gVG9tbWkg
U2lodm8sIExlYWQgU2VydmljZSBBcmNoaXRlY3QKPiAKPiBbc2lnbmF0dXJlXzExNTUyMjM5NjRd
Cj4gCj4gVGlldG9FVlJZLCBDb21wdXRlIFNlcnZpY2VzCj4gCj4gCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4cHBjLXVzZXJzIG1haWxpbmcgbGlz
dApMaW51eHBwYy11c2Vyc0BsaXN0cy5vemxhYnMub3JnCmh0dHBzOi8vbGlzdHMub3psYWJzLm9y
Zy9saXN0aW5mby9saW51eHBwYy11c2Vycwo=
