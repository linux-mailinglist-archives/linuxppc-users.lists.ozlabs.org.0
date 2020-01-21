Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id D89D61437BD
	for <lists+linuxppc-users@lfdr.de>; Tue, 21 Jan 2020 08:38:32 +0100 (CET)
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 4820lB39xXzDqKJ
	for <lists+linuxppc-users@lfdr.de>; Tue, 21 Jan 2020 18:38:30 +1100 (AEDT)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org; spf=pass (sender SPF authorized)
 smtp.mailfrom=tieto.com (client-ip=131.207.176.23; helo=ebb10.tieto.com;
 envelope-from=tommi.sihvo@tieto.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=pass (p=none dis=none) header.from=tieto.com
X-Greylist: delayed 910 seconds by postgrey-1.36 at bilbo;
 Tue, 21 Jan 2020 18:38:09 AEDT
Received: from ebb10.tieto.com (ebb10.tieto.com [131.207.176.23])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 4820kn5DQ2zDqHk
 for <linuxppc-users@lists.ozlabs.org>; Tue, 21 Jan 2020 18:38:09 +1100 (AEDT)
X-AuditID: 83cfb017-90dff70000000471-4a-5e26a6c6ddfb
Received: from C105S135VM015.eu.tieto.com ( [10.34.8.53])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by ebb10.tieto.com (SMTP Mailer) with SMTP id F6.9B.01137.6C6A62E5;
 Tue, 21 Jan 2020 09:22:46 +0200 (EET)
Received: from C105S135VM023.eu.tieto.com (10.34.8.119) by
 C105S135VM015.eu.tieto.com (10.34.8.53) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 21 Jan 2020 09:22:46 +0200
Received: from C105S135VM023.eu.tieto.com ([::1]) by
 C105S135VM023.eu.tieto.com ([fe80::7486:ecc1:32c6:984e%19]) with mapi id
 15.00.1497.000; Tue, 21 Jan 2020 09:22:46 +0200
From: <Tommi.Sihvo@tieto.com>
To: <linuxppc-users@lists.ozlabs.org>
Thread-Topic: Shibboleth for Linux on Power?
Thread-Index: AQHV0CuTUXLFJa7/0EGGMwqKfrR2iw==
Date: Tue, 21 Jan 2020 07:22:45 +0000
Message-ID: <14302145-E51C-427C-8C54-1FDB6C6CE699@tieto.com>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.21.0.200113
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.39.64.25]
Content-ID: <E43B1603DDAB7646B0086EE3107B9802@tieto.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA11Ta0wUVxjN3ZnVYdmr48LOXldRdhCaGuShNdpGjcZH/NOU/misr8UBxt2R
 ZXedmXXFJi2F+GBJ1ChBXINFBFKtghpfaQtttqgRYzB9qBE14eFjbdK0pvERN+idx8Lgn8mZ
 c+b7zvm+e4cibF0pTkrwy7zo53zsBAtpYan5c66257gLIq1ZC395eoVcClb3NR4DRWCdZVEZ
 7xO28WL+kk0W719DPUTwfur2vR3t5ipwPjUCUihEf4R+64qTEWChbPQ+Ezpyu4PQXi4BtCdx
 2qS9nAWo98IxQimZQGegf5t/IhWcTmejX1/fNys4jf4A/f28x6zxuejJwVs6zkOd3dUTFUzi
 718dalMxpBehrjONKgY0g172njIpmKAdqPr/E2YtHo1af+4jNGxH8aERlbfT+ejhnR+Axuei
 m3eGdVyALrR1kxqeiUbqE7g/hXt+iDp/zNfgQvRd3ReakwvV1w3oaaag64eHyf3AETWEiI4V
 R8eKo4biqKG4GZhPgsl8SUlhQZ4s8HIgrzRQcQ7gU6rpO+O4DBrrl8cATQHWCuceyHHbzNw2
 qbIiBsopE2uHrqOYmlQSKKv0cpK3WAz5eIlNhyuimIajdEnIV8464YLjmE0bZf18WPLxMr4W
 7AzI7MaaY1STQlJQKBUCIak4JPpiAFEEbttcnY3blnGVO3gxoJnFwDSKZB3w9xqX20Z7OJkv
 5/kgLybVMEWxCK5tw92niLyH375Z8MlJGdfFzVihjYoaNgOK32MvxigY8rrgn4dwndMovx/Z
 RKXEgIey4twrFXsoBbkKSfDo1mnwy3rMWpOsajsVMsqObEnSYJkB19ZgiUlK4+16QS2g9seb
 Wgjqn9fH8bOnqa2FsJH+gJ93OuDOWmVKpdQb8o+O72TgqntZbttkg6DEcE6HG3bhAruBH0vi
 zIQrlMOaalDHh3kGSvF9SYOb2pUB8Y8/NrUNLlYGTNVJdWgEm1qV49E5w8zT4XplZruuvO/i
 wVcwHYZz1eXKnGxc7mcRdbk6qy/304i6XJ0ct1z1eyYpjXdyVoFiYaR/4zeDKz++uDWnpv9J
 7eendmV3fHXjccZqq/CH6637xfP8iZ2ZWX2HE8xgw/CbZeUNjBx+dLQifq27aung14ko+ebB
 wKrE2fjQmtZrA9D6qKG/Lni36GX3f6Hw0JbhwvjFzK69id2zq148WG/m7kbAxps9i6/P2iKt
 +WRe6Nm3nSwpebnC2YQoce8Aj1OPm1AFAAA=
Subject: [Linuxppc-users] Shibboleth for Linux on Power?
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

SGVsbG8gJiBhd2Vzb21lIFllYXIgMjAyMCBmb3IgZXZlcnlib2R5IQ0KDQpEb2VzIGFueW9uZSAg
a25vdyBpZiB0aGVyZSBleGlzdHMgU2hpYmJvbGV0aCBwYWNrYWdlL3JwbSBmb3IgTGludXggb24g
UG93ZXI/IChwcmVmZXJhYmx5IGZvciBSSEVMIDcgcHBjNjRsZSkgDQoNClNvbWUgeWVhciBiYWNr
IHRoZXJlIHdhcyBvbmUgcGFja2FnZSBvbiA8aHR0cHM6Ly9zb2Z0d2FyZS5vcGVuc3VzZS5vcmcv
cGFja2FnZS9zaGliYm9sZXRoLXNwPg0KKHdoaWNoIHdhcyBpbnN0YWxsYWJsZSBmb3IgUkhFTCB0
b287ICkgLi5idXQgY2FuJ3QgZmluZCBpdCBhbnltb3JlLi4uc28gd2hhdCBtaWdodCB0aGUgbGF0
ZXN0IHN0YXR1cyBiZT8NCg0KQnIsDQp0b21taQ0KDQoNCllzdMOkdsOkbGxpc2luIHRlcnZlaXNp
biAvIEJlc3QgcmVnYXJkcywgDQoNClRvbW1pIFNpaHZvLCBMZWFkIFNlcnZpY2UgQXJjaGl0ZWN0
DQoNClRpZXRvRVZSWSwgQ29tcHV0ZSBTZXJ2aWNlcyANCmVtYWlsIHRvbW1pLnNpaHZvQHRpZXRv
LmNvbSAgbW9iaWxlICszNTggKDApNDAgNTE4MCA2NDYNCkpvdWthaGFpc2Vua2F0dSAxLCA1dGgg
Zmxvb3INCjIwNTIwIFRVUktVDQoNCg0KDQpUaWV0byBhbmQgRVZSWSBhcmUgam9pbmluZyBmb3Jj
ZXMuIA0KDQp3d3cudGlldG9ldnJ5LmNvbSA8aHR0cDovL3d3dy50aWV0b2V2cnkuY29tPiANCg0K
VHdpdHRlciA8aHR0cHM6Ly90d2l0dGVyLmNvbS90aWV0b2V2cnk+IHwgRmFjZWJvb2sgPGh0dHBz
Oi8vd3d3LmZhY2Vib29rLmNvbS90aWV0b2V2cnkvPiB8IExpbmtlZEluIDxodHRwczovL3d3dy5s
aW5rZWRpbi5jb20vY29tcGFueS90aWV0b2V2cnkvPiANCg0KUGxlYXNlIG5vdGU6IFRoZSBpbmZv
cm1hdGlvbiBjb250YWluZWQgaW4gdGhpcyBtZXNzYWdlIG1heSBiZSBsZWdhbGx5IHByaXZpbGVn
ZWQsIA0KY29uZmlkZW50aWFsIGFuZCBwcm90ZWN0ZWQgZnJvbSBkaXNjbG9zdXJlLiBJZiB5b3Ug
cmVjZWl2ZWQgdGhpcyBpbiBlcnJvciwgcGxlYXNlIG5vdGlmeSANCnRoZSBzZW5kZXIgaW1tZWRp
YXRlbHkgYW5kIGRlbGV0ZSB0aGUgbWVzc2FnZSBmcm9tIHlvdXIgY29tcHV0ZXIuIFRoYW5rIHlv
dS4gDQogDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXhwcGMtdXNlcnMgbWFpbGluZyBsaXN0CkxpbnV4cHBjLXVzZXJzQGxpc3RzLm96bGFi
cy5vcmcKaHR0cHM6Ly9saXN0cy5vemxhYnMub3JnL2xpc3RpbmZvL2xpbnV4cHBjLXVzZXJzCg==
