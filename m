Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CEFA85F0
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 17:08:16 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46NnJF481qzDqyP
	for <lists+linuxppc-users@lfdr.de>; Thu,  5 Sep 2019 01:08:13 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=tr.ibm.com
 (client-ip=148.163.156.1; helo=mx0a-001b2d01.pphosted.com;
 envelope-from=yasal@tr.ibm.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=tr.ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 46NBHK3ZV8zDqWb
 for <linuxppc-users@lists.ozlabs.org>; Wed,  4 Sep 2019 01:50:21 +1000 (AEST)
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x83Flvr4069930
 for <linuxppc-users@lists.ozlabs.org>; Tue, 3 Sep 2019 11:50:17 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com
 [192.155.248.74])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2usu0bgd9g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Tue, 03 Sep 2019 11:50:17 -0400
Received: from localhost
 by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
 for <linuxppc-users@lists.ozlabs.org> from <YASAL@tr.ibm.com>;
 Tue, 3 Sep 2019 15:50:17 -0000
Received: from us1a3-smtp03.a3.dal06.isc4sb.com (10.106.154.98)
 by smtp.notes.na.collabserv.com (10.106.227.92) with
 smtp.notes.na.collabserv.com ESMTP; Tue, 3 Sep 2019 15:50:13 -0000
Received: from us1a3-mail258.a3.dal06.isc4sb.com ([10.146.127.170])
 by us1a3-smtp03.a3.dal06.isc4sb.com
 with ESMTP id 2019090315501337-740669 ;
 Tue, 3 Sep 2019 15:50:13 +0000 
In-Reply-To: <OF1DAD104A.0728C4AC-ON0025846A.00502AEE-1567521338935@LocalDomain>
Date: Tue, 3 Sep 2019 15:50:13 +0000
To: "Ahmed Amer" <ahmed.amer@ae.ibm.com>
From: "Yasal Akgun" <YASAL@tr.ibm.com>
MIME-Version: 1.0
X-Mailer: IBM Traveler 10.0.1.1 Build 201906031703_20 on behalf of device with
 id 71U...QV0, type 455 (ios) and description iPhone 6
 Plus:Apple-iPhone7C1/1607.77 (OS 12)
X-KeepSent: 6951FA81:2FB05CF8-0025846A:0056FEE4;
 type=4; name=$KeepSent
X-LLNOutbound: False
X-Disclaimed: 39835
X-TNEFEvaluated: 1
x-cbid: 19090315-3165-0000-0000-000000E0E8D7
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.371236; ST=0; TS=0; UL=0; ISC=; MB=0.043455
X-IBM-SpamModules-Versions: BY=3.00011710; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01256169; UDB=6.00663691; IPR=6.01037837; 
 MB=3.00028453; MTD=3.00000008; XFM=3.00000015; UTC=2019-09-03 15:50:15
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2019-09-03 12:27:49 - 6.00010364
x-cbparentid: 19090315-3166-0000-0000-00001C000390
Message-Id: <OF6951FA81.2FB05CF8-ON0025846A.0056FEE4-1567525813738@notes.na.collabserv.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-03_02:, , signatures=0
X-Proofpoint-Spam-Reason: safe
X-Mailman-Approved-At: Thu, 05 Sep 2019 01:05:40 +1000
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
Cc: linuxppc-users@lists.ozlabs.org, Amit Dave <ADave@ae.ibm.com>
Content-Type: multipart/mixed; boundary="===============3622241947653065935=="
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>


--===============3622241947653065935==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-E78B02EC-61EE-4F46-BCC5-FDFF5542A45C


--Apple-Mail-E78B02EC-61EE-4F46-BCC5-FDFF5542A45C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Ahmed,

Yes, lets=E2=80=99s sametime tomorrow.

Thanks a lot!

Yasal

Ahmed Amer <ahmed.amer@ae.ibm.com> =C5=9Funlar=C4=B1 yazd=C4=B1 (3 Eyl 2019=
 17:35):

> Hey Yasal ,
> Yes ,we have a one for a client in MEA.
> Lets sametime to talk tomorrow for further clarification.=20
>=20
> Ahmer Amer
> 00971562160827
> ahmed.amer@ae.ibm.com=20
> IBM Systems=20
>=20
> Sent from IBM Verse
>=20
>=20
>=20
>=20
> Yasal Akgun --- [EXTERNAL] [Linuxppc-users] PostgreSQL support on IBM Pow=
er Systems ---
>=20
> From:	"Yasal Akgun" <YASAL@tr.ibm.com>
> To:	linuxppc-users@lists.ozlabs.org
> Cc:	"Amit Dave" <ADave@ae.ibm.com>
> Date:	Tue, Sep 3, 2019 6:28 PM
> Subject:	[EXTERNAL] [Linuxppc-users] PostgreSQL support on IBM Power Syst=
ems
>=20
> Hi,
>=20
> Do you have references for postgresql running on Power (LPAR or full-dedi=
cated)?
>=20
>=20
> Yasal Akg=C3=BCn
>=20
> Technical Sales & Consultant for Power & Cognitive Systems
> Systems, IBM Turkey
>=20
> Mobile-1 : 90 555 517 5533
> Mobile-2 : 90 549 455 4822
> Work : 90 312 455 4822
> yasal@tr.ibm.com


--Apple-Mail-E78B02EC-61EE-4F46-BCC5-FDFF5542A45C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=3Dutf-8"></head><body dir=3D"auto">Hi Ahmed,<div><br></div><div>Yes, lets=
=E2=80=99s sametime tomorrow.</div><div><br></div><div>Thanks a lot!</div><=
div><br></div><div>Yasal</div><div><div dir=3D"ltr"><br>Ahmed Amer &lt;<a h=
ref=3D"mailto:ahmed.amer@ae.ibm.com">ahmed.amer@ae.ibm.com</a>&gt; =C5=9Fun=
lar=C4=B1 yazd=C4=B1 (3 Eyl 2019 17:35):<br><br></div><blockquote type=3D"c=
ite"><div dir=3D"ltr"><font style=3D"white-space:pre-wrap;font-family: Helv=
etica Neue, Helvetica, Arial, sans-serif;margin: 1em 0;"><p dir=3D"ltr">Hey=
 Yasal ,<br>Yes ,we have a one for a client in MEA.<br>Lets sametime to tal=
k tomorrow for further clarification. <br><br>Ahmer Amer<br>00971562160827<=
br><a href=3D"mailto:ahmed.amer@ae.ibm.com">ahmed.amer@ae.ibm.com</a> <br>I=
BM Systems <br><br>Sent from IBM Verse</p><br></font><br><br><div class=3D"=
domino-section" dir=3D"ltr"><div class=3D"domino-section-head"><span class=
=3D"domino-section-title"><font color=3D"#424282">Yasal Akgun --- [EXTERNAL=
] [Linuxppc-users] PostgreSQL support on IBM Power Systems --- </font></spa=
n></div><div class=3D"domino-section-body"><br><table width=3D"100%" border=
=3D"0" cellspacing=3D"0" cellpadding=3D"0"><tbody><tr valign=3D"top"><td wi=
dth=3D"1%" style=3D"width: 96px;"><font size=3D"2" color=3D"#5F5F5F">From:<=
/font></td><td width=3D"100%" style=3D"width: auto;"><font size=3D"2">"Yasa=
l Akgun" &lt;<a href=3D"mailto:YASAL@tr.ibm.com">YASAL@tr.ibm.com</a>&gt;</=
font></td></tr><tr valign=3D"top"><td width=3D"1%" style=3D"width: 96px;"><=
font size=3D"2" color=3D"#5F5F5F">To:</font></td><td width=3D"100%" style=
=3D"width: auto;"><font size=3D"2"><a href=3D"mailto:linuxppc-users@lists.o=
zlabs.org">linuxppc-users@lists.ozlabs.org</a></font></td></tr><tr valign=
=3D"top"><td width=3D"1%" style=3D"width: 96px;"><font size=3D"2" color=3D"=
#5F5F5F">Cc:</font></td><td width=3D"100%" style=3D"width: auto;"><font siz=
e=3D"2">"Amit Dave" &lt;<a href=3D"mailto:ADave@ae.ibm.com">ADave@ae.ibm.co=
m</a>&gt;</font></td></tr><tr valign=3D"top"><td width=3D"1%" style=3D"widt=
h: 96px;"><font size=3D"2" color=3D"#5F5F5F">Date:</font></td><td width=3D"=
100%" style=3D"width: auto;"><font size=3D"2">Tue, Sep 3, 2019 6:28 PM</fon=
t></td></tr><tr valign=3D"top"><td width=3D"1%" style=3D"width: 96px;"><fon=
t size=3D"2" color=3D"#5F5F5F">Subject:</font></td><td width=3D"100%" style=
=3D"width: auto;"><font size=3D"2">[EXTERNAL] [Linuxppc-users] PostgreSQL s=
upport on IBM Power Systems</font></td></tr></tbody></table><hr width=3D"10=
0%" size=3D"2" align=3D"left" noshade=3D"" style=3D"color:#8091A5; "><br></=
div><p><font size=3D"2">Hi,</font><br><br>Do you have references for postgr=
esql running on Power (LPAR or full-dedicated)?<br><br><br><font size=3D"2"=
>Yasal Akg=C3=BCn</font><br><font size=3D"2"><br>Technical Sales &amp; Cons=
ultant for Power &amp; Cognitive Systems<br>Systems, IBM Turkey</font><br><=
br><font size=3D"2">Mobile-1 : 90 555 517 5533<br>Mobile-2 : 90 549 455 482=
2<br>Work : 90 312 455 4822<br><a href=3D"mailto:yasal@tr.ibm.com">yasal@tr=
.ibm.com</a></font><br>
</p></div></div></blockquote></div><BR>
</body></html>

--Apple-Mail-E78B02EC-61EE-4F46-BCC5-FDFF5542A45C--


--===============3622241947653065935==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users

--===============3622241947653065935==--

