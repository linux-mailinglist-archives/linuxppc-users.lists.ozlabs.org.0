Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABAA3755C
	for <lists+linuxppc-users@lfdr.de>; Thu,  6 Jun 2019 15:37:57 +0200 (CEST)
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 45KRYP5brMzDqkP
	for <lists+linuxppc-users@lfdr.de>; Thu,  6 Jun 2019 23:37:45 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=renault.com
 (client-ip=193.194.133.50; helo=smtp27.renault.fr;
 envelope-from=prvs=0538227fb=sacha.gosselin-extern@renault.com;
 receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=pass (p=none dis=none) header.from=renault.com
Authentication-Results: lists.ozlabs.org; dkim=pass (1024-bit key;
 unprotected) header.d=renault.com header.i=@renault.com header.b="VneI8wY9"; 
 dkim=fail reason="signature verification failed" (1024-bit key;
 unprotected) header.d=grouperenault.onmicrosoft.com
 header.i=@grouperenault.onmicrosoft.com header.b="nTJ9IbHQ"; 
 dkim-atps=neutral
Received: from smtp27.renault.fr (smtp27.renault.fr [193.194.133.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 45KRXh2V9SzDqbB
 for <linuxppc-users@lists.ozlabs.org>; Thu,  6 Jun 2019 23:37:05 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=renault.com; i=@renault.com; q=dns/txt;
 s=dkim-renault-com; t=1559828228; x=1591364228;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=kXnhztqNxEDqsHbcCKJ+gSB9HXUudpkeM7n+or/J1Jc=;
 b=VneI8wY9s7ztoq1e5xY0CYzFbyNL08pvIM+ss9kR78k5KqxdFycRpOak
 SuLuBnkSmDQq8SXQIvy6uEcWCoh08TVphqvaw7zLv4Gmnu2XOk7UxG6ys
 NnTND+/k/vpsjZYeKwju9VEnhtzYw60wqj4sRseXIZH6o+n11dxhNunrD 0=;
X-IronPort-AV: E=Sophos;i="5.63,559,1557180000"; d="scan'208";a="396317003"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=grouperenault.onmicrosoft.com; s=selector2-grouperenault-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wWgzqZnbqzP6vpdMDC1yqj5Duz4WqU+cfY6NL7Tst2s=;
 b=nTJ9IbHQOvE6D3xUH3S0oOeRGUJzK9/yxiKPzu0FJVlIgzcmcStOW5+ahOoKJQ/lEBC+iuYqAWy1ilLirwM6XZNpTkuWfa5/7WXXD92qHhL2Xj1Y68QwjGkyXkiGWk/d1B9qEqthJn22w415aUkrMnPxdWoKgVaYUuGmppQ1xyU=
From: "GOSSELIN Sacha (renexter)" <sacha.gosselin-extern@renault.com>
To: =?iso-8859-1?Q?Dan_Hor=E1k?= <dan@danny.cz>
Thread-Topic: [Linuxppc-users] Redhat 8 on Power9 certification - SAP HANA
Thread-Index: AdUcPimYUDjPFpfJR6SQvgELhrBshgAA99MAAAoxhIA=
Date: Thu, 6 Jun 2019 13:36:49 +0000
Message-ID: <AM6PR05MB4150F7F092A54FC9B237510CAD170@AM6PR05MB4150.eurprd05.prod.outlook.com>
References: <AM6PR05MB4150FEB18E045FF54F7516A5AD170@AM6PR05MB4150.eurprd05.prod.outlook.com>
 <20190606103002.34a4cd7ffdf96d24bee8b0fc@danny.cz>
In-Reply-To: <20190606103002.34a4cd7ffdf96d24bee8b0fc@danny.cz>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [138.21.12.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d38fe04b-a4cc-41fb-1c18-08d6ea8406ea
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM6PR05MB5524; 
x-ms-traffictypediagnostic: AM6PR05MB5524:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM6PR05MB5524BC867E13A46836BA4D3BAD170@AM6PR05MB5524.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(39860400002)(366004)(376002)(396003)(199004)(189003)(186003)(14454004)(26005)(6506007)(2906002)(66066001)(66946007)(86362001)(66446008)(64756008)(99286004)(966005)(73956011)(71190400001)(76176011)(7696005)(66476007)(66556008)(3846002)(71200400001)(76116006)(478600001)(256004)(8936002)(102836004)(476003)(6116002)(81156014)(81166006)(11346002)(6436002)(8676002)(446003)(25786009)(486006)(6246003)(7736002)(74316002)(9686003)(55016002)(6306002)(52536014)(5660300002)(53936002)(305945005)(316002)(33656002)(68736007)(4326008)(229853002)(6916009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR05MB5524;
 H:AM6PR05MB4150.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xszJspLMI4AiEJJ7bXhvXEaVQbwpc/MXmjEBaczH05iGYdoM+j5e1IZIiCoJcP8arSFETAkid4eJedU1Oc/rSrxv8cU3CkCYICPz1QgUJSIbSOUC7MjqBc3xy9EmNDNOYHZ2bO1VybpDq91ZBo+Q26CiEctLb7fyngumWN1Uw4Ju4A/oOoLcIJEW6Ct3p/2kGAvZ+72Oz5tQFm09kaLvIm+VeQNersilvH+i/cC48YGp0gtGVJ+kSEJ8982tf8vOJi/80Yf0KT5L+ZKHkGMF4ZCAljub0HlHvICGSCTiaXMLdodCt4QmdM8kfaMK3p1gBZzh3EN074UlT5tSuj4EY/0VLP/99yW7blzBlqYntscbliHOmDvGCdArDmLmWIqVBx7RjNeQjes/RCmz4Yx5rC6vF/cAT6Ixcb/3MvxiSPE=
MIME-Version: 1.0
X-OriginatorOrg: renault.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d38fe04b-a4cc-41fb-1c18-08d6ea8406ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 13:36:49.0973 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d6b0bbee-7cd9-4d60-bce6-4a67b543e2ae
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sacha.gosselin-extern@renault.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5524
Subject: Re: [Linuxppc-users] Redhat 8 on Power9 certification - SAP HANA
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

Hi,

Thanks for your answer. I agree that RHEL-7 is certified on Power LE POWER9=
 but not for SAP HANA unfortunately.
It seems that Redhat will not certified SAP HANA on RHEL-7 on Power9 (and R=
HEL-7 is certified on POWER8 for SAP HANA I agree)

That's why I'm looking for RHEL-8 roadmap on Power9.

Thanks a lot!

Regards,
Sacha G.

-----Message d'origine-----
De=A0: Linuxppc-users <linuxppc-users-bounces+sacha.gosselin-extern=3Drenau=
lt.com@lists.ozlabs.org> De la part de Dan Hor=E1k
Envoy=E9=A0: jeudi 6 juin 2019 10:30
=C0=A0: linuxppc-users@lists.ozlabs.org
Objet=A0: Re: [Linuxppc-users] Redhat 8 on Power9 certification - SAP HANA

On Thu, 6 Jun 2019 08:02:21 +0000
"GOSSELIN Sacha (renexter)" <sacha.gosselin-extern@renault.com> wrote:

> Hello,
> =

> I'm SAP HANA Technical Consultant and I'm looking for roadmap or =

> information about Redhat8 certification on Power9.
> =

> Of course, it's in SAP HANA perimeter and I asked to SAP but they have =

> no idea about the schedule or if it is scheduled.. I don't understand.
> =

> The problem is that no Redhat version is supported on Power9, only =

> SLES.

hmm, you should be able get "Red Hat Enterprise Linux for Power LE (POWER9)=
", which is RHEL-7


		Dan
_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
-- Disclaimer ------------------------------------ =

Ce message ainsi que les eventuelles pieces jointes constituent une corresp=
ondance privee et confidentielle a l'attention exclusive du destinataire de=
signe ci-dessus. Si vous n'etes pas le destinataire du present message ou u=
ne personne susceptible de pouvoir le lui delivrer, il vous est signifie qu=
e toute divulgation, distribution ou copie de cette transmission est strict=
ement interdite. Si vous avez recu ce message par erreur, nous vous remerci=
ons d'en informer l'expediteur par telephone ou de lui retourner le present=
 message, puis d'effacer immediatement ce message de votre systeme.

*** This e-mail and any attachments is a confidential correspondence intend=
ed only for use of the individual or entity named above. If you are not the=
 intended recipient or the agent responsible for delivering the message to =
the intended recipient, you are hereby notified that any disclosure, distri=
bution or copying of this communication is strictly prohibited. If you have=
 received this communication in error, please notify the sender by phone or=
 by replying this message, and then delete this message from your system.

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
