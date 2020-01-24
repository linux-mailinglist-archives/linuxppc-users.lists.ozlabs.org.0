Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id 114FF147AB2
	for <lists+linuxppc-users@lfdr.de>; Fri, 24 Jan 2020 10:37:29 +0100 (CET)
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 483vF128N2zDqfH
	for <lists+linuxppc-users@lfdr.de>; Fri, 24 Jan 2020 20:37:25 +1100 (AEDT)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org; spf=pass (sender SPF authorized)
 smtp.mailfrom=tieto.com (client-ip=131.207.176.23; helo=ebb10.tieto.com;
 envelope-from=tommi.sihvo@tieto.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=pass (p=none dis=none) header.from=tieto.com
Received: from ebb10.tieto.com (ebb10.tieto.com [131.207.176.23])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 483vDd0tgRzDqWy
 for <linuxppc-users@lists.ozlabs.org>; Fri, 24 Jan 2020 20:36:59 +1100 (AEDT)
X-AuditID: 83cfb017-925ff70000000471-f3-5e2abab3faec
Received: from C105S135VM024.eu.tieto.com ( [10.34.8.120])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by ebb10.tieto.com (SMTP Mailer) with SMTP id 6B.FB.01137.3BABA2E5;
 Fri, 24 Jan 2020 11:36:51 +0200 (EET)
Received: from C105S135VM023.eu.tieto.com (10.34.8.119) by
 C105S135VM024.eu.tieto.com (10.34.8.120) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 24 Jan 2020 11:36:51 +0200
Received: from C105S135VM023.eu.tieto.com ([::1]) by
 C105S135VM023.eu.tieto.com ([fe80::7486:ecc1:32c6:984e%19]) with mapi id
 15.00.1497.000; Fri, 24 Jan 2020 11:36:50 +0200
From: <Tommi.Sihvo@tieto.com>
To: <linuxppc-users@lists.ozlabs.org>
Thread-Topic: [Linuxppc-users] Shibboleth for Linux on Power?
Thread-Index: AQHV0pnOAwFV5FzY00ivWr19fhq9fQ==
Date: Fri, 24 Jan 2020 09:36:50 +0000
Message-ID: <E45C8694-B8AA-4CA0-8F2D-35A26424C2A1@tieto.com>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.21.0.200113
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.39.64.54]
Content-ID: <15E9353EC48ED44284A8654E694A7F7D@tieto.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA11TbUxTVxj2tLd4KD3zekvbYwfbuHFBmPIRN9NkbDN+JCxLFhITl+wH7gLH
 tuPSkntbLRoDk/1w9QdkkQg1RMR1E9wy0KgUCbC6ucyEoNsim2E6EQ2d8WMOXQjG7dyPwsU/
 N899nvO+z/O+91xo5kYy3dAfCBEpIIh8hpWx8jCy7vRgYWXJ44THMzLzA7MRlI+3HwMV4ENr
 WQ0R/buIVPz2R1bfz88mLfUn7JHhpkemJjDDRUEmxOzruK3vPxAFVsixrSZ8+e87jPYyAHBX
 4rZJe+kH+NGJX5YrJRlsLn7YdZ5RcDb7Kh6dm7Qo2M6W4dThrywa/xb+vbtNP1OEO9p/NSmY
 oefvtDzIUDCi53/89JqKAevE/176Wj1jZl14/2yPRYvH4i+Gxs0aduDUrWcq72CL8fWJk0Dj
 1+KxiWkdl+Az8WFGwy/jK7cnaWZIexbgbweLtfYefKH5HNBwHj508OZyLc5K/FPHNNMKXDFD
 ithidcxQHTNUxwzVXcDSC1aQqqrSkqKQn4SCRdXBulOAfqfm8T7XAGg/tDkJWAh4G+o4WljJ
 WYRdckNdEtRCE+9A0U5KvVAVrGnwCbJvhxQWicxno1tnKY0W6KqwWMu70ZYEZe0LbIDslkUS
 oheDfwmN7qWaa0GTw3K9v9ofDMs7wpKYBBiaaVuwvYC2rREa9hApqJklwYuQ4V1ouGZNJcd6
 hRCpJaSeSGl1N4Q8RlMDtPtKiXhJZKdfDKVlWvfaBqqwRkUNm4tgJ/VyGgVD3jw02Uzr3Eb5
 +cgmmJkEXmijuaPK4EiuF+pkv1e3tqOpfsra0qxquwo9PkdJLk0aLHPRtgiVnGlpqd0l8BmA
 ranObjO8P3ecPr/vjHebOSYQDBC3C51SArBKqS8cWBjf7USuy/mV3AqDoMRw56CrbXR6h4Ff
 TOJ+BWXso+1WGdSlYf4C1fS+2NHniquN/vqLU3Oot4eSWTqpDo0Ro34enTPMnIMmlJkduvK8
 i5dewWy0hVeXGxJCxuWuaVSXq7P6cvMb1eXq5JLl3m1Ul6tLS53cTWDzMvHLsT39I3Hztif5
 Z+Zbvrt6bUP7+6M9icQ3DX/4PDeGCs6eX3YjdTor0vvG3rKLFSXRP6fnm246s9/NfZO8U/7b
 4MUHY0dSzb6tHw9HS3MOfPDPAftBsWK2heTNrS73+6R7T/cjz9R872z39fUX1sU/WTv3Xnxo
 Jmv7yfxNU7bVfUd4RvYJpYVmSRb+B+cfCONSBQAA
Subject: Re: [Linuxppc-users] Shibboleth for Linux on Power?
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

SGksDQoNCkFueW9uZSBrbm93aW5nIGFueXRoaW5nIGFib3V0IHRoaXMgPyBfXw0KDQpIYXZlIGEg
bmljZSB3ZWVrZW5kISANCg0KQnIsDQp0b21taQ0KDQpZc3TDpHbDpGxsaXNpbiB0ZXJ2ZWlzaW4g
LyBCZXN0IHJlZ2FyZHMsIA0KDQpUb21taSBTaWh2bywgTGVhZCBTZXJ2aWNlIEFyY2hpdGVjdA0K
DQpUaWV0b0VWUlksIENvbXB1dGUgU2VydmljZXMNCg0K77u/T24gMjEvMDEvMjAyMCwgOS4zOCwg
IkxpbnV4cHBjLXVzZXJzIG9uIGJlaGFsZiBvZiBUb21taS5TaWh2b0B0aWV0by5jb20iIDxsaW51
eHBwYy11c2Vycy1ib3VuY2VzK3RvbW1pLnNpaHZvPXRpZXRvLmNvbUBsaXN0cy5vemxhYnMub3Jn
IG9uIGJlaGFsZiBvZiBUb21taS5TaWh2b0B0aWV0by5jb20+IHdyb3RlOg0KDQogICAgSGVsbG8g
JiBhd2Vzb21lIFllYXIgMjAyMCBmb3IgZXZlcnlib2R5IQ0KICAgIA0KICAgIERvZXMgYW55b25l
ICBrbm93IGlmIHRoZXJlIGV4aXN0cyBTaGliYm9sZXRoIHBhY2thZ2UvcnBtIGZvciBMaW51eCBv
biBQb3dlcj8gKHByZWZlcmFibHkgZm9yIFJIRUwgNyBwcGM2NGxlKSANCiAgICANCiAgICBTb21l
IHllYXIgYmFjayB0aGVyZSB3YXMgb25lIHBhY2thZ2Ugb24gPGh0dHBzOi8vc29mdHdhcmUub3Bl
bnN1c2Uub3JnL3BhY2thZ2Uvc2hpYmJvbGV0aC1zcD4NCiAgICAod2hpY2ggd2FzIGluc3RhbGxh
YmxlIGZvciBSSEVMIHRvbzsgKSAuLmJ1dCBjYW4ndCBmaW5kIGl0IGFueW1vcmUuLi5zbyB3aGF0
IG1pZ2h0IHRoZSBsYXRlc3Qgc3RhdHVzIGJlPw0KICAgIA0KICAgIEJyLA0KICAgIHRvbW1pDQog
ICAgDQogICAgDQogICAgWXN0w6R2w6RsbGlzaW4gdGVydmVpc2luIC8gQmVzdCByZWdhcmRzLCAN
CiAgICANCiAgICBUb21taSBTaWh2bywgTGVhZCBTZXJ2aWNlIEFyY2hpdGVjdA0KICAgIA0KICAg
IFRpZXRvRVZSWSwgQ29tcHV0ZSBTZXJ2aWNlcyANCiAgICBlbWFpbCB0b21taS5zaWh2b0B0aWV0
by5jb20gIG1vYmlsZSArMzU4ICgwKTQwIDUxODAgNjQ2DQogICAgSm91a2FoYWlzZW5rYXR1IDEs
IDV0aCBmbG9vcg0KICAgIDIwNTIwIFRVUktVDQogICAgDQogICAgDQogICAgDQogICAgVGlldG8g
YW5kIEVWUlkgYXJlIGpvaW5pbmcgZm9yY2VzLiANCiAgICANCiAgICB3d3cudGlldG9ldnJ5LmNv
bSA8aHR0cDovL3d3dy50aWV0b2V2cnkuY29tPiANCiAgICANCiAgICBUd2l0dGVyIDxodHRwczov
L3R3aXR0ZXIuY29tL3RpZXRvZXZyeT4gfCBGYWNlYm9vayA8aHR0cHM6Ly93d3cuZmFjZWJvb2su
Y29tL3RpZXRvZXZyeS8+IHwgTGlua2VkSW4gPGh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9jb21w
YW55L3RpZXRvZXZyeS8+IA0KICAgIA0KICAgIFBsZWFzZSBub3RlOiBUaGUgaW5mb3JtYXRpb24g
Y29udGFpbmVkIGluIHRoaXMgbWVzc2FnZSBtYXkgYmUgbGVnYWxseSBwcml2aWxlZ2VkLCANCiAg
ICBjb25maWRlbnRpYWwgYW5kIHByb3RlY3RlZCBmcm9tIGRpc2Nsb3N1cmUuIElmIHlvdSByZWNl
aXZlZCB0aGlzIGluIGVycm9yLCBwbGVhc2Ugbm90aWZ5IA0KICAgIHRoZSBzZW5kZXIgaW1tZWRp
YXRlbHkgYW5kIGRlbGV0ZSB0aGUgbWVzc2FnZSBmcm9tIHlvdXIgY29tcHV0ZXIuIFRoYW5rIHlv
dS4gDQogICAgIA0KICAgIA0KICAgIA0KICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQogICAgTGludXhwcGMtdXNlcnMgbWFpbGluZyBsaXN0DQogICAg
TGludXhwcGMtdXNlcnNAbGlzdHMub3psYWJzLm9yZw0KICAgIGh0dHBzOi8vbGlzdHMub3psYWJz
Lm9yZy9saXN0aW5mby9saW51eHBwYy11c2Vycw0KICAgIA0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eHBwYy11c2VycyBtYWlsaW5nIGxpc3QK
TGludXhwcGMtdXNlcnNAbGlzdHMub3psYWJzLm9yZwpodHRwczovL2xpc3RzLm96bGFicy5vcmcv
bGlzdGluZm8vbGludXhwcGMtdXNlcnMK
