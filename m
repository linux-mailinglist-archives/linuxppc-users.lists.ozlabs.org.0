Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1D6CE07F
	for <lists+linuxppc-users@lfdr.de>; Mon,  7 Oct 2019 13:31:11 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46mywT4kbPzDqLV
	for <lists+linuxppc-users@lfdr.de>; Mon,  7 Oct 2019 22:31:05 +1100 (AEDT)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=tieto.com
 (client-ip=131.207.176.19; helo=ebb09.tieto.com;
 envelope-from=tommi.sihvo@tieto.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=pass (p=none dis=none) header.from=tieto.com
Received: from ebb09.tieto.com (ebb09.tieto.com [131.207.176.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 46myvv2PVrzDqJ8
 for <linuxppc-users@lists.ozlabs.org>; Mon,  7 Oct 2019 22:30:23 +1100 (AEDT)
X-AuditID: 83cfb013-b1dff70000004377-9b-5d9b21c95f53
Received: from C105S135VM018.eu.tieto.com ( [10.34.8.56])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by ebb09.tieto.com (SMTP Mailer) with SMTP id 90.91.17271.9C12B9D5;
 Mon,  7 Oct 2019 14:30:18 +0300 (EEST)
Received: from C105S135VM023.eu.tieto.com (10.34.8.119) by
 C105S135VM018.eu.tieto.com (10.34.8.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 7 Oct 2019 14:30:17 +0300
Received: from C105S135VM023.eu.tieto.com ([fe80::29b9:ff1c:691f:94d5]) by
 C105S135VM023.eu.tieto.com ([fe80::29b9:ff1c:691f:94d5%19]) with mapi id
 15.00.1497.000; Mon, 7 Oct 2019 14:30:17 +0300
From: <Tommi.Sihvo@tieto.com>
To: <linuxppc-users@lists.ozlabs.org>
Thread-Topic: RHEL8@Power8
Thread-Index: AQHVfQKY3UxbJ81h4UyKKpK6EE1wHg==
Date: Mon, 7 Oct 2019 11:30:17 +0000
Message-ID: <2464D71F-663D-4D3F-A37A-92E632654566@tieto.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.e.190909
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.32.112.246]
Content-ID: <8063FAA5ED15164AB8C70211B1A0B7AF@tieto.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA11Ta2wUVRjN3Zlup8temc6+bod2pRNIkEBbE01qAOMjxCU+MMY/Nq50th13
 N53urjuz9BETK0Yli+IaCm23NNQ+NKnb2JDSIBh0l1epgfIwES0VpSVpa7SYmFRIId67M9tO
 +TP55pz7fed8Z+4wFHe6gGeCIVWKhkRZMFtoi8BUbh4r7fRWXOkBld/PnKWfAZ7x9i/Aq6DK
 srVWkoO7pWj509WWwNnrH1GRTEnjl/f8LeD34jgoYBD7BBq5+bE5DiwMxyZM6PzxG0B7GQFo
 ePQOpb2cA+hmOmEiLWa2BN3pPkmT2s6uRz/cvZFHahvrQIO93+IGBuM8Sg/K2pEyNJr5L3uc
 Ztehn4amsmMguxVdjrflkxqwTrQwlsriFOtCv04fMWnuWNT33Til1Q40O/UgK+Vgy1Hn/If6
 mU3o4s/TQKsr0LH+U7RWl6LJI58DYodiH0PfnCjXxlei0ZaBPK0uRa37/sjX7BSiCx3TdAK4
 kgYXyeXupKE7aehOGrq7Qd4AWC35fBVPlalBSQ2X1YTrjwL8lT4YH7IdB3tbn88AlgGCFb7s
 7vRyeeJupak+A+oYk+CA7hNJL/eIL1zbFBCVwK5oTJYUwQ5D5CRcgn0xuU7gYTNBbUtoSGpQ
 ZEnF10Jww9+GO7yca4lTYkokWBMMx5RdsaicAYih8Fh3fzseWys2NUvRsCaWAWsYWnBBdvCg
 l2P9oirVSVJEiubYBoYRENz8KFYujEp+qfHtoKzmaNzn+QcvwBqZrNkSOEcGOo2EwW8p3JbC
 NG+kH7ZsYgoywM9YsW/7WhKHEhHrlaBfl7bBRhKHNYdmZYvgKAG5HGiQLIFVv+CInDlqpdwY
 +AwwidmuHor5+24vfl4Y6MPPM139PRRHh8IhiXfBEZICSwYEYqGlEHgnfDGNQ1htIIgZvhhe
 9bZ5OYcBX/bDr4Xpf3FXkYFdaWkO1OBbY4MpomrFv//y7hy8RdZcpYPZ1RE8RbBCHTNsXgxN
 57GSQ2ceVvHji2iHi6+0kYhVUTVG7J7vIBHrqB7x1zMdJGIdXBHxvblsxDq1UolvAV9d8r3e
 PnlS9SzKCzs9E3u279lwO0U3NBZMHDj4bvPE7P5Izyfm1/xXf3RWvrD+9pPXpm69dP3Zt6r7
 1vnvL1DxNe+8l3bs23Eov3NopvXwlnjvhu1/7dxR/Wbq2H3PuZaqQw+2FZlrurqtz30aeX//
 4sIBtNdhv5a/5WhwMrHqjT+H5wOLAq0ExMc3UlFF/B9hjdEjVgUAAA==
Subject: [Linuxppc-users] RHEL8@Power8
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

SGkgYWxsIQ0KDQpNYXliZSBJJ20gZG9pbmcgc29tZXRoaW5nIHRvdGFsbHkgd3JvbmcuLmJ1dCBh
bnl3YXlzLCBuZWVkIHRvIGNoZWNrIHdoYXQgdG8gZ2V0IG9uIHRoZSByaWdodCB0cmFjay4gKA0K
DQpTbyB3aGF0IEknbSB0cnlpbmcgaXMgdG8gc3RhcnQgY3JlYXRpbmcgYW4gaW5zdGFsbGF0aW9u
IGltYWdlIG9mIFJIRUw4IG9uIFBvd2VyOCBIVy4NCg0KSFc6IDgyODYtNDFBIChJQk0gUG93ZXIg
U3lzdGVtIFM4MTQpIA0KRmlybXdhcmU6Rlc4NjAuNzANCkluc3RhbGxhdGlvbiBiaW5hcnk6IHJo
ZWwtOC4wLXBwYzY0bGUtZHZkLmlzbw0KDQpJIHNldCB0aGUgSVNPIGZpbGUgdG8gVklPUyBvcHRp
Y2FsIGxpYnJhcnk7IGFuZCB0cmllZCBzbyBib290IG15IGltYWdlIHBhcnRpdGlvbiBmcm9tIERW
RCB2aWEgdGhhdC0tYW5kIGdvdCB0aGlzOg0KDQpEZXRlY3RlZCBiYWQgbWVtb3J5IGFjY2VzcyB0
byBhZGRyZXNzOiBmZmZmZmZmZmZmZmZmZmZmDQpQYWNrYWdlIHBhdGggPSAvcGFja2FnZXMvYm9v
dC1tZ3INCkxvYy1jb2RlID0gDQpMYXN0IG1lbW9yeS1xdWV1ZSBlbnRyeSBAIGM0NzJjMCANCjAw
MDAwMGM0NzJhMDogMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgOi4uLi4uLi4uLi4uLi4uLi46DQowMDAwMDBjNDcyYjA6IDAwIDAwIDAwIDAwIDAwIDAwIDAw
IDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDouLi4uLi4uLi4uLi4uLi4uOg0KMDAwMDAwYzQ3
MmMwOiAwMCAwMCAwMCAwMCAwOCBhZiAzYSAyMCBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiA6Li4u
Li4uOiAuLi4uLi4uLjoNCjAwMDAwMGM0NzJkMDogMDAgMDAgMDAgMDAgMDAgMDAgMDAgMjAgMDAg
MDAgMDAgMDAgYmEgZDEgYjAgYjAgOi4uLi4uLi4gLi4uLi4uLi46DQpSZXR1cm4gU3RhY2sgVHJh
Y2UNCi0tLS0tLS0tLS0tLS0tLS0tLQ0KQCAgLSBjNDA1MzAgDQpjbG9zZS1wYWNrYWdlICAtIGM2
NDFlMCANCihwb3Bsb2NhbHMpICAtIGMzZTllOCANCihpbml0LXByb2dyYW0pICAtIGM4ZTNjNCAN
CmJvb3QgIC0gYzhlZjRjIA0KZXZhbHVhdGUgIC0gYzUwMzA4IA0KaW52YWxpZCBwb2ludGVyIC0g
ZTNhZmQ1IA0KaW52YWxpZCBwb2ludGVyIC0gZiANCmludmFsaWQgcG9pbnRlciAtIGYgDQpjYXRj
aCAgLSBjM2NmZjAgDQpidC10YXNrLWJvb3Qtb24tdGhpcyAgLSBkYjM3NTQgDQoocG9wbG9jYWxz
KSAgLSBjM2U5ZTggDQpjYXRjaCAgLSBjM2NmZjAgDQpleGVjdXRlLWRldmljZS1tZXRob2QgIC0g
YzY0Y2VjIA0KKHBvcGxvY2FscykgIC0gYzNlOWU4IA0KKHNlbGVjdC1ib290LXNlcSkgIC0gYzY1
Yzc0IA0KKHBvcGxvY2FscykgIC0gYzNlOWU4IA0KZXZhbHVhdGUgIC0gYzUwMzA4IA0KaW52YWxp
ZCBwb2ludGVyIC0gMCANCmludmFsaWQgcG9pbnRlciAtIDANCg0KVGhlIGluY2lkZW50IGdlbmVy
YXRlZCBhbHNvIEhNQyBob21lIGNhbGw7IHNvIG9idmlvdXNseSBzb21ldGhpbmcgZGlkbuKAmXQg
Z28gYXMgc21vb3RobHkgYXMgb25lIHdvdWxkIGhhdmUgZXhwZWN0ZWQuDQpBbnkgaWRlYXMgZm9y
IHRoZSByb290IGNhdXNlPyANCg0KU29tZSBndWVzc2VzOg0KLSBteSBSSEVMIElTTyBmaWxlIGlz
IHdyb25nID0+IGlzIHRoZSBzb21lIG93biAiUG93ZXI4IGRlZGljIiBJU09AUmVkaGF0IHNpdGUg
PyAoc2ltaWxhcmx5IGFzIHRoZXJlIHdhcyB0aGUgQWx0ZW5hdGUgcGFja2FnZSBmb3IgUkhFTCA3
LjUgZm9yIFBvd2VyOSkNCi1WSU9TIG9wdGljYWwgbGlicmFyeSBoYXMgc29tZSBsaW1pdGF0aW9u
IGZvciBtYXggNEdCIGZpbGVzICh0aGUgUkhFTCBpc28gaW1hZ2UgaXMgNkdCKSA9PiB0aGlzIGNh
dXNlcyBzb21lIGlzc3Vlcz8NCi1Tb21ldGhpbmcgZWxzZS4uPyAoIA0KIA0KT3Igc2hvdWxkIEkg
dHJ5IHRvIGNyZWF0ZSB0aGUgaW1hZ2VAUG93ZXI5IEhXID8NCg0KQnIsDQp0b21taQ0KDQoNClRl
cnZlaXNpbiAvIEJlc3QgcmVnYXJkcywNCiANClRvbW1pIFNpaHZvLCAgTGVhZCBTZXJ2aWNlIEFy
Y2hpdGVjdA0KVGlldG8gRmlubGFuZCBPeSwgWlNNUyBTaGFyZWQgU2VydmljZXMNClpTTVNDIENs
b3VkIElhYVMgYW5kIEluZnJhIENhcGFjaXR5IHNlcnZpY2VzDQp0b21taS5zaWh2b0B0aWV0by5j
b20sIGRpcmVjdCArMzU4IDIwIDcyNSAxNzcxIG1vYmlsZSArMzU4IDQwIDUxOCAwNjQ2DQpKb3Vr
YWhhaXNlbmthdHUgMSwgNXRoIGZsb29yDQoyMDUyMCBUVVJLVQ0Kd3d3LnRpZXRvLmNvbSA8aHR0
cDovL3d3dy50aWV0by5jb20vPg0KUGxlYXNlIG5vdGU6IFRoZSBpbmZvcm1hdGlvbiBjb250YWlu
ZWQgaW4gdGhpcyBtZXNzYWdlIG1heSBiZSBsZWdhbGx5IHByaXZpbGVnZWQgYW5kIGNvbmZpZGVu
dGlhbCBhbmQgcHJvdGVjdGVkIGZyb20gZGlzY2xvc3VyZS4gSWYgdGhlIHJlYWRlciBvZiB0aGlz
IG1lc3NhZ2UNCmlzIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCB5b3UgYXJlIGhlcmVieSBu
b3RpZmllZCB0aGF0IGFueSB1bmF1dGhvcmlzZWQgdXNlLCBkaXN0cmlidXRpb24gb3IgY29weWlu
ZyBvZiB0aGlzIGNvbW11bmljYXRpb24gaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4gSWYgeW91IGhh
dmUgcmVjZWl2ZWQgdGhpcyBjb21tdW5pY2F0aW9uIGluIGVycm9yLCBwbGVhc2Ugbm90aWZ5IHVz
IGltbWVkaWF0ZWx5IGJ5IHJlcGx5aW5nIHRvIHRoZSBtZXNzYWdlIGFuZCBkZWxldGluZyBpdCBm
cm9tIHlvdXIgY29tcHV0ZXIuIFRoYW5rIFlvdS4NClRpZXRvLktub3dsZWRnZS5QYXNzaW9uLlJl
c3VsdHMNCiANCg0KDQoNCg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4cHBjLXVzZXJzIG1haWxpbmcgbGlzdApMaW51eHBwYy11c2Vyc0Bs
aXN0cy5vemxhYnMub3JnCmh0dHBzOi8vbGlzdHMub3psYWJzLm9yZy9saXN0aW5mby9saW51eHBw
Yy11c2Vycwo=
