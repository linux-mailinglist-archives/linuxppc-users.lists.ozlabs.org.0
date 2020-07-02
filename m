Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id 457A4211BEC
	for <lists+linuxppc-users@lfdr.de>; Thu,  2 Jul 2020 08:23:16 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 49y7M52qQGzDqFD
	for <lists+linuxppc-users@lfdr.de>; Thu,  2 Jul 2020 16:23:13 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=none (no SPF record) smtp.mailfrom=danny.cz
 (client-ip=2a02:2b88:2:1::1cde:1; helo=redcrew.org; envelope-from=dan@danny.cz;
 receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=danny.cz
Received: from redcrew.org (redcrew.org [IPv6:2a02:2b88:2:1::1cde:1])
 by lists.ozlabs.org (Postfix) with ESMTP id 49y7Lg3Cc0zDqF1
 for <linuxppc-users@lists.ozlabs.org>; Thu,  2 Jul 2020 16:22:49 +1000 (AEST)
Received: from server.danny.cz (72.155.broadband6.iol.cz [88.101.155.72])
 by redcrew.org (Postfix) with ESMTP id A1D60579;
 Thu,  2 Jul 2020 08:22:39 +0200 (CEST)
Received: from talos.danny.cz (unknown
 [IPv6:2001:470:5c11:160:47df:83f6:718e:218])
 by server.danny.cz (Postfix) with SMTP id 8A54B11A7AA;
 Thu,  2 Jul 2020 08:22:39 +0200 (CEST)
Date: Thu, 2 Jul 2020 08:22:39 +0200
From: Dan =?UTF-8?B?SG9yw6Fr?= <dan@danny.cz>
To: Tommi Sihvo <Tommi.Sihvo@tietoevry.com>
Message-Id: <20200702082239.0a3702e105f92450e6bb6f82@danny.cz>
In-Reply-To: <871rlukj5t.fsf@linux.ibm.com>
References: <181BAE84-2F75-49AC-9F05-307D1423812A@tieto.com>
 <20200629172119.b9897a295a4490b81f43088b@danny.cz>
 <78D1486A-9D51-4522-BE18-F6948BDCA841@tieto.com>
 <871rlukj5t.fsf@linux.ibm.com>
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
Cc: "linuxppc-users@lists.ozlabs.org" <linuxppc-users@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

T24gV2VkLCAwMSBKdWwgMjAyMCAxODo0MToxOCAtMDMwMApUdWxpbyBNYWdubyBRdWl0ZXMgTWFj
aGFkbyBGaWxobyA8dHVsaW9tQGFzY2lpLmFydC5icj4gd3JvdGU6Cgo+IEhpIFRvbW1pLAo+IAo+
ICJUb21taSBTaWh2byIgPFRvbW1pLlNpaHZvQHRpZXRvZXZyeS5jb20+IHdyaXRlczoKPiAKPiA+
IE9uIHRoYXQgcHBjNjRsZSBlcGVsIHJlcG8sIGZvciBleGFtcGxlIHRoaXMgcGFja2FnZSBpcyBv
biBxdWl0ZSBvbGQKPiA+IGxldmVsIDoKPiA+Cj4gPiBhc24xY3J5cHRvICgwLjI0LjApIChmcm9t
IDMvMjAxOSk7Cj4gCj4gQXMgRGFuIHNhaWQsIEVQRUwgaXMgYSBGZWRvcmEgcmVwb3NpdG9yeS4K
PiBJdCBpc24ndCBzcGVjaWZpYyB0byBwcGM2NGxlLCBlLmcuCj4gaHR0cDovL2Z0cC5mdW5ldC5m
aS9wdWIvbGludXgvbWlycm9ycy9yZWRoYXQvZXBlbC83U2VydmVyL3g4Nl82NC9QYWNrYWdlcy9w
L3B5dGhvbjItYXNuMWNyeXB0by0wLjI0LjAtNy5lbDcubm9hcmNoLnJwbQoKZ2VuZXJhbGx5IGFs
bCBjb250ZW50IGluIEVQRUwgc2hvdWxkIGJlIHByb3ZpZGVkIGNvbnNpc3RlbnRseSBhY3Jvc3MK
dGhlIGFyY2hlcywgZXhjZXB0aW9ucyBhcmUgdXN1YWxseSBjYXVzZWQgYnkgUkhFTCBhZGQtb24g
cmVwb3MgbGlrZQpFeHRyYXMKCgo+ID4gY29tcGFyZWQgdG8gc2ltaWxhciB4ODYgcGFja2FnZSA6
Cj4gPiBodHRwczovL3B5cGkub3JnL3Byb2plY3QvYXNuMWNyeXB0by8pICgxLjMuMCkKPiAKPiBQ
eXBpIGlzIG5vdCBzcGVjaWZpYyB0byB4ODYgZWl0aGVyLiAgWW91IGNhbiBhbHNvIGluc3RhbGwg
dGhpcwo+IHBhY2thZ2Ugb24gcHBjNjRsZToKPiAKPiAkIHBpcDMgaW5zdGFsbCAtLXVzZXIgYXNu
MWNyeXB0bwo+IENvbGxlY3RpbmcgYXNuMWNyeXB0bwo+ICAgRG93bmxvYWRpbmcKPiBodHRwczov
L2ZpbGVzLnB5dGhvbmhvc3RlZC5vcmcvcGFja2FnZXMvZTkvNTEvMWRiNGE2MDA0OWZiNzM5MDk1
OWJlNTg2YjZlYjc0MzA5OGU2Y2VhM2Y2YjJkM2VkOWUxN2ZlYzYyYmEyL2FzbjFjcnlwdG8tMS4z
LjAtcHkyLnB5My1ub25lLWFueS53aGwKPiAoMTAza0IpIDEwMCUgfOKWiOKWiOKWiOKWiOKWiOKW
iOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKW
iOKWiOKWiOKWiOKWiOKWiOKWiOKWiHwgMTEya0IgMjU1a0Ivcwo+IEluc3RhbGxpbmcgY29sbGVj
dGVkIHBhY2thZ2VzOiBhc24xY3J5cHRvIFN1Y2Nlc3NmdWxseSBpbnN0YWxsZWQKPiBhc24xY3J5
cHRvLTEuMy4wICQgdW5hbWUgLW0KPiBwcGM2NGxlCj4gCj4gPiBTbyB3YXMganVzdCB3b25kZXJp
bmcgaWYgdGhlcmUgd291bGQgYmUgcG9zc2liaWxpdHkgdG8gaGF2ZSBuZXdlcgo+ID4gdmVyc2lv
bnMgZm9yIHBwYzY0bGUgYXMgd2VsbCBzb21laG93Pwo+IAo+IEluIG9yZGVyIHRvIHVwZGF0ZSBw
YWNrYWdlcyBtYWludGFpbmVkIGJ5IHRoZSBGZWRvcmEgY29tbXVuaXR5LCB5b3UKPiBuZWVkIHRv
IGNvbnRhY3QgdGhlIG1haW50YWluZXJzLgoKb3IgYmVjb21lIG9uZSwgaXQncyBub3QgZGlmZmlj
dWx0IGFuZCBJIGNhbiBoZWxwIGlmIG5lZWRlZC4gVGhlcmUgaXMKbm8gbWFnaWMgd29ya2ZvcmNl
IGJlaGluZCBFUEVMIDotKQoKSWYgSSBzZWUgcmlnaHQsIHRoZW4gc29tZSBwYWNrYWdlcyBhcmUg
b3V0ZGF0ZWQgaW4gRVBFTCwgc29tZSBhcmUKbWlzc2luZy4gVGhlIHJlY29tbWVuZGVkIHByb2Nl
ZHVyZSBpcyB0byBvcGVuIGJ1Z3MgYXQKaHR0cHM6Ly9idWd6aWxsYS5yZWRoYXQuY29tLywgYnV0
IG5vdCBhbGwgRmVkb3JhIG1haW50YWluZXJzIGFyZQp3aWxsaW5nIHRvIG1haW50YWluIHRoZSBF
UEVMIGJyYW5jaGVzLiBUaHVzIGJlY29taW5nIHBhcnQgb2YgdGhlCmNvbW11bml0eSBpcyBoZWxw
ZnVsLgoKCgkJRGFuCgo+IExldCBtZSBsaXN0IHdoZXJlIHlvdSBjYW4gZmluZCBtb3JlIGluZm9y
bWF0aW9uIGFib3V0IGEgZmV3IG9mIHRoZXNlCj4gcGFja2FnZXMgb24gRVBFTDoKPiAKPiA+IFBh
Y2thZ2UgICAgICAgIFZlcnNpb24KPiA+Cj4gPiAtLS0tLS0tLS0tLS0tLSAtLS0tLS0tLS0tCj4g
Pgo+ID4gYXNuMWNyeXB0byAoMC4yNC4wKQo+IAo+IGh0dHBzOi8vc3JjLmZlZG9yYXByb2plY3Qu
b3JnL3JwbXMvcHl0aG9uLWFzbjFjcnlwdG8KPiAKPiA+IGF0dHJzICgxNy40LjApCj4gCj4gaHR0
cHM6Ly9zcmMuZmVkb3JhcHJvamVjdC5vcmcvcnBtcy9weXRob24tYXR0cnMKPiAKPiA+IGNlcnRp
ZmkgKDIwMTguMTAuMTUpCj4gCj4gaHR0cHM6Ly9zcmMuZmVkb3JhcHJvamVjdC5vcmcvcnBtcy9w
eXRob24tY2VydGlmaQo+IAo+IAo+IC0tIAo+IFR1bGlvIE1hZ25vCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4cHBjLXVzZXJzIG1haWxpbmcgbGlz
dApMaW51eHBwYy11c2Vyc0BsaXN0cy5vemxhYnMub3JnCmh0dHBzOi8vbGlzdHMub3psYWJzLm9y
Zy9saXN0aW5mby9saW51eHBwYy11c2Vycwo=
