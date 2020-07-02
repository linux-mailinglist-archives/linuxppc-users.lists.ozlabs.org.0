Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 338E8211B9A
	for <lists+linuxppc-users@lfdr.de>; Thu,  2 Jul 2020 07:38:12 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 49y6M53D50zDqvg
	for <lists+linuxppc-users@lfdr.de>; Thu,  2 Jul 2020 15:38:09 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org; spf=pass (sender SPF authorized)
 smtp.mailfrom=tietoevry.com (client-ip=131.207.176.23; helo=ebb10.tieto.com;
 envelope-from=tommi.sihvo@tietoevry.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=pass (p=none dis=none) header.from=tietoevry.com
Received: from ebb10.tieto.com (ebb10.tieto.com [131.207.176.23])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 49y6Lh2dgRzDqtQ
 for <linuxppc-users@lists.ozlabs.org>; Thu,  2 Jul 2020 15:37:42 +1000 (AEST)
X-AuditID: 83cfb017-78fff700000002bd-19-5efd729edb6f
Received: from C105S135VM017.eu.tieto.com ( [10.34.8.55])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by ebb10.tieto.com (SMTP Mailer) with SMTP id 76.29.00701.E927DFE5;
 Thu,  2 Jul 2020 08:37:34 +0300 (EEST)
Received: from C105S135VM026.eu.tieto.com (10.34.8.85) by
 C105S135VM017.eu.tieto.com (10.34.8.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 2 Jul 2020 08:37:34 +0300
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (131.207.56.46)
 by C105S135VM026.eu.tieto.com (10.34.8.85) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2 via Frontend Transport; Thu, 2 Jul 2020 08:37:34 +0300
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b6r3Z1FnNNSfn9rb7EnYFx2F7kkXDMrxHFX/Nwj74uX4kaB61zjIoWQfbfBBw2xUNSxF/3TU13L/kmC1ca+tOKbCiHg2Oa1ZgxWiLn24fOOgTM+J/QjltRajZivDitl2GpFOTxBOh2MBmUVlFQrUo3teLcRH/VxXglzfvXA3lTv/Ee8UqRNpC2FagKCWx04toiqMP7pQOyk7de18VyuV7LfRXC3gn25WhDpZvM/ehFuZi9zwXk+2047FZ+nZPe9aHRLS1P+YOUhkzsneDX6U1eF/0hj3dgu4XiPAb4Ky90iW9H3x+1pHYzUFGagWestd9mXrDv2snIXzaCcCEqhRQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0x6tSQUK+JFseM5tKJtYS4xpjG8kyRneD9gxUBDcPJQ=;
 b=eSoxkvKDU++kd0CSULiF7H2pioT++a7nBf2y9p6CjAodDxBULOswYnZqLMP4fDcA+LT7eP151TtubYi0iAxR9N8wDfg/tu8+mhU90acF8aDH5yiYulfROzWf/Q22g7X6U8e9Dx12PRmbHumW8BKsuvPZ3P5JO7Fc6F7i5+4Hwy3DnW5xj5z2vdN/+clRRI1QNUZ3j0Jy7o9ZhyF5SgiDvLvG/vP9zYVlMCeFApdHgJ2DgdKklXgXe9g+M23UvGhok0XP1TmQBzkw9QZaZcqfNhfwbcsyeldD53jBLEqDoDOFKbucbT4pGZqnE1aRFDB+ewlJf6zLydnI8x8l356gsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tieto.com; dmarc=pass action=none header.from=tieto.com;
 dkim=pass header.d=tieto.com; arc=none
Received: from DB7PR04MB5530.eurprd04.prod.outlook.com (2603:10a6:10:83::12)
 by DB8PR04MB6443.eurprd04.prod.outlook.com (2603:10a6:10:107::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.22; Thu, 2 Jul
 2020 05:37:33 +0000
Received: from DB7PR04MB5530.eurprd04.prod.outlook.com
 ([fe80::59d0:684f:23a1:94ec]) by DB7PR04MB5530.eurprd04.prod.outlook.com
 ([fe80::59d0:684f:23a1:94ec%3]) with mapi id 15.20.3153.022; Thu, 2 Jul 2020
 05:37:33 +0000
From: "Tommi Sihvo" <Tommi.Sihvo@tietoevry.com>
To: Tulio Magno Quites Machado Filho <tuliom@ascii.art.br>,
 =?utf-8?B?RGFuIEhvcsOhaw==?= <dan@danny.cz>,
 "linuxppc-users@lists.ozlabs.org" <linuxppc-users@lists.ozlabs.org>
Thread-Topic: [Linuxppc-users] EPEL repo updates for ppc64le ?
Thread-Index: AQHWTdXVy6xXUGEmI0+oS7PCbnp+l6jvtjSAgAENIQCAAoGzAIAAt1oA
Date: Thu, 2 Jul 2020 05:37:33 +0000
Message-ID: <963F7453-5743-455F-A4BA-9B9F95AA9165@tieto.com>
References: <181BAE84-2F75-49AC-9F05-307D1423812A@tieto.com>
 <20200629172119.b9897a295a4490b81f43088b@danny.cz>
 <78D1486A-9D51-4522-BE18-F6948BDCA841@tieto.com>
 <871rlukj5t.fsf@linux.ibm.com>
In-Reply-To: <871rlukj5t.fsf@linux.ibm.com>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.38.20061401
authentication-results: ascii.art.br; dkim=none (message not signed)
 header.d=none;ascii.art.br; dmarc=none action=none header.from=tieto.com;
x-originating-ip: [176.72.30.96]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f0cd77da-8a97-4114-27a2-08d81e4a04f1
x-ms-traffictypediagnostic: DB8PR04MB6443:
x-microsoft-antispam-prvs: <DB8PR04MB64439F923A3EC14FA3371746E16D0@DB8PR04MB6443.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0452022BE1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 53zSpr0KrTwZkoJfUl6HebN2S7VRgF0T7ubLdIO1DPzrqM6AkHDtVssGkOaDOcvkLQyHMI5PMnWRXhcDQKIQjqnqaNIIMi2+QM/VYM1jigo4yuLvHv+4aqBqbZlB169B45e/O1pGIZZ0JLroAZ6hasjxYGRYeg0vurPhflU3POPFFFMx56V1rf8Y9yTFaxaAvusyVTxzNVSWaA7rxqXK1nJGjmdbbVYP3oJuPg3JV45OipnVQIUDGWgI4OJ4yxZ9DYoDGpI3vK26GVVQTV6uTTTNatcweMdReDzMWCf16MAHXRCOV4acfyf5f6pGY6x0bEuQmtVOiyiC7wRdKRxl/l9vR8R5My6ma0CVSlpm98/OvDKD5I00pSsj+0mDr9PI5mxKhHX34uFootFskDlNYUMtfc5SOfaUdv4v4il7rz/bOhmSVHJfQO+5AhyU2nUsCKJJTTKxAIVm8WxvITtr2Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR04MB5530.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(396003)(346002)(39850400004)(136003)(26005)(6506007)(6486002)(110136005)(71200400001)(66446008)(64756008)(66556008)(66476007)(66946007)(186003)(76116006)(91956017)(36756003)(2906002)(15650500001)(8936002)(8676002)(86362001)(83380400001)(33656002)(66574015)(966005)(5660300002)(6512007)(478600001)(316002)(2616005)(414714003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: gM1qD86dNkQmByAKxCJbN0FCYzXAq5qjuGC7OkgmNL2CI81HJ8sh6Y/JG8WRenfW0Zcti84tpiJgCsC2AAhaLeIsGx3HoBgA31/AxDS7TCjBQcOf9Ixs8BY+vw/vCeAtYkxkWwILfOhcp367yjzKA3KlcNXu7sNpZ74nSYME0E7uu6MJQ1MJ+9WwpwK9JLyQ+Ypbfb7HpW7Cz7UXz/YHKZoS1+X7YTL3aedwMOwblr/U4uI0e+7jVIcORUHA47Cq/oev8irQkjETBBATGdkwKeJKklINH8/nCFXcyvXdPOHGQNn10eDhInO8W3WUwbGXuh3dCZGocl0xs86ELuByoOwquJWE/TBJZR5bi1RaOVr5ZgKcZ/LCfggzjI8CBNtPDEV/MOgCoh4wS3WHGoz9UHLAHMh7d+CAr2l/IgI4qE1pbUaCSf71gL2EDw4umGaUchv4PigiH7Td3NxCyspm5NWJNEoCRHhkXng4/QNZYEo=
x-ms-exchange-transport-forked: True
Content-ID: <569AEAEC293B274A9FEB3C72A17E8A55@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB5530.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0cd77da-8a97-4114-27a2-08d81e4a04f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2020 05:37:33.1501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbede638-a3d9-459f-8f4e-24ced73b4e5e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gA5RdEmfdsK4J4BpTa4qXv8pBbCcQYheQTzUJSKQmfpoHNjmIIPmntJ1ovn+wa+uds8YOYhLJTNJe//jrvn1gA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6443
X-OriginatorOrg: tieto.com
X-Brightmail-Tracker: H4sIAAAAAAAAA11UbUxTVxjOubell8opt7eUHjvK8Lq4yCIfi4lsQbdFY8jIMn8sbrikrsCV
 dv1c763CkkXAMqZAVjM0SiZSNl1gOHGIaciIrgEzq4bp1O2HIQIzDDSiG2zoAHfuR7Hdv+c8
 z3nP87zvfVuKZC5pzZTDI3B+j83FpmhVWpbasK7dv2gtuNtiKerrvkgUnf9jWFV0eaYVvE6W
 3Pj8y5SSjsNz6pKRI2GwjdyhLa7kXI7dnD9/0wda+2jvIumbN1bvO3tfUwt6jQdAKoXo9ehc
 ax9xAGgphg4RaKLuR4186Afo1LUelXwYB2j2Qb2kAPokifpD/cohpkJdfz1Ui48B+jRAbTPb
 5ZIwgQZv96jlwxhAXwUPa8RbKXQ+Gj10TSrPoHsBCt6PkKJgoDei+dg5QsQZ9CZUv9SYIuOt
 6F7HgsSr6BdQ3fxxyQ7Sxaj5SXOK7DAM0JmGUemhVPol9GiyUyNnykT/xHqkYpI2ofrZLrXc
 OI2+/mGElLERTU0sSbwRp5sdqAVycyHc9oVG5VIO+ibWBGRsQdePx/FbaOrbBkLGuejPpSUF
 O9HtO0Hlzoso+KhdMc5CT8NPNTLORt0tY6oQWN+WkK8NUBivRacH8mW6BEUGp0kZr0KtTWOa
 Nql/Pbp09HdVB1B3g3SuvLywIE9wcII3r8Lr/h7gfdk30muKgCOtm6OApgCbBgXropVR23bz
 Ne4ocFIEa4RuJ6Z05d7KGruNt+/0B1wcz2bASTem4TJdHnA5WTM8+BFmDcush9vDuzgBLyib
 DQtfXbAypmWND/A+R4XDG+B3BvyuKEAUiZ+9XPAEP1tpq/mY83tlsyh4jlKxJqifxRJdZRM4
 J8f5OH9c3UNRLIINorPez1Vx1bscLiEu47qD72CFTlSksBZ4pQsHykwUEvKugu+vxnXmRPn/
 kQkqNQqqqDScu8UnjoP32dy8o0qxNsAyD2bT4qxkuxKuxb9PhomTCZYWeOsNMVFcSraLgSZA
 haaOdZLU0LETnSSj8ng9nNkEB0RrWiyyBzzLjZsz4SeV/1qZ9ARBDGDOgsMD2MWYwD/LYM6B
 V624amWCmhyDldamKG8aVOCNMcBx0T0N/wk965uByIXJFQoptY1gWPpACpfQdRbUbRbzKEqy
 2zQeL4HHeytXXAtesAlJ4y1dEMersMp4DSLJxMmk8a4ulcarSMlO5lpQt6NxYdu4fk4fXnHz
 8VBZzcW7rz24cOXlyC7u+b5026dle4l7199stmwZMtaWzlz9df/Z8Q19p3JyhXcnqcE71q17
 reuK315j/S34i9D8Hql9mIPOayerdSde+emzv9W+yMZhc+HchzfI7ENN7XxUFxrNa3+8ZsvN
 77x1P5/RsRP5+79gVbzdVphL+nnbfwfw0p7cBQAA
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

SGksDQoNCk1hbnkgVGhhbmtzIGZvciB0aGUgdGlwcyBUdWxpbyENCg0KQnIsDQp0b21taQ0KDQpZ
c3TDpHbDpGxsaXNpbiB0ZXJ2ZWlzaW4gLyBCZXN0IHJlZ2FyZHMsIA0KDQpUb21taSBTaWh2bywg
TGVhZCBTZXJ2aWNlIEFyY2hpdGVjdA0KIA0KDQoNClRpZXRvRVZSWSwgQ29tcHV0ZSBTZXJ2aWNl
cw0KDQrvu79PbiAyLjcuMjAyMCwgMC40MSwgIlR1bGlvIE1hZ25vIFF1aXRlcyBNYWNoYWRvIEZp
bGhvIiA8dHVsaW9tQGFzY2lpLmFydC5icj4gd3JvdGU6DQoNCiAgICBIaSBUb21taSwNCg0KICAg
ICJUb21taSBTaWh2byIgPFRvbW1pLlNpaHZvQHRpZXRvZXZyeS5jb20+IHdyaXRlczoNCg0KICAg
ID4gT24gdGhhdCBwcGM2NGxlIGVwZWwgcmVwbywgZm9yIGV4YW1wbGUgdGhpcyBwYWNrYWdlIGlz
IG9uIHF1aXRlIG9sZCBsZXZlbCA6DQogICAgPg0KICAgID4gYXNuMWNyeXB0byAoMC4yNC4wKSAo
ZnJvbSAzLzIwMTkpOw0KDQogICAgQXMgRGFuIHNhaWQsIEVQRUwgaXMgYSBGZWRvcmEgcmVwb3Np
dG9yeS4NCiAgICBJdCBpc24ndCBzcGVjaWZpYyB0byBwcGM2NGxlLCBlLmcuDQogICAgaHR0cDov
L2Z0cC5mdW5ldC5maS9wdWIvbGludXgvbWlycm9ycy9yZWRoYXQvZXBlbC83U2VydmVyL3g4Nl82
NC9QYWNrYWdlcy9wL3B5dGhvbjItYXNuMWNyeXB0by0wLjI0LjAtNy5lbDcubm9hcmNoLnJwbQ0K
DQogICAgPiBjb21wYXJlZCB0byBzaW1pbGFyIHg4NiBwYWNrYWdlIDogaHR0cHM6Ly9weXBpLm9y
Zy9wcm9qZWN0L2FzbjFjcnlwdG8vKSAoMS4zLjApDQoNCiAgICBQeXBpIGlzIG5vdCBzcGVjaWZp
YyB0byB4ODYgZWl0aGVyLiAgWW91IGNhbiBhbHNvIGluc3RhbGwgdGhpcyBwYWNrYWdlIG9uDQog
ICAgcHBjNjRsZToNCg0KICAgICQgcGlwMyBpbnN0YWxsIC0tdXNlciBhc24xY3J5cHRvDQogICAg
Q29sbGVjdGluZyBhc24xY3J5cHRvDQogICAgICBEb3dubG9hZGluZyBodHRwczovL2ZpbGVzLnB5
dGhvbmhvc3RlZC5vcmcvcGFja2FnZXMvZTkvNTEvMWRiNGE2MDA0OWZiNzM5MDk1OWJlNTg2YjZl
Yjc0MzA5OGU2Y2VhM2Y2YjJkM2VkOWUxN2ZlYzYyYmEyL2FzbjFjcnlwdG8tMS4zLjAtcHkyLnB5
My1ub25lLWFueS53aGwgKDEwM2tCKQ0KICAgICAgICAxMDAlIHzilojilojilojilojilojiloji
lojilojilojilojilojilojilojilojilojilojilojilojilojilojilojilojilojilojiloji
lojilojilojilojilojilojiloh8IDExMmtCIDI1NWtCL3MgDQogICAgSW5zdGFsbGluZyBjb2xs
ZWN0ZWQgcGFja2FnZXM6IGFzbjFjcnlwdG8NCiAgICBTdWNjZXNzZnVsbHkgaW5zdGFsbGVkIGFz
bjFjcnlwdG8tMS4zLjANCiAgICAkIHVuYW1lIC1tDQogICAgcHBjNjRsZQ0KDQogICAgPiBTbyB3
YXMganVzdCB3b25kZXJpbmcgaWYgdGhlcmUgd291bGQgYmUgcG9zc2liaWxpdHkgdG8gaGF2ZSBu
ZXdlciB2ZXJzaW9ucw0KICAgID4gZm9yIHBwYzY0bGUgYXMgd2VsbCBzb21laG93Pw0KDQogICAg
SW4gb3JkZXIgdG8gdXBkYXRlIHBhY2thZ2VzIG1haW50YWluZWQgYnkgdGhlIEZlZG9yYSBjb21t
dW5pdHksIHlvdSBuZWVkIHRvDQogICAgY29udGFjdCB0aGUgbWFpbnRhaW5lcnMuDQogICAgTGV0
IG1lIGxpc3Qgd2hlcmUgeW91IGNhbiBmaW5kIG1vcmUgaW5mb3JtYXRpb24gYWJvdXQgYSBmZXcg
b2YgdGhlc2UgcGFja2FnZXMNCiAgICBvbiBFUEVMOg0KDQogICAgPiBQYWNrYWdlICAgICAgICBW
ZXJzaW9uDQogICAgPg0KICAgID4gLS0tLS0tLS0tLS0tLS0gLS0tLS0tLS0tLQ0KICAgID4NCiAg
ICA+IGFzbjFjcnlwdG8gKDAuMjQuMCkNCg0KICAgIGh0dHBzOi8vc3JjLmZlZG9yYXByb2plY3Qu
b3JnL3JwbXMvcHl0aG9uLWFzbjFjcnlwdG8NCg0KICAgID4gYXR0cnMgKDE3LjQuMCkNCg0KICAg
IGh0dHBzOi8vc3JjLmZlZG9yYXByb2plY3Qub3JnL3JwbXMvcHl0aG9uLWF0dHJzDQoNCiAgICA+
IGNlcnRpZmkgKDIwMTguMTAuMTUpDQoNCiAgICBodHRwczovL3NyYy5mZWRvcmFwcm9qZWN0Lm9y
Zy9ycG1zL3B5dGhvbi1jZXJ0aWZpDQoNCg0KICAgIC0tIA0KICAgIFR1bGlvIE1hZ25vDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4cHBjLXVz
ZXJzIG1haWxpbmcgbGlzdApMaW51eHBwYy11c2Vyc0BsaXN0cy5vemxhYnMub3JnCmh0dHBzOi8v
bGlzdHMub3psYWJzLm9yZy9saXN0aW5mby9saW51eHBwYy11c2Vycwo=
