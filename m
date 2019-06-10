Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE0941712
	for <lists+linuxppc-users@lfdr.de>; Tue, 11 Jun 2019 23:44:32 +0200 (CEST)
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 45Nk6j49zGzDqwW
	for <lists+linuxppc-users@lfdr.de>; Wed, 12 Jun 2019 07:44:29 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=linux.ibm.com
 (client-ip=148.163.158.5; helo=mx0a-001b2d01.pphosted.com;
 envelope-from=pthaugen@linux.ibm.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=linux.ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 45N0Rz6jtnzDqPQ
 for <linuxppc-users@lists.ozlabs.org>; Tue, 11 Jun 2019 03:26:48 +1000 (AEST)
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5AHNLwe010197
 for <linuxppc-users@lists.ozlabs.org>; Mon, 10 Jun 2019 13:26:44 -0400
Received: from e31.co.us.ibm.com (e31.co.us.ibm.com [32.97.110.149])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2t1rd0hgf7-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Mon, 10 Jun 2019 13:26:44 -0400
Received: from localhost
 by e31.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linuxppc-users@lists.ozlabs.org> from <pthaugen@linux.ibm.com>;
 Mon, 10 Jun 2019 18:26:43 +0100
Received: from b03cxnp08028.gho.boulder.ibm.com (9.17.130.20)
 by e31.co.us.ibm.com (192.168.1.131) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 10 Jun 2019 18:26:41 +0100
Received: from b03ledav005.gho.boulder.ibm.com
 (b03ledav005.gho.boulder.ibm.com [9.17.130.236])
 by b03cxnp08028.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5AHQe1229950334
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 10 Jun 2019 17:26:40 GMT
Received: from b03ledav005.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 97A43BE04F;
 Mon, 10 Jun 2019 17:26:40 +0000 (GMT)
Received: from b03ledav005.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 74C7ABE056;
 Mon, 10 Jun 2019 17:26:40 +0000 (GMT)
Received: from pmac.rchland.ibm.com (unknown [9.10.86.123])
 by b03ledav005.gho.boulder.ibm.com (Postfix) with ESMTPS;
 Mon, 10 Jun 2019 17:26:40 +0000 (GMT)
To: Nicolas Koenig <koenigni@student.ethz.ch>, linuxppc-users@lists.ozlabs.org
References: <ac9c89c3-6f16-3090-35a8-7a58c5c4458f@student.ethz.ch>
From: Pat Haugen <pthaugen@linux.ibm.com>
Date: Mon, 10 Jun 2019 12:26:39 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <ac9c89c3-6f16-3090-35a8-7a58c5c4458f@student.ethz.ch>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 19061017-8235-0000-0000-00000EA60A26
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011243; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000286; SDB=6.01216043; UDB=6.00639353; IPR=6.00997142; 
 MB=3.00027253; MTD=3.00000008; XFM=3.00000015; UTC=2019-06-10 17:26:42
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19061017-8236-0000-0000-000045F65D39
Message-Id: <cff6648f-4c8d-1307-7aee-aa035b63d41d@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-10_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906100118
X-Mailman-Approved-At: Wed, 12 Jun 2019 07:44:25 +1000
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

T24gNi84LzE5IDY6MDYgUE0sIE5pY29sYXMgS29lbmlnIHdyb3RlOgo+IEhlbGxvIGV2ZXJ5b25l
LAo+IAo+IHdoaWxlIHRyeWluZyB0byBzb2x2ZSB0aGUgcmlkZGxlIHN1cnJvdW5kaW5nIHhzYWRk
ZHAncyB0aHJvdWdocHV0LCBJIHJlY2VudGx5IGNhbWUgYWNyb3NzIHRoZSBwb3dlcjkgcGVyZm9y
bWFuY2Ugc2ltdWxhdG9yLCB3aGljaCBpcyBzdXBwb3NlZCB0byBiZSBjeWNsZS1hY2N1cmF0ZS4g
V2hlbiB0cnlpbmcgaXQsIEkgbm90aWNlZCB0aGF0IHRoZXJlIGFwcGVhcnMgdG8gYmUgYSBkaXNj
cmVwYW5jeSBmb3IgdGhlIGZvbGxvd2luZyBjb2RlOgo+IAo+IGxvb3A6Cj4gwqAgLnJlcHQgMTYK
PiDCoMKgwqAgbXR2c3JkICV2czEsICVyMwo+IMKgIC5lbmRyCj4gwqAgYmRueiBsb29wCj4gCj4g
V2hlbiBleGVjdXRpbmcgaXQgaW4gdGhlIHBlcmZvcm1hbmNlIHNpbXVsYXRvciwgaXQgeWllbGRz
IGEgc3RhYmxlIDQgbXR2c3JkIGluc3RydWN0aW9ucyBwZXIgY3ljbGUgKGV4Y2x1ZGluZyBicmFu
Y2hlcyksIHdoaWxlIHRoZSBhY3R1YWwgc2lsaWNvbiBjYW4gb25seSBzdXN0YWluIDMgbXR2c3Jk
IGluc3RydWN0aW9ucyBwZXIgY3ljbGUgKGFnYWluLCBleGNsdWRpbmcgYnJhbmNoZXMpLiBXaGF0
IG1pZ2h0IGJlIHRoZSByZWFzb24gZm9yIHRoaXMgZGlmZmVyZW5jZT8KPiAKSG93IGRpZCB5b3Ug
ZGV0ZXJtaW5lIHRoZSBoYXJkd2FyZSBjYW4gb25seSBzdXN0YWluIDM/IElzIHRoZSBsb29wIGF0
IGxlYXN0IHF1YWR3b3JkIGFsaWduZWQgdG8gZWxpbWluYXRlIGFueSB2YXJpYWJpbGl0eSBiZXR3
ZWVuIHRoZSB0d28gd3J0IGZldGNoaW5nIGJlaGF2aW9yPwoKPiBUaGFua3MgaW4gYWR2YW5jZQo+
IMKgIE5pY29sYXMKPiAKPiBQLlMuOiBJdCBhbHNvIHNlZW1zIGxpa2Ugc2Nyb2xscHYgY2FuJ3Qg
ZGlzYXNzZW1ibGUgdGhlIG10dnNyZCBpbnN0cnVjdGlvbiwgaXQganVzdCBzaG93cyA/Pz8/Pz8g
YW5kIHRoZSBpbnN0cnVjdGlvbiBpbiBoZXggKGl0IGlzIHRoZSByaWdodCBpbnN0cnVjdGlvbiB0
aG91Z2gsIEkgZG91YmxlIGNoZWNrZWQpLgoKU291bmRzIGxpa2UgYW4gb2xkIHZlcnNpb24gb3Ig
bWlzc2luZyBmbGFnIGZvciB3aGF0ZXZlciBzY3JvbGxwdiB1c2VzIGZvciBkaXNhc3NlbWJsaW5n
LgoKLVBhdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXhwcGMtdXNlcnMgbWFpbGluZyBsaXN0CkxpbnV4cHBjLXVzZXJzQGxpc3RzLm96bGFicy5v
cmcKaHR0cHM6Ly9saXN0cy5vemxhYnMub3JnL2xpc3RpbmZvL2xpbnV4cHBjLXVzZXJzCg==
