Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CBFA85EC
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 17:06:44 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46NnGS1tx2zDqPj
	for <lists+linuxppc-users@lfdr.de>; Thu,  5 Sep 2019 01:06:40 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=tr.ibm.com
 (client-ip=148.163.158.5; helo=mx0a-001b2d01.pphosted.com;
 envelope-from=yasal@tr.ibm.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=tr.ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 46NBGN04kCzDqQV
 for <linuxppc-users@lists.ozlabs.org>; Wed,  4 Sep 2019 01:49:30 +1000 (AEST)
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x83FmIeF039823
 for <linuxppc-users@lists.ozlabs.org>; Tue, 3 Sep 2019 11:49:25 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com
 [192.155.248.75])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2usu0brbgb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Tue, 03 Sep 2019 11:49:25 -0400
Received: from localhost
 by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
 for <linuxppc-users@lists.ozlabs.org> from <YASAL@tr.ibm.com>;
 Tue, 3 Sep 2019 15:49:24 -0000
Received: from us1a3-smtp01.a3.dal06.isc4sb.com (10.106.154.95)
 by smtp.notes.na.collabserv.com (10.106.227.123) with
 smtp.notes.na.collabserv.com ESMTP; Tue, 3 Sep 2019 15:49:22 -0000
Received: from us1a3-mail258.a3.dal06.isc4sb.com ([10.146.127.170])
 by us1a3-smtp01.a3.dal06.isc4sb.com
 with ESMTP id 2019090315492140-749451 ;
 Tue, 3 Sep 2019 15:49:21 +0000 
In-Reply-To: <OFFDCA2225.5105CBCA-ON0025846A.004FD194-0025846A.004FD2B5@LocalDomain>
Date: Tue, 3 Sep 2019 15:49:21 +0000
To: "Thibaud Besson" <thibaud.besson@fr.ibm.com>
From: "Yasal Akgun" <YASAL@tr.ibm.com>
X-Mailer: IBM Traveler 10.0.1.1 Build 201906031703_20 on behalf of device with
 id 71U...QV0, type 455 (ios) and description iPhone 6
 Plus:Apple-iPhone7C1/1607.77 (OS 12)
X-KeepSent: 3A4ED148:AC162D07-0025846A:0056EA90;
 type=4; name=$KeepSent
X-LLNOutbound: False
X-Disclaimed: 2783
X-TNEFEvaluated: 1
x-cbid: 19090315-6875-0000-0000-00000044DA77
X-IBM-SpamModules-Scores: BY=0.285248; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.387138; ST=0; TS=0; UL=0; ISC=; MB=0.018893
X-IBM-SpamModules-Versions: BY=3.00011710; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01256169; UDB=6.00663690; IPR=6.01037836; 
 MB=3.00028453; MTD=3.00000008; XFM=3.00000015; UTC=2019-09-03 15:49:23
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2019-09-03 12:12:39 - 6.00010364
x-cbparentid: 19090315-6876-0000-0000-00000061EECA
Message-Id: <OF3A4ED148.AC162D07-ON0025846A.0056EA90-1567525761908@notes.na.collabserv.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-03_02:, , signatures=0
X-Proofpoint-Spam-Reason: safe
X-Mailman-Approved-At: Thu, 05 Sep 2019 01:05:39 +1000
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
Content-Type: multipart/mixed; boundary="===============5564632731061869655=="
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>


--===============5564632731061869655==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-71F0F731-EBD3-4E4D-B79D-05830DE615B1


--Apple-Mail-71F0F731-EBD3-4E4D-B79D-05830DE615B1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Linux, CentOS.


Thibaud Besson <thibaud.besson@fr.ibm.com> =C5=9Funlar=C4=B1 yazd=C4=B1 (3 =
Eyl 2019 17:31):

> AIX or Linux ?
> =20
> Cordialement, regards,
>=20
> Thibaud Besson
> Client Technical Specialist / IBM POWER Servers - AIX, Linux
> IBM Cognitive Systems
> Mobile: 33-(0)6 74 12 80 92=20
> E-mail: thibaud.besson@fr.ibm.com
> Find me on:  =20
>=20
>=20
> 17 Avenue De l'Europe, 92275 Bois Colombes Cedex
> France
>=20
> =20
> =20
> =20
> ----- Message d'origine -----
> De : "Yasal Akgun" <YASAL@tr.ibm.com>
> Envoy=C3=A9 par : "Linuxppc-users" <linuxppc-users-bounces+thibaud.besson=
=3Dfr.ibm.com@lists.ozlabs.org>
> A : linuxppc-users@lists.ozlabs.org
> Cc : Amit Dave <ADave@ae.ibm.com>
> Objet : [EXTERNAL] [Linuxppc-users] PostgreSQL support on IBM Power Syste=
ms
> Date : mar. 3 sept. 2019 16:30
> =20
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
>=20
> =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> Linuxppc-users mailing list
> Linuxppc-users@lists.ozlabs.org
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A=5F=5Flists.ozlabs.o=
rg=5Flistinfo=5Flinuxppc-2Dusers&d=3DDwICAg&c=3Djf=5FiaSHvJObTbx-siA1ZOg&r=
=3D8087mC0Z5q=5FlxHt2aqbBVNM5Tv2BcZYwrm0P0-tJcOw&m=3DXjN3lXddGYFtWM1VsbX=5F=
61Sxrg11G2soRrb=5FRAu29ug&s=3DdEAnoRx-rM6CFq0bigTd53vzHaUR5s3rDmARiWd0XqI&e=
=3D=20
> =20


--Apple-Mail-71F0F731-EBD3-4E4D-B79D-05830DE615B1
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-UnRewURL: 3 URL's were un-rewritten

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=3Dutf-8"></head><body dir=3D"auto">Linux, CentOS.<div><br><div dir=3D"ltr"=
><br>Thibaud Besson &lt;<a href=3D"mailto:thibaud.besson@fr.ibm.com">thibau=
d.besson@fr.ibm.com</a>&gt; =C5=9Funlar=C4=B1 yazd=C4=B1 (3 Eyl 2019 17:31)=
:<br><br></div><blockquote type=3D"cite"><div dir=3D"ltr"><div class=3D"soc=
maildefaultfont" dir=3D"ltr" style=3D"font-family:Arial, Helvetica, sans-se=
rif;font-size:10pt"><div dir=3D"ltr">AIX or Linux ?</div>
<div dir=3D"ltr">&nbsp;</div>
<div dir=3D"ltr"><div class=3D"socmaildefaultfont" dir=3D"ltr" style=3D"fon=
t-family:Arial, Helvetica, sans-serif;font-size:10pt"><div class=3D"socmail=
defaultfont" dir=3D"ltr" style=3D"font-family:Arial, Helvetica, sans-serif;=
font-size:10.5pt"><div class=3D"socmaildefaultfont" dir=3D"ltr" style=3D"fo=
nt-family:Arial, Helvetica, sans-serif;font-size:10.5pt"><div class=3D"socm=
aildefaultfont" dir=3D"ltr" style=3D"font-family:Arial, Helvetica, sans-ser=
if;font-size:10.5pt"><div class=3D"socmaildefaultfont" dir=3D"ltr" style=3D=
"font-family:Arial;font-size:10.5pt"><div dir=3D"ltr"><font size=3D"2" face=
=3D"Default Sans Serif,Verdana,Arial,Helvetica,sans-serif"><font style=3D"f=
ont-size: 8pt" size=3D"1" face=3D"arial, helvetica, sans-serif">Cordialemen=
t, regards,<br><br><font color=3D"#888888"><b>Thibaud Besson</b><br>Client =
Technical Specialist / IBM POWER Servers - AIX, Linux<br>IBM Cognitive Syst=
ems</font></font> </font>
<table width=3D"544" height=3D"90" cellspacing=3D"0" cellpadding=3D"0">    =
    <tbody>                <tr>                        <td width=3D"450" va=
lign=3D"TOP">                        <p><font size=3D"2" face=3D"Default Sa=
ns Serif,Verdana,Arial,Helvetica,sans-serif"><font style=3D"font-size: 8pt"=
 size=3D"1" face=3D"arial, helvetica, sans-serif"><font color=3D"#466bb0"><=
b>Mobile:</b></font> <font>33-(0)6 74 12 80 92 </font><br>                 =
       <font color=3D"#466bb0"><b>E-mail:</b></font> <a href=3D"mailto:thib=
aud.besson@fr.ibm.com" target=3D"_blank"><font color=3D"#5f5f5f">thibaud.be=
sson@fr.ibm.com</font></a><br>                        <font color=3D"#466bb=
0"><font><b>Find me on:</b></font></font> </font> <span style=3D"text-decor=
ation: none"> <a href=3D"http://www.linkedin.com/pub/thibaud-besson/2b/6b4/=
347" target=3D"_blank"><img name=3D"images1" src=3D"http://www.ibm.com/weba=
ccessories/emailsig/i/LinkedIn.jpg" width=3D"16" height=3D"16" border=3D"0"=
 align=3D"BOTTOM"></a>&nbsp; </span></font></p>                        </td=
>                        <td style=3D"width: 420px;">                      =
  <p style=3D"text-align: right;"><font size=3D"2" face=3D"Default Sans Ser=
if,Verdana,Arial,Helvetica,sans-serif"><img name=3D"images3" src=3D"http://=
www.ibm.com/webaccessories/emailsig/i/ibm2.gif" width=3D"87" height=3D"30" =
border=3D"0" align=3D"BOTTOM"><br>                        <font style=3D"fo=
nt-size: 8pt" size=3D"1" face=3D"arial, helvetica, sans-serif">17 Avenue De=
 l'Europe, 92275 Bois Colombes Cedex<br>                        France</fon=
t></font></p>                        </td>                        <td valig=
n=3D"TOP"><font size=3D"2" face=3D"Default Sans Serif,Verdana,Arial,Helveti=
ca,sans-serif">&nbsp;</font></td>                </tr>        </tbody></tab=
le><font size=3D"2" face=3D"Default Sans Serif,Verdana,Arial,Helvetica,sans=
-serif"> </font></div></div></div></div></div></div></div>
<div dir=3D"ltr">&nbsp;</div>
<div dir=3D"ltr">&nbsp;</div>
<blockquote data-history-content-modified=3D"1" dir=3D"ltr" style=3D"border=
-left:solid #aaaaaa 2px; margin-left:5px; padding-left:5px; direction:ltr; =
margin-right:0px">----- Message d'origine -----<br>De : "Yasal Akgun" &lt;<=
a href=3D"mailto:YASAL@tr.ibm.com">YASAL@tr.ibm.com</a>&gt;<br>Envoy=C3=A9 =
par : "Linuxppc-users" &lt;<a href=3D"mailto:linuxppc-users-bounces+thibaud=
.besson=3Dfr.ibm.com@lists.ozlabs.org">linuxppc-users-bounces+thibaud.besso=
n=3Dfr.ibm.com@lists.ozlabs.org</a>&gt;<br>A : <a href=3D"mailto:linuxppc-u=
sers@lists.ozlabs.org">linuxppc-users@lists.ozlabs.org</a><br>Cc : Amit Dav=
e &lt;<a href=3D"mailto:ADave@ae.ibm.com">ADave@ae.ibm.com</a>&gt;<br>Objet=
&nbsp;: [EXTERNAL] [Linuxppc-users] PostgreSQL support on IBM Power Systems=
<br>Date : mar. 3 sept. 2019 16:30<br>&nbsp;
<p><font size=3D"2">Hi,</font><br><br>Do you have references for postgresql=
 running on Power (LPAR or full-dedicated)?<br><br><br><font size=3D"2">Yas=
al Akg=C3=BCn</font><br><br><font size=3D"2">Technical Sales &amp; Consulta=
nt for Power &amp; Cognitive Systems<br>Systems, IBM Turkey</font><br><br><=
font size=3D"2">Mobile-1 : 90 555 517 5533<br>Mobile-2 : 90 549 455 4822<br=
>Work : 90 312 455 4822<br><a href=3D"mailto:yasal@tr.ibm.com">yasal@tr.ibm=
.com</a></font></p>
<div><font size=3D"2" face=3D"Default Monospace,Courier New,Courier,monospa=
ce">_______________________________________________<br>Linuxppc-users maili=
ng list<br><a href=3D"mailto:Linuxppc-users@lists.ozlabs.org">Linuxppc-user=
s@lists.ozlabs.org</a><br><a href=3D"https://lists.ozlabs.org/listinfo/linu=
xppc-users" target=3D"_blank">https://lists.ozlabs.org/listinfo/linuxppc-us=
ers</a>&nbsp;</font></div></blockquote>
<div dir=3D"ltr">&nbsp;</div></div></div></blockquote></div><BR>
</body></html>

--Apple-Mail-71F0F731-EBD3-4E4D-B79D-05830DE615B1--


--===============5564632731061869655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users

--===============5564632731061869655==--

