Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E9AA7A1D
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 06:42:35 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46NWQJ2KM6zDqt3
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 14:42:32 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=tieto.com
 (client-ip=131.207.176.19; helo=ebb09.tieto.com;
 envelope-from=tommi.sihvo@tieto.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=pass (p=none dis=none) header.from=tieto.com
X-Greylist: delayed 909 seconds by postgrey-1.36 at bilbo;
 Wed, 04 Sep 2019 14:42:15 AEST
Received: from ebb09.tieto.com (ebb09.tieto.com [131.207.176.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 46NWPz4v9vzDqkk
 for <linuxppc-users@lists.ozlabs.org>; Wed,  4 Sep 2019 14:42:15 +1000 (AEST)
X-AuditID: 83cfb013-f0fff70000003ada-8a-5d6f3d1384d2
Received: from C105S135VM016.eu.tieto.com ( [10.34.8.54])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by ebb09.tieto.com (SMTP Mailer) with SMTP id 65.7C.15066.31D3F6D5;
 Wed,  4 Sep 2019 07:26:59 +0300 (EEST)
Received: from C105S135VM023.eu.tieto.com (10.34.8.119) by
 C105S135VM016.eu.tieto.com (10.34.8.54) with Microsoft SMTP Server (TLS) id
 15.0.1473.3; Wed, 4 Sep 2019 07:26:59 +0300
Received: from C105S135VM023.eu.tieto.com ([::1]) by
 C105S135VM023.eu.tieto.com ([fe80::4478:ea36:826:fa9e%19]) with mapi id
 15.00.1473.003; Wed, 4 Sep 2019 07:26:59 +0300
From: <Tommi.Sihvo@tieto.com>
To: <toshaan@vantosh.com>, <linuxppc-users@lists.ozlabs.org>
Thread-Topic: [Linuxppc-users] PostgreSQL support on IBM Power Systems
Thread-Index: AQHVYmJc3VKyACcFNkO7y/D9vXulM6cZ59wAgAEFWQA=
Date: Wed, 4 Sep 2019 04:26:59 +0000
Message-ID: <612F7D89-0BED-4AF5-8CFA-ADC2A554D9B4@tieto.com>
References: <OFAE7466DE.11482CBD-ON00258465.004651E8-43258465.00469545@notes.na.collabserv.com>
 <a748041b-1eb5-741c-b7e7-41a0e43d0af0@vantosh.com>
In-Reply-To: <a748041b-1eb5-741c-b7e7-41a0e43d0af0@vantosh.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.d.190811
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.32.112.246]
Content-ID: <7C39C4B95AC94847A26B9D7638FB8BA6@tieto.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA11UfUwTZxzOez3w6Prq0VJ4qdTRE10cKjgNKUymZIiNbonJwrK4VD3K2V4o
 d3h3VTDGdMEQhyFUQ9R1UxiDxRGIG2bTqdFZpwkagl+Z2ZI5dWQBvzDzg6jT7L2PwuE/zdPn
 eZ/f87y/uxxlsd9Kc1G8oHCSwIaZVCtpZaiiBY5S0V/45aEc7+mRc6S3MX7EspzwDe3/GvjG
 Rl4Qa4i11qXVXJjfzEkF722whl4dbSXrvnXW9/fdmxYFNzOaQRqF6CWo6ZtWQsV2OkagwV8W
 NwMrxj8BNN59NVX/cxigg39d006l0m70sOMEqeIMeilq//mqhh30CrSn80SKzlegBztHCR2X
 oMvXB7UzJJ2HXjx+nqpiiL2xnkdAD2gDqOXyNU1Io5ehI7890syAzkTjF3o1bKGz0B/D7YRe
 m0ZdJ4csOnai0b9facFOugB9dqPDODMfDV4fBjouRD92nyJ17EF/tu/GPIVnzkOHjxfo473o
 WfPRFB17UNuuW9P0nulo4IthMgay46YW8Ul33OSOm9xxk7sDpPSAGVxVVWHxQoXnFHFhQKzt
 B/hJNg597zgGdra9nwA0BRgb/HS26LensJvlhtoEqKEIxgk9jYLfPr1KrG4IsXJovRQJczKT
 AY8X4JNwgq6KhGsYF9zmxaxjghW4LXKYU/Crw8yCTfl4UNaEJkfkOj7AixF5fUQKJwCiLHhs
 5ckwHlvNNmzlJFEPS4CZFMlkwd4I9tNBVuFqOK6Ok5LqFopiELxUjJPTJS7I1W/kw0pSxr5/
 n6o+s6KVdcP66VjINAumvh448g6e6DLLr1cmqLQECFI23Hvfu+o65Dq2VuaDRrQDCuqSbElW
 i82GWxdj0p4kTZFu+NYatVFSmhp3AXwOqNjogU4LNdDThX9/PdDdabGTgihwriw4phagVWso
 Ikxc35UJ2/7DM2eYBLWGKwd+5MYGp4mfbOLKhQNSjd+ebVKnlrkDAvh9ccB+NdWGPw6Tt7bD
 i0WYfMMgtUsjeFp7PAZnunMOBCtxktNQXk8J4lcwA/IttepyFVYxL/eTgKAu12CN5e7yC+py
 DXLKcrev05ZrSFOTXFFAne8jnxy82eU+c3bVmdYHuaHHc1b7+1vyo3kvcw+Jgb7K0h3fRfd9
 9cHtvOxKz7l53vvjqy/OH8v8uKR398M5ZRUtVlh9pbwowPqK2/M/XJE+dOefVdt9FbNKX8ai
 SnpZU4mtvFm83/TD3sGxNzeu3HSb9JXNnb12A/+88G7fjd/5HacYUg6xi962SDL7P3cAEat0
 BQAA
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

SGksDQoNCldlIGFyZSBydW5uaW5nIHF1aXRlIG1hbnkgRURCIHYuMTAgY2x1c3RlcnMgKGR1YWwg
c2l0ZSAmIHdpdGggd2l0bmVzcyBub2RlIGNvbmZpZ3VyYXRpb24pIG9uIHRvcCBvZiBMaW51eCBv
biBQb3dlciAoUkhFTCA3LjZMRSkgJiBQb3dlcjg7IGFuZCB3ZSBoYXZlIGFjdHVhbGx5IGF1dG9t
YXRlZCB0aGUgZGVwbG95bWVudCAmIEVEQiBiYXNpYyBiaW5hcnkgJiBjb25maWcgc2V0dXAgKFBv
d2VyVkMganNvbiBSRVNUICsgQlNBIHBvc3Qtc2NyaXB0KSwgc28gc2V0dGluZyB1cCBuZXcgZW52
aXJvbm1lbnRzIHRha2VzIG9ubHkgYSBtb21lbnQuLg0KDQpDdXN0b21lcnMgaGF2ZSBiZWVuIHJl
YWxseSBzYXRpc2ZpZWQsIG9uZSBpcyBjb25zb2xpZGF0aW5nIGFsbCB0aGVpciBlZGIgZGF0YWJh
c2VzIG9uIHRoaXMgZW52aXJvbm1lbnQgYmFzZWQgb2YgZXhwZXJpZW5jZSB0aGV5IGFyZSBoYXZp
bmcgd2l0aCB0aGUgc2V0dXAuDQoNCldlIGFyZSBhbHNvIGxvb2tpbmcgY2FuZGlkYXRlIGN1c3Rv
bWVycyBmb3IgbWlncmF0aW5nIHNvbWUgT3JhY2xlIHg4NiBlbnZpcm9ubWVudHMgIGludG8gTGlu
dXggb24gUG93ZXIgRURCLg0KV291bGQgYmUgYSBuaWNlIHByb2plY3QgdG8gdHJ5LCBidXQgY291
cGxlIG9mIGNhc2VzIGhhdmUgZW5kZWQgdXAgZGVhZCBiZWNhdXNlIHRoZSAzcmQgcGFydHkgYXBw
bGljYXRpb24gdXNpbmcgdGhlIGRhdGFiYXNlIHN1cHBvcnRzIG9ubHkgT3JhY2xlLi4gKCANCg0K
QnIsDQp0b21taQ0KIA0KDQrvu79PbiAwMy8wOS8yMDE5LCAxOS41OCwgIkxpbnV4cHBjLXVzZXJz
IG9uIGJlaGFsZiBvZiBUb3NoYWFuIEJoYXJ2YW5pIHwgVmFuVG9zaCIgPGxpbnV4cHBjLXVzZXJz
LWJvdW5jZXMrdG9tbWkuc2lodm89dGlldG8uY29tQGxpc3RzLm96bGFicy5vcmcgb24gYmVoYWxm
IG9mIHRvc2hhYW5AdmFudG9zaC5jb20+IHdyb3RlOg0KDQogICAgWWFzYWwsDQogICAgDQogICAg
DQogICAgT24gMjkvMDgvMjAxOSAxNDo1MCwgWWFzYWwgQWtndW4gd3JvdGU6DQogICAgPiBIaSwN
CiAgICA+IA0KICAgID4gRG8geW91IGhhdmUgcmVmZXJlbmNlcyBmb3IgcG9zdGdyZXNxbCBydW5u
aW5nIG9uIFBvd2VyIChMUEFSIG9yDQogICAgPiBmdWxsLWRlZGljYXRlZCk/DQogICAgDQogICAg
V2UgaGF2ZSBtdWx0aXBsZSBpbnN0YW5jZXMgb2YgUG9zdGdyZVNRTCB2MTAgYW5kIHYxMSwgYWxs
IG9uIExpbnV4IHBwYzY0DQogICAgYW5kIHBwYzY0bGUuIFdlIHJ1biB0aGlzIGZvciBtdWx0aXBs
ZSBvZiBvdXIgY3VzdG9tZXJzLg0KICAgIEFsbCBhcmUgcnVubmluZyBpbiBMaW51eCBLVk0gUWVt
dSB2aXJ0dWFsIG1hY2hpbmVzLg0KICAgIFdlIGFsc28gaGF2ZSB4ODZfNjQgdG8gY29tcGFyZSB3
aXRoDQogICAgDQogICAgDQogICAgPiANCiAgICA+IA0KICAgID4gWWFzYWwgQWtnw7xuDQogICAg
PiANCiAgICA+IFRlY2huaWNhbCBTYWxlcyAmIENvbnN1bHRhbnQgZm9yIFBvd2VyICYgQ29nbml0
aXZlIFN5c3RlbXMNCiAgICA+IFN5c3RlbXMsIElCTSBUdXJrZXkNCiAgICA+IA0KICAgID4gTW9i
aWxlLTEgOiA5MCA1NTUgNTE3IDU1MzMNCiAgICA+IE1vYmlsZS0yIDogOTAgNTQ5IDQ1NSA0ODIy
DQogICAgPiBXb3JrIDogOTAgMzEyIDQ1NSA0ODIyDQogICAgPiB5YXNhbEB0ci5pYm0uY29tDQog
ICAgDQogICAgUmVnYXJkcywNCiAgICBUb3NoYWFuLg0KICAgIA0KICAgIC0tIA0KICAgIC0tDQog
ICAgVG9zaGFhbiBCaGFydmFuaQ0KICAgICszMi0oMCk0NzYtNjYuNzAuNTUNCiAgICB0b3NoYWFu
QHZhbnRvc2guY29tDQogICAgQHRvc2h5d29zaHkNCiAgICAtLQ0KICAgIF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQogICAgTGludXhwcGMtdXNlcnMgbWFp
bGluZyBsaXN0DQogICAgTGludXhwcGMtdXNlcnNAbGlzdHMub3psYWJzLm9yZw0KICAgIGh0dHBz
Oi8vbGlzdHMub3psYWJzLm9yZy9saXN0aW5mby9saW51eHBwYy11c2Vycw0KICAgIA0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eHBwYy11c2Vy
cyBtYWlsaW5nIGxpc3QKTGludXhwcGMtdXNlcnNAbGlzdHMub3psYWJzLm9yZwpodHRwczovL2xp
c3RzLm96bGFicy5vcmcvbGlzdGluZm8vbGludXhwcGMtdXNlcnMK
