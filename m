Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id BDED136E11
	for <lists+linuxppc-users@lfdr.de>; Thu,  6 Jun 2019 10:04:04 +0200 (CEST)
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 45KJ8L13kTzDqVP
	for <lists+linuxppc-users@lfdr.de>; Thu,  6 Jun 2019 18:04:02 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=renault.com
 (client-ip=193.194.133.49; helo=smtp26.renault.fr;
 envelope-from=prvs=0538227fb=sacha.gosselin-extern@renault.com;
 receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=pass (p=none dis=none) header.from=renault.com
Authentication-Results: lists.ozlabs.org; dkim=pass (1024-bit key;
 unprotected) header.d=renault.com header.i=@renault.com header.b="jMBR3ZQE"; 
 dkim=fail reason="signature verification failed" (1024-bit key;
 unprotected) header.d=grouperenault.onmicrosoft.com
 header.i=@grouperenault.onmicrosoft.com header.b="WvFPIxvM"; 
 dkim-atps=neutral
X-Greylist: delayed 72 seconds by postgrey-1.36 at bilbo;
 Thu, 06 Jun 2019 18:03:49 AEST
Received: from smtp26.renault.fr (smtp26.renault.fr [193.194.133.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 45KJ8541HYzDqVP
 for <linuxppc-users@lists.ozlabs.org>; Thu,  6 Jun 2019 18:03:48 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=renault.com; i=@renault.com; q=dns/txt;
 s=dkim-renault-com; t=1559808230; x=1591344230;
 h=from:to:subject:date:message-id:mime-version;
 bh=YR0+tvwPg1lmRV0PujZfrwNC0emwKg6uNFok1uBJjjo=;
 b=jMBR3ZQEJXm2ftmZHXmTb3BEWAUtqhBgKGr99FUQFawzyaylE2pc4UiQ
 oWHNOHxUHNdsB3ZjzbwSDKzLi7Z4HH868oV4kKoCMq6ij1qepivk+q+sz
 sqsa+jIeRFZ+XQ812ZGB+q32EMJrwhCkgxmbdFx5PFZ1KQ5ZgEVKLB460 8=;
X-IronPort-AV: E=Sophos;i="5.63,558,1557180000"; 
 d="scan'208,217";a="400265496"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=grouperenault.onmicrosoft.com; s=selector2-grouperenault-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L+pWxKhbsHvDAbnHmmGEqIINESYxjWtLQ/6lms4CpUk=;
 b=WvFPIxvM3v3cC+KoLqxoFx4OLA79Dn6X408WjkehRMEhECUB+ycIPathCtXg4lBYNquVUM9Yq4iG6OtqKU1cX2TFHbBkNsCj6/asVblUUgGIPrG9whU9k9lbOchWpX3RR9D2QOKIfIUlpH+QAwGsAEmCNhZg5BO3hou7TKNPjqI=
From: "GOSSELIN Sacha (renexter)" <sacha.gosselin-extern@renault.com>
To: "linuxppc-users@lists.ozlabs.org" <linuxppc-users@lists.ozlabs.org>
Thread-Topic: Redhat 8 on Power9 certification - SAP HANA
Thread-Index: AdUcPimYUDjPFpfJR6SQvgELhrBshg==
Date: Thu, 6 Jun 2019 08:02:21 +0000
Message-ID: <AM6PR05MB4150FEB18E045FF54F7516A5AD170@AM6PR05MB4150.eurprd05.prod.outlook.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [138.21.12.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 984a8170-946c-40ee-26ab-08d6ea554df4
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM6PR05MB5975; 
x-ms-traffictypediagnostic: AM6PR05MB5975:
x-microsoft-antispam-prvs: <AM6PR05MB5975B21C5618F78E7A6DA941AD170@AM6PR05MB5975.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(376002)(366004)(396003)(346002)(136003)(189003)(199004)(486006)(99286004)(186003)(2351001)(6436002)(14454004)(7696005)(68736007)(86362001)(74316002)(2501003)(33656002)(476003)(102836004)(26005)(71190400001)(256004)(71200400001)(6506007)(66066001)(3846002)(790700001)(6116002)(25786009)(316002)(52536014)(6916009)(8676002)(5660300002)(9686003)(55016002)(4744005)(7736002)(5640700003)(6306002)(54896002)(73956011)(66946007)(478600001)(2906002)(76116006)(8936002)(53936002)(64756008)(66476007)(66446008)(81156014)(81166006)(66556008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR05MB5975;
 H:AM6PR05MB4150.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mlj3I1LRAKVIpZpVOrhrbY3ARL0svTMi1CDomxlBvxGbHOGjUPk0MlV1jEMpw24lZ6Bn+C1u9Auhi3KXQUVh/qM1oXPogfckyqT48+jGggACCTg+BHOzjKBcOfoF2V+csz34jifZDZtQgyJAvL9sQM5JYEsyCRKbuNNq/HGLx4CgPeIWJJxkrxOUC4K8ZAHAmyO+tKNh8qT/RSd+yH8/fdI8THC5WpSQtCcXEGbSJ1gwlYKR6fQ3643Tya96AL37EXOvvGRY+G0d86+MMvyX91Tvhy1zS7vNT1tE0a0xk/bhllQhcmb/7Yiyn7hOH88AujKKkgyECrBlICi0RdNvr/ZClS37dbtaRVjkUeSQRIlEaBPKVbvDfPNOoXQJtn7bi9YFblfckFhAdhIQ0SOQNqaRqIkTW4sguTBCoWFB088=
MIME-Version: 1.0
X-OriginatorOrg: renault.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 984a8170-946c-40ee-26ab-08d6ea554df4
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 08:02:21.9320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d6b0bbee-7cd9-4d60-bce6-4a67b543e2ae
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sacha.gosselin-extern@renault.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5975
Subject: [Linuxppc-users] Redhat 8 on Power9 certification - SAP HANA
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
Content-Type: multipart/mixed; boundary="===============5395002488998159584=="
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

--===============5395002488998159584==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AM6PR05MB4150FEB18E045FF54F7516A5AD170AM6PR05MB4150eurp_"

--_000_AM6PR05MB4150FEB18E045FF54F7516A5AD170AM6PR05MB4150eurp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hello,

I'm SAP HANA Technical Consultant and I'm looking for roadmap or informatio=
n about Redhat8 certification on Power9.

Of course, it's in SAP HANA perimeter and I asked to SAP but they have no i=
dea about the schedule or if it is scheduled.. I don't  understand.

The problem is that no Redhat version is supported on Power9, only SLES.

So if you have any information about Redhat on Power 9, it's welcome

Thanks a lot,

Regards,
Sacha Gosselin

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

--_000_AM6PR05MB4150FEB18E045FF54F7516A5AD170AM6PR05MB4150eurp_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m SAP HANA Technical Co=
nsultant and I&#8217;m looking for roadmap or information about Redhat8 cer=
tification on Power9.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Of course, it&#8217;s in SAP HA=
NA perimeter and I asked to SAP but they have no idea about the schedule or=
 if it is scheduled.. I don&#8217;t &nbsp;understand.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The problem is that no Redhat v=
ersion is supported on Power9, only SLES.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So if you have any information =
about Redhat on Power 9, it&#8217;s welcome<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks a lot,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sacha Gosselin<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<p>-- Disclaimer ------------------------------------ <br>
Ce message ainsi que les eventuelles pieces jointes constituent une corresp=
ondance privee et confidentielle a l'attention exclusive du destinataire de=
signe ci-dessus. Si vous n'etes pas le destinataire du present message ou u=
ne personne susceptible de pouvoir le lui delivrer, il vous est signifie qu=
e toute divulgation, distribution ou copie de cette transmission est strict=
ement interdite. Si vous avez recu ce message par erreur, nous vous remerci=
ons d'en informer l'expediteur par telephone ou de lui retourner le present=
 message, puis d'effacer immediatement ce message de votre systeme.</p>

<p>*** This e-mail and any attachments is a confidential correspondence int=
ended only for use of the individual or entity named above. If you are not =
the intended recipient or the agent responsible for delivering the message =
to the intended recipient, you are hereby notified that any disclosure, dis=
tribution or copying of this communication is strictly prohibited. If you h=
ave received this communication in error, please notify the sender by phone=
 or by replying this message, and then delete this message from your system=
.</p></body>
</html>

--_000_AM6PR05MB4150FEB18E045FF54F7516A5AD170AM6PR05MB4150eurp_--


--===============5395002488998159584==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users

--===============5395002488998159584==--

