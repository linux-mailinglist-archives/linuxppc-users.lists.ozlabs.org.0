Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0384320CF3F
	for <lists+linuxppc-users@lfdr.de>; Mon, 29 Jun 2020 16:48:38 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 49wVjZ1wP6zDqMB
	for <lists+linuxppc-users@lfdr.de>; Tue, 30 Jun 2020 00:48:34 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org; spf=pass (sender SPF authorized)
 smtp.mailfrom=tietoevry.com (client-ip=131.207.176.23; helo=ebb10.tieto.com;
 envelope-from=tommi.sihvo@tietoevry.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=pass (p=none dis=none) header.from=tietoevry.com
X-Greylist: delayed 910 seconds by postgrey-1.36 at bilbo;
 Mon, 29 Jun 2020 15:41:48 AEST
Received: from ebb10.tieto.com (ebb10.tieto.com [131.207.176.23])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 49wGZh37p2zDqWt
 for <linuxppc-users@lists.ozlabs.org>; Mon, 29 Jun 2020 15:41:47 +1000 (AEST)
X-AuditID: 83cfb017-78fff700000002bd-61-5ef97b829908
Received: from C105S135VM026.eu.tieto.com ( [10.34.8.85])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by ebb10.tieto.com (SMTP Mailer) with SMTP id 31.74.00701.28B79FE5;
 Mon, 29 Jun 2020 08:26:26 +0300 (EEST)
Received: from C105S135VM026.eu.tieto.com (10.34.8.85) by
 C105S135VM026.eu.tieto.com (10.34.8.85) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 29 Jun 2020 08:26:26 +0300
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (131.207.56.46)
 by C105S135VM026.eu.tieto.com (10.34.8.85) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2 via Frontend Transport; Mon, 29 Jun 2020 08:26:26 +0300
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WtLra3CXYk1Zc4l5BmzAkX4Lh8DkEAnh5WyUiAi1NQAUUQ2P9IjW2FID0BTbv4XUCiuUrTxMRQFzR6Z9myHsvIvRv+XXtNaC6rzYtWuiAaALeEAFCQtrSRAjkDdCjKY+6CTAmtz0HQqddB1MCuIRe5KGAKgWQiS3Nu3BzlWlrSse86brpqnQ+8aGmCAHPN+Sv3S0dZWu9xn0PmlctuuJ9ufxBmLk/w5FjvM7BaEVVZKD1vPqa/Iu0FmWBxv8i5paTyti6jlON6j02G7Gjc5DN2ZYrDfOQtsolT6e86JGHWp4WUkKgPgZ3fdq1tjLru6uF4Y98aJcjamLz/Mmv4cc6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VxFkDa9r+idSU1Y6WKAdoVW6B3uLeMi/swCC8PLKESE=;
 b=HvwWOvQezAwFavx6R1Y/SgPI6vpzCzxC+kiUWlQW4xazIz6BLVFNTq2s6fapSFc1tLmQ6jKTaTwHg0xwlb+r55VOEUDfcFRSSE4nSsgskl6CuVpw0gMhKkDoYrdYDNsdGosSt78+jeDDz36kErDas9arZL8KxQqRbPfR0qA4vZU5FiXN6u4oSExdL2i8/I3W8lci7vIxoaHhGjH+sJ3p4I5sLf4LhNx58AuBuJtmbGrXsgB+hSFehlXBVPFU7ypglDezx557viGnDuRjQxtB+02Y30p+cQO52e1Fl+3vHKsroaX+MOGimo86MTQvp5awKWuFD6yFCfFjQJWZpf2UUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tieto.com; dmarc=pass action=none header.from=tieto.com;
 dkim=pass header.d=tieto.com; arc=none
Received: from DB7PR04MB5530.eurprd04.prod.outlook.com (2603:10a6:10:83::12)
 by DB7PR04MB5004.eurprd04.prod.outlook.com (2603:10a6:10:20::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.23; Mon, 29 Jun
 2020 05:26:25 +0000
Received: from DB7PR04MB5530.eurprd04.prod.outlook.com
 ([fe80::59d0:684f:23a1:94ec]) by DB7PR04MB5530.eurprd04.prod.outlook.com
 ([fe80::59d0:684f:23a1:94ec%3]) with mapi id 15.20.3131.026; Mon, 29 Jun 2020
 05:26:25 +0000
From: "Tommi Sihvo" <Tommi.Sihvo@tietoevry.com>
To: "linuxppc-users@lists.ozlabs.org" <linuxppc-users@lists.ozlabs.org>
Thread-Topic: EPEL repo updates for ppc64le ?
Thread-Index: AQHWTdXVy6xXUGEmI0+oS7PCbnp+lw==
Date: Mon, 29 Jun 2020 05:26:25 +0000
Message-ID: <181BAE84-2F75-49AC-9F05-307D1423812A@tieto.com>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.38.20061401
authentication-results: lists.ozlabs.org; dkim=none (message not signed)
 header.d=none; lists.ozlabs.org; dmarc=none action=none header.from=tieto.com; 
x-originating-ip: [131.207.242.5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c1ebbc22-8d33-4510-1004-08d81becf794
x-ms-traffictypediagnostic: DB7PR04MB5004:
x-microsoft-antispam-prvs: <DB7PR04MB5004C14AEF171A0E024AFB42E16E0@DB7PR04MB5004.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 044968D9E1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YkkXlMYe+Y4FjAedh42DQpeTAYEw97NDd/k11c4OyByt4jkYhvMaBK0FBncPqlhiSVc3EDrLd/UVDhnXwBlly6uAKmOTUjiLGL+gQIIKvp4qFChRJBMQWxWOSiMxXVt4s/LXNX/zdecA+QIwO9q2Q5yD3Q2J0wi6yj8f7EVQ/k9dnYPRbtNQwEfBIOAE5GCllD0S2kdudTuiHkcscpFP0cBeNytgAnKgtZCmczM07/EUd8SlB8XwKXj1Ph5njyY7DWJjgXFSkv4+kxmiFJYn/iBPj+ouUxfhEKuBqfWYuNGSNGKu3smaHVpg0SsjU7/PpplCjhBrqiy5gCnJJZWFia5UUfrz3QutzGkx0aiE/+OVTkcD6SabSJFRliPBr0nikoSZmYFQGpFDVHE7Bl11xQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR04MB5530.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(39850400004)(396003)(136003)(366004)(478600001)(6512007)(8676002)(966005)(6486002)(8936002)(6506007)(316002)(36756003)(2906002)(166002)(66446008)(64756008)(66556008)(6916009)(66476007)(91956017)(76116006)(66946007)(5660300002)(558084003)(86362001)(186003)(71200400001)(33656002)(2616005)(26005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ZIqjn0k2u6jVnvP7aMotao4ingvZb0EFs2M4sWuLszZiMtTrHE04qOHTB/BAh2EFAPTO4dTgFVDl7HstCp8b22KATVxHvd35wggiuh/9qafGnNMLKtvHS8D+9hrWiqv90bc61mCR7HSn9ER6nO/67cnMYrxaCDuz33UnBRuO+uudlth0DNYjiAQgzewYunH+j63EAtUNuHnsGHcHjMHE3NUf9ZrT7bk2VWW8fWjP89HosyYCCvg4PI0J5zykaEbN1WYkUC/Wzpitee3CD5Ah+rxmuuAK5P8QNvM99gSda/hN1IJNntFazBTD9MDUtNkr8jrTFG1sT+urQ3YJrLevfCQSn/mPRsRGXysfKz5k65LMSCz4wNhuWoZowt5ZD/jcyZ4OSltFBQCxm16LLUMpXw9rhyjT5B9ck2lZu9anJ/jaP75uvLL4kTNOkgEiQqvmHaeomAESnh7dLT1ECI5kO6L8J7EvRfwL5dh0VQMQOAEWEKGBv9B8lRevFRoIrNwn
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB5530.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1ebbc22-8d33-4510-1004-08d81becf794
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2020 05:26:25.1873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbede638-a3d9-459f-8f4e-24ced73b4e5e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +sv0SOy9cZY8E6HMOFL11Yu3CYO1M1GCINogZanz0rmxcicefCPHC7SU1Rb1qSjXoz9x4KTArXUTVV9yBwQNjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5004
X-OriginatorOrg: tieto.com
X-Brightmail-Tracker: H4sIAAAAAAAAA11UfUwTZxze27vC2fHKcXz96MDIuRFnJqBhicnMskWnZGriZnAfidACt7ZS
 2qbXKrAtQ8c0Ad3YlIwPicDAhA7CYIugmJh0sglpKINt6GZsFYMfS9wMKvjF9t5H8dg/l+ee
 5/29z3NPfjmG4qYNRsbm8Ahuh9nORxloA8/krd7/4YP87Jm+5evO3hiiX0O5wfpWtB29b1hf
 LNhtewR31qsmg/Wh7xLlqsspu9DSq69E42ur0RIG2BwI35uhq5GB4dhaHYTm69WXkwiu/zgd
 pbxMITgffqSTRhB7goIvr8ZJAmJHaJgYbIpWhB4EjX/vlDDHturgSNVuZfoqgp/OH5Sno9gs
 uFz3izyQwG6GQOiyjOPZlfBo+Kxe4VfDaPgOUnAm9A3/QHiGodkXoCpQINGYXQ+BIz/Tim8S
 zI50yddTbDLsv9upV76NhfYzQUrBiXBzal7mE0mEu6crkfIB9Qg69nXolEPp0NQQUAfSYPx4
 DVLwNhifGlDPrIL5v6p0Uh5gS+B23RsKnQEHx3zRCk6FiUOttIKXge/wFTrChy/0y40CO0hB
 +OIBfS3KbtTkVrAJPn/yj4wxGwfDDdfoRmJHsS9Cz+ks5Ug6HK25Eq3glfDZsWYV58LYqUN6
 7ZkWxPhQrFBYuCY702MTPM7MImdpHyKr82nwu+QBVH90gx+xDOJjsMn5IJ/Tm/eI5aV+VMLo
 +EQ86SXU0kJncbnVLFoL3F67IPIJGNkJjRfoQq+9hDfirArCxi+wDmGvaBc8ZFf5ZfibjXP5
 XPKCJnpFl63I5vSKBV633Y+Aoci1M6/cJ9cWm8srBLdTMfOj5xiaT8Z0ykw+x1rMHqFEEFyC
 O6LuZRge8OMy4hznFixC2Qc2uycik7nXY4nCahU5bBpOO0UCJWkFTd50vN1C5oxa+f+RdcwS
 P7IwMST3v+VSHaLLXCraLKp1PL5uI2xMhJVtU/CkdJSLkBrLNFy6VUoUkRbbjaBmxNTebG6j
 mIu+dvK8Iz9n5ee55o42iqMdTodgTMb9kgMrXWP1OhaqMCbhAudsPherEaRIxlTcPUR8EzX8
 01TG5bjNRqZSNOriYLy8SOsyb6EiskPxeIu0AzHkD/W0CQ73SpGeVUm5CMAhiYtTOU0Pqbhz
 m5RHVRa73SKF60jhrpelRRE9Zo+28K/z5qTCVVYtvHPnnFS4Si4qvCtPLlyVFjsZK1HP7j//
 COe+5zqzNKfe1LHj+WcynnRVNA29E3KhwMbKrz4aC4yahjLQ8Zbg6K8rdv3+5u3NnzR0pIZS
 cfFvaEPtvuCmTs+MKOy692639f60zXcj++3eA+3HEvoHvv/CZKk63NVdthZeCm2iqx9fOrm1
 ZtA9Pvcwc/Jj7q2Jb08knUu6NsbTotW8ZhXlFs3/AeKIJKz5BQAA
X-Mailman-Approved-At: Tue, 30 Jun 2020 00:43:07 +1000
Subject: [Linuxppc-users] EPEL repo updates for ppc64le ?
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
Content-Type: multipart/mixed; boundary="===============0479691014787541816=="
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

--===============0479691014787541816==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_181BAE842F7549AC9F05307D1423812Atietocom_"

--_000_181BAE842F7549AC9F05307D1423812Atietocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhDQoNCg0KDQpEb2VzIGFueW9uZSBrbm93IHdoYXQgaW5zdGFuY2UgaXMgbWFpbnRhaW5pbmcg
LyB1cGRhdGluZyB0aGlzIEVQRUwgcmVwbyBmb3IgcHBjNjRsZSA/DQoNCmh0dHA6Ly9mdHAuZnVu
ZXQuZmkvcHViL2xpbnV4L21pcnJvcnMvcmVkaGF0L2VwZWwvN1NlcnZlci9wcGM2NGxlL1BhY2th
Z2VzLw0KDQoNCg0KVGhhbmtzIQ0KDQoNCg0KQnIsDQoNCnRvbW1pDQoNCg0KDQoNCg0KWXN0w6R2
w6RsbGlzaW4gdGVydmVpc2luIC8gQmVzdCByZWdhcmRzLA0KDQpUb21taSBTaWh2bywgTGVhZCBT
ZXJ2aWNlIEFyY2hpdGVjdA0KDQpbc2lnbmF0dXJlXzExNTUyMjM5NjRdDQoNClRpZXRvRVZSWSwg
Q29tcHV0ZSBTZXJ2aWNlcw0KDQoNCg==

--_000_181BAE842F7549AC9F05307D1423812Atietocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <8CEC1FCF509CF54A99BC47A8F03F7169@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPCEtLVtp
ZiAhbXNvXT48c3R5bGU+dlw6KiB7YmVoYXZpb3I6dXJsKCNkZWZhdWx0I1ZNTCk7fQ0Kb1w6KiB7
YmVoYXZpb3I6dXJsKCNkZWZhdWx0I1ZNTCk7fQ0Kd1w6KiB7YmVoYXZpb3I6dXJsKCNkZWZhdWx0
I1ZNTCk7fQ0KLnNoYXBlIHtiZWhhdmlvcjp1cmwoI2RlZmF1bHQjVk1MKTt9DQo8L3N0eWxlPjwh
W2VuZGlmXS0tPjxzdHlsZT48IS0tDQovKiBGb250IERlZmluaXRpb25zICovDQpAZm9udC1mYWNl
DQoJe2ZvbnQtZmFtaWx5OiJDYW1icmlhIE1hdGgiOw0KCXBhbm9zZS0xOjIgNCA1IDMgNSA0IDYg
MyAyIDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpDYWxpYnJpOw0KCXBhbm9zZS0xOjIg
MTUgNSAyIDIgMiA0IDMgMiA0O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6IlRpbWVzIE5l
dyBSb21hbiBcKEJvZHkgQ1NcKSI7DQoJcGFub3NlLTE6MiAxMSA2IDQgMiAyIDIgMiAyIDQ7fQ0K
LyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWwsIGRpdi5N
c29Ob3JtYWwNCgl7bWFyZ2luOjBjbTsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJZm9udC1z
aXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgltc28tZmFy
ZWFzdC1sYW5ndWFnZTpFTi1VUzt9DQphOmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1z
dHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjojMDU2M0MxOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRl
cmxpbmU7fQ0KcC5Nc29QbGFpblRleHQsIGxpLk1zb1BsYWluVGV4dCwgZGl2Lk1zb1BsYWluVGV4
dA0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJbXNvLXN0eWxlLWxpbms6IlBsYWluIFRleHQg
Q2hhciI7DQoJbWFyZ2luOjBjbTsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJZm9udC1zaXpl
OjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgltc28tZmFyZWFz
dC1sYW5ndWFnZTpFTi1VUzt9DQpzcGFuLlBsYWluVGV4dENoYXINCgl7bXNvLXN0eWxlLW5hbWU6
IlBsYWluIFRleHQgQ2hhciI7DQoJbXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCW1zby1zdHlsZS1s
aW5rOiJQbGFpbiBUZXh0IjsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQou
TXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LWZhbWls
eToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgltc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUzt9DQpA
cGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo2MTIuMHB0IDc5Mi4wcHQ7DQoJbWFyZ2luOjcyLjBw
dCA3Mi4wcHQgNzIuMHB0IDcyLjBwdDt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNl
Y3Rpb24xO30NCi0tPjwvc3R5bGU+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJlbi1GSSIgbGluaz0i
IzA1NjNDMSIgdmxpbms9IiM5NTRGNzIiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxw
IGNsYXNzPSJNc29QbGFpblRleHQiPjxzcGFuIGxhbmc9IkVOLVVTIj5IaSE8bzpwPjwvbzpwPjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvUGxhaW5UZXh0Ij48c3BhbiBsYW5nPSJFTi1VUyIgc3R5
bGU9ImNvbG9yOmJsYWNrIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvUGxhaW5UZXh0Ij48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImNvbG9yOmJsYWNrIj5Eb2Vz
IGFueW9uZSBrbm93IHdoYXQgaW5zdGFuY2UgaXMgbWFpbnRhaW5pbmcgLyB1cGRhdGluZyB0aGlz
IEVQRUwgcmVwbyBmb3IgcHBjNjRsZSA/PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb1BsYWluVGV4dCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJjb2xvcjpibGFjayI+PGEg
aHJlZj0iaHR0cDovL2Z0cC5mdW5ldC5maS9wdWIvbGludXgvbWlycm9ycy9yZWRoYXQvZXBlbC83
U2VydmVyL3BwYzY0bGUvUGFja2FnZXMvIj5odHRwOi8vZnRwLmZ1bmV0LmZpL3B1Yi9saW51eC9t
aXJyb3JzL3JlZGhhdC9lcGVsLzdTZXJ2ZXIvcHBjNjRsZS9QYWNrYWdlcy88L2E+PG86cD48L286
cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb1BsYWluVGV4dCI+PHNwYW4gbGFuZz0iRU4tVVMi
IHN0eWxlPSJjb2xvcjpibGFjayI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb1BsYWluVGV4dCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJjb2xvcjpibGFjayI+
VGhhbmtzITxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29QbGFpblRleHQiPjxz
cGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iY29sb3I6YmxhY2siPjxvOnA+Jm5ic3A7PC9vOnA+PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29QbGFpblRleHQiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHls
ZT0iY29sb3I6YmxhY2siPkJyLDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Q
bGFpblRleHQiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iY29sb3I6YmxhY2siPnRvbW1pPG86
cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb1BsYWluVGV4dCI+PHNwYW4gbGFuZz0i
RU4tVVMiIHN0eWxlPSJjb2xvcjpibGFjayI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0K
PHAgY2xhc3M9Ik1zb1BsYWluVGV4dCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O1RpbWVzIE5ldyBS
b21hbiZxdW90OyxzZXJpZjtjb2xvcjojNTA1MDUwIj5Zc3TDpHbDpGxsaXNpbiB0ZXJ2ZWlzaW4g
LyBCZXN0IHJlZ2FyZHMsDQo8L3NwYW4+PGJyPg0KPGJyPg0KPGI+PHNwYW4gc3R5bGU9ImZvbnQt
c2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7VGltZXMgTmV3IFJvbWFuJnF1b3Q7LHNlcmlm
O2NvbG9yOiMwNjM5NTQiPlRvbW1pIFNpaHZvPC9zcGFuPjwvYj48c3BhbiBzdHlsZT0iZm9udC1z
aXplOjEwLjBwdDtmb250LWZhbWlseTomcXVvdDtUaW1lcyBOZXcgUm9tYW4mcXVvdDssc2VyaWY7
Y29sb3I6IzUwNTA1MCI+LCBMZWFkIFNlcnZpY2UgQXJjaGl0ZWN0PG86cD48L286cD48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7
Zm9udC1mYW1pbHk6JnF1b3Q7VGltZXMgTmV3IFJvbWFuJnF1b3Q7LHNlcmlmO2NvbG9yOiM1MDUw
NTAiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxp
bWcgYm9yZGVyPSIwIiB3aWR0aD0iODciIGhlaWdodD0iMjEiIHN0eWxlPSJ3aWR0aDouOTA2Mmlu
O2hlaWdodDouMjE4N2luIiBpZD0iX3gwMDAwX2kxMDI1IiBzcmM9ImZpbGU6Ly8vL1VzZXJzL3Np
aHZvdG9tL0xpYnJhcnkvQ29udGFpbmVycy9jb20ubWljcm9zb2Z0Lk91dGxvb2svRGF0YS9MaWJy
YXJ5L0NhY2hlcy9TaWduYXR1cmVzL3NpZ25hdHVyZV8xMTU1MjIzOTY0IiBhbHQ9InNpZ25hdHVy
ZV8xMTU1MjIzOTY0Ij48YnI+DQo8YnI+DQo8Yj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjBw
dDtmb250LWZhbWlseTomcXVvdDtUaW1lcyBOZXcgUm9tYW4mcXVvdDssc2VyaWY7Y29sb3I6IzA2
Mzk1NCI+VGlldG9FVlJZLCBDb21wdXRlIFNlcnZpY2VzPC9zcGFuPjwvYj48bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29QbGFpblRleHQiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iY29s
b3I6YmxhY2siPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9ib2R5Pg0K
PC9odG1sPg0K

--_000_181BAE842F7549AC9F05307D1423812Atietocom_--

--===============0479691014787541816==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users

--===============0479691014787541816==--
