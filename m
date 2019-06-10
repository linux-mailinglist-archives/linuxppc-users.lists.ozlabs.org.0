Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id E01063BDDC
	for <lists+linuxppc-users@lfdr.de>; Mon, 10 Jun 2019 22:54:05 +0200 (CEST)
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 45N52z1mYKzDqSg
	for <lists+linuxppc-users@lfdr.de>; Tue, 11 Jun 2019 06:54:03 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=none (mailfrom) smtp.mailfrom=student.ethz.ch
 (client-ip=82.130.75.186; helo=edge10.ethz.ch;
 envelope-from=koenigni@student.ethz.ch; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org; dmarc=none (p=none dis=none)
 header.from=student.ethz.ch
X-Greylist: delayed 211 seconds by postgrey-1.36 at bilbo;
 Tue, 11 Jun 2019 06:46:58 AEST
Received: from edge10.ethz.ch (edge10.ethz.ch [82.130.75.186])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 45N4tp3G5yzDqRC
 for <linuxppc-users@lists.ozlabs.org>; Tue, 11 Jun 2019 06:46:58 +1000 (AEST)
Received: from mailm213.d.ethz.ch (129.132.139.37) by edge10.ethz.ch
 (82.130.75.186) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 10 Jun
 2019 22:42:47 +0200
Received: from [192.168.178.82] (87.78.108.52) by mailm213.d.ethz.ch
 (2001:67c:10ec:5603::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 10 Jun
 2019 22:42:48 +0200
To: Pat Haugen <pthaugen@linux.ibm.com>, <linuxppc-users@lists.ozlabs.org>
References: <ac9c89c3-6f16-3090-35a8-7a58c5c4458f@student.ethz.ch>
 <cff6648f-4c8d-1307-7aee-aa035b63d41d@linux.ibm.com>
From: Nicolas Koenig <koenigni@student.ethz.ch>
Message-ID: <e8d7c2df-e42d-ebd4-598a-2be71420031a@student.ethz.ch>
Date: Tue, 11 Jun 2019 00:42:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <cff6648f-4c8d-1307-7aee-aa035b63d41d@linux.ibm.com>
Content-Language: en-US
X-Originating-IP: [87.78.108.52]
X-ClientProxiedBy: mailm111.d.ethz.ch (2001:67c:10ec:5602::23) To
 mailm213.d.ethz.ch (2001:67c:10ec:5603::27)
X-TM-SNTS-SMTP: 1B33499D60F0E3621289C23CCFE227FB38DD5AB345DAA73F9025E202D3B691422000:8
Subject: Re: [Linuxppc-users] Discrepancies between Performance Simulator
 and Silicon
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

SGVsbG8gUGF0LAoKT24gMTAvMDYvMjAxOSAxOToyNiwgUGF0IEhhdWdlbiB3cm90ZToKPiBPbiA2
LzgvMTkgNjowNiBQTSwgTmljb2xhcyBLb2VuaWcgd3JvdGU6Cj4+IEhlbGxvIGV2ZXJ5b25lLAo+
Pgo+PiB3aGlsZSB0cnlpbmcgdG8gc29sdmUgdGhlIHJpZGRsZSBzdXJyb3VuZGluZyB4c2FkZGRw
J3MgdGhyb3VnaHB1dCwgSSByZWNlbnRseSBjYW1lIGFjcm9zcyB0aGUgcG93ZXI5IHBlcmZvcm1h
bmNlIHNpbXVsYXRvciwgd2hpY2ggaXMgc3VwcG9zZWQgdG8gYmUgY3ljbGUtYWNjdXJhdGUuIFdo
ZW4gdHJ5aW5nIGl0LCBJIG5vdGljZWQgdGhhdCB0aGVyZSBhcHBlYXJzIHRvIGJlIGEgZGlzY3Jl
cGFuY3kgZm9yIHRoZSBmb2xsb3dpbmcgY29kZToKPj4KPj4gbG9vcDoKPj4gIMKgIC5yZXB0IDE2
Cj4+ICDCoMKgwqAgbXR2c3JkICV2czEsICVyMwo+PiAgwqAgLmVuZHIKPj4gIMKgIGJkbnogbG9v
cAo+Pgo+PiBXaGVuIGV4ZWN1dGluZyBpdCBpbiB0aGUgcGVyZm9ybWFuY2Ugc2ltdWxhdG9yLCBp
dCB5aWVsZHMgYSBzdGFibGUgNCBtdHZzcmQgaW5zdHJ1Y3Rpb25zIHBlciBjeWNsZSAoZXhjbHVk
aW5nIGJyYW5jaGVzKSwgd2hpbGUgdGhlIGFjdHVhbCBzaWxpY29uIGNhbiBvbmx5IHN1c3RhaW4g
MyBtdHZzcmQgaW5zdHJ1Y3Rpb25zIHBlciBjeWNsZSAoYWdhaW4sIGV4Y2x1ZGluZyBicmFuY2hl
cykuIFdoYXQgbWlnaHQgYmUgdGhlIHJlYXNvbiBmb3IgdGhpcyBkaWZmZXJlbmNlPwo+Pgo+IEhv
dyBkaWQgeW91IGRldGVybWluZSB0aGUgaGFyZHdhcmUgY2FuIG9ubHkgc3VzdGFpbiAzPyBJcyB0
aGUgbG9vcCBhdCBsZWFzdCBxdWFkd29yZCBhbGlnbmVkIHRvIGVsaW1pbmF0ZSBhbnkgdmFyaWFi
aWxpdHkgYmV0d2VlbiB0aGUgdHdvIHdydCBmZXRjaGluZyBiZWhhdmlvcj8KCkEgYml0IG1vcmUg
b2YgdGhlIGNvZGUgKE5VTV9JTlNUUiA9IDE2LCBjdHIgPSAweDgwMDApOgoKICAgbWZzcHIgJXI1
LCA3NzYKLmFsaWduIDQKbXR2c3JfbG9vcDoKLnJlcHQgTlVNX0lOU1RSCiAgIG10dnNyZCAldnM5
LCAlcjMKLmVuZHIKICAgYmRueiBtdHZzcl9sb29wCi5hbGlnbiA0CiAgIG1mc3ByICVyNiwgNzc2
CgpJIGRldGVybWluZWQgdGhlIHRocm91Z2hwdXQgb2YgbXR2c3JkIGluc3RydWN0aW9ucyB2aWEg
CihudW1faXRlcmF0aW9ucypOVU1fSU5TVFIpLyglcjYtJXI1KSwgd2hpY2ggdHVybmVkIG91dCB0
byBiZSAyLjk2MSBpL2MgCmluIHRoZSB0ZXN0IEkganVzdCByYW4uIEluY3JlYXNpbmcgTlVNX0lO
U1RSIGZ1cnRoZXIgY29udmVyZ2VzIHRoZSAKcmVzdWx0IChOVU1fSU5TVFI9MzIgeWllbGRzIDIu
OTk1IGkvYykuCgpUaGUgd2hvbGUgdGVzdCBjb2RlIGlzIGF0IApodHRwczovL2dpdGh1Yi5jb20v
RGljaGxvcm9tZXRoYW5lL3B3cjkvYmxvYi9tYXN0ZXIvYmVuY2gvbWF4dGhyb3VnaHB1dC8KClRo
ZSBwcm9jZXNzb3IgaXMgYSBQOSBTZm9yemEgRDIuMiAocHZyIDAwNGUgMTIwMikgYW5kIHRoZSBw
ZXJmb3JtYW5jZSAKc2ltdWxhdG9yIHNheXMgICJWZXJzaW9uOiBwOSB2MTY2MiBidWlsdCBvbiBG
cmkgSmFuIDE5IDA4OjE1OjU5IDIwMSIsIGlmIAp0aGF0IGlzIG9mIGFueSBoZWxwLgoKVGhhbmsg
eW91IGZvciBsb29raW5nIGludG8gdGhpcwogICBOaWNvbGFzCgo+IAo+PiBUaGFua3MgaW4gYWR2
YW5jZQo+PiAgwqAgTmljb2xhcwo+Pgo+PiBQLlMuOiBJdCBhbHNvIHNlZW1zIGxpa2Ugc2Nyb2xs
cHYgY2FuJ3QgZGlzYXNzZW1ibGUgdGhlIG10dnNyZCBpbnN0cnVjdGlvbiwgaXQganVzdCBzaG93
cyA/Pz8/Pz8gYW5kIHRoZSBpbnN0cnVjdGlvbiBpbiBoZXggKGl0IGlzIHRoZSByaWdodCBpbnN0
cnVjdGlvbiB0aG91Z2gsIEkgZG91YmxlIGNoZWNrZWQpLgo+IAo+IFNvdW5kcyBsaWtlIGFuIG9s
ZCB2ZXJzaW9uIG9yIG1pc3NpbmcgZmxhZyBmb3Igd2hhdGV2ZXIgc2Nyb2xscHYgdXNlcyBmb3Ig
ZGlzYXNzZW1ibGluZy4KPiAKPiAtUGF0Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4cHBjLXVzZXJzIG1haWxpbmcgbGlzdApMaW51eHBwYy11
c2Vyc0BsaXN0cy5vemxhYnMub3JnCmh0dHBzOi8vbGlzdHMub3psYWJzLm9yZy9saXN0aW5mby9s
aW51eHBwYy11c2Vycwo=
