Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BF1148312
	for <lists+linuxppc-users@lfdr.de>; Fri, 24 Jan 2020 12:33:51 +0100 (CET)
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 483xqJ3zvszDqMr
	for <lists+linuxppc-users@lfdr.de>; Fri, 24 Jan 2020 22:33:48 +1100 (AEDT)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org; spf=pass (sender SPF authorized)
 smtp.mailfrom=cn.ibm.com (client-ip=148.163.156.1;
 helo=mx0a-001b2d01.pphosted.com; envelope-from=shenhnj@cn.ibm.com;
 receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=cn.ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 483xny3SJlzDqDc
 for <linuxppc-users@lists.ozlabs.org>; Fri, 24 Jan 2020 22:32:31 +1100 (AEDT)
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00OBW3gM104783
 for <linuxppc-users@lists.ozlabs.org>; Fri, 24 Jan 2020 06:32:29 -0500
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com
 [192.155.248.90])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2xqeefhmqm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Fri, 24 Jan 2020 06:32:29 -0500
Received: from localhost
 by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
 for <linuxppc-users@lists.ozlabs.org> from <shenhnj@cn.ibm.com>;
 Fri, 24 Jan 2020 11:32:27 -0000
Received: from us1a3-smtp08.a3.dal06.isc4sb.com (10.146.103.57)
 by smtp.notes.na.collabserv.com (10.106.227.141) with
 smtp.notes.na.collabserv.com ESMTP; Fri, 24 Jan 2020 11:32:24 -0000
Received: from us1a3-mail93.a3.dal06.isc4sb.com ([10.146.21.248])
 by us1a3-smtp08.a3.dal06.isc4sb.com
 with ESMTP id 2020012411322435-305935 ;
 Fri, 24 Jan 2020 11:32:24 +0000 
In-Reply-To: <E45C8694-B8AA-4CA0-8F2D-35A26424C2A1@tieto.com>
From: "Hui NJ Shen" <shenhnj@cn.ibm.com>
To: Tommi.Sihvo@tieto.com
Date: Fri, 24 Jan 2020 11:32:23 +0000
Sensitivity: 
References: <E45C8694-B8AA-4CA0-8F2D-35A26424C2A1@tieto.com>
Importance: Normal
X-Priority: 3 (Normal)
X-Mailer: IBM Verse Build 17652-1661 | IBM Domino Build
 SCN1812108_20180501T0841_FP62 November 04, 2019 at 09:47
X-LLNOutbound: False
X-Disclaimed: 49139
X-TNEFEvaluated: 1
x-cbid: 20012411-3649-0000-0000-000001FB4973
X-IBM-SpamModules-Scores: BY=0.145992; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.394815; ST=0; TS=0; UL=0; ISC=; MB=0.000000
X-IBM-SpamModules-Versions: BY=3.00012440; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000292; SDB=6.01323742; UDB=6.00704412; IPR=6.01106074; 
 MB=3.00030470; MTD=3.00000008; XFM=3.00000015; UTC=2020-01-24 11:32:26
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2020-01-24 08:04:31 - 6.00010923
x-cbparentid: 20012411-3650-0000-0000-00003DC3A176
Message-Id: <OF9CCBB87D.62AA1609-ON002584F9.003EE730-002584F9.003F63F6@notes.na.collabserv.com>
X-Proofpoint-UnRewURL: 21 URL's were un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-24_03:2020-01-24,
 2020-01-24 signatures=0
X-Proofpoint-Spam-Reason: safe
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
Cc: linuxppc-users@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============3961760451075142564=="
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

--===============3961760451075142564==
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"socmaildefaultfont" dir=3D"ltr" style=3D"font-family:Arial, H=
elvetica, sans-serif;font-size:10pt" ><div dir=3D"ltr" >hi, Tommi:</div>
<div dir=3D"ltr" >&nbsp;</div>
<div dir=3D"ltr" >&nbsp; I googled and found the below link. for your refer=
ence.</div>
<div dir=3D"ltr" >&nbsp;</div>
<div dir=3D"ltr" >&nbsp; you can download&nbsp;Shibboleth sp and try it .&n=
bsp;</div>
<div dir=3D"ltr" >&nbsp;</div>
<div dir=3D"ltr" >&nbsp; thanks !</div>
<div dir=3D"ltr" >&nbsp;</div>
<div dir=3D"ltr" >&nbsp;<a href=3D"https://rpmfind.net/linux/rpm2html/searc=
h.php?query=3Dshibboleth-sp">https://rpmfind.net/linux/rpm2html/search.php?=
query=3Dshibboleth-sp</a></div>
<div dir=3D"ltr" >&nbsp;</div>
<div dir=3D"ltr" >&nbsp;<a href=3D"http://rpmfind.net/linux/rpm2html/search=
.php?query=3Dshibboleth-sp-devel">http://rpmfind.net/linux/rpm2html/search.=
php?query=3Dshibboleth-sp-devel</a></div>
<div dir=3D"ltr" >&nbsp;</div>
<div dir=3D"ltr" >&nbsp;<a href=3D"https://download.opensuse.org/ports/upda=
te/leap/42.3/oss/ppc64le/shibboleth-sp-2.5.5-9.2.ppc64le.rpm.mirrorlist">ht=
tps://download.opensuse.org/ports/update/leap/42.3/oss/ppc64le/shibboleth-s=
p-2.5.5-9.2.ppc64le.rpm.mirrorlist</a></div>
<div dir=3D"ltr" >&nbsp;</div>
<div dir=3D"ltr" >&nbsp;<a href=3D"https://wiki.shibboleth.net/confluence/d=
isplay/SP3/LinuxBuild">https://wiki.shibboleth.net/confluence/display/SP3/L=
inuxBuild</a>&nbsp;</div>
<div dir=3D"ltr" >&nbsp;</div>
<blockquote data-history-content-modified=3D"1" dir=3D"ltr" style=3D"border=
-left:solid #aaaaaa 2px; margin-left:5px; padding-left:5px; direction:ltr; =
margin-right:0px" >----- Original message -----<br>From: &lt;Tommi.Sihvo@ti=
eto.com&gt;<br>Sent by: "Linuxppc-users" &lt;linuxppc-users-bounces+shenhnj=
=3Dcn.ibm.com@lists.ozlabs.org&gt;<br>To: &lt;linuxppc-users@lists.ozlabs.o=
rg&gt;<br>Cc:<br>Subject: [EXTERNAL] Re: [Linuxppc-users] Shibboleth for Li=
nux on Power?<br>Date: Fri, Jan 24, 2020 5:43 PM<br>&nbsp;
<div><font face=3D"Default Monospace,Courier New,Courier,monospace" size=3D=
"2" >Hi,<br><br>Anyone knowing anything about this ? __<br><br>Have a nice =
weekend!<br><br>Br,<br>tommi<br><br>Yst=C3=A4v=C3=A4llisin terveisin / Best=
 regards,<br><br>Tommi Sihvo, Lead Service Architect<br><br>TietoEVRY, Comp=
ute Services<br><br>=EF=BB=BFOn 21/01/2020, 9.38, "Linuxppc-users on behalf=
 of Tommi.Sihvo@tieto.com" &lt;linuxppc-users-bounces+tommi.sihvo=3Dtieto.c=
om@lists.ozlabs.org on behalf of Tommi.Sihvo@tieto.com&gt; wrote:<br><br>&n=
bsp;&nbsp; &nbsp;Hello &amp; awesome Year 2020 for everybody!<br>&nbsp;&nbs=
p; &nbsp;<br>&nbsp;&nbsp; &nbsp;Does anyone &nbsp;know if there exists Shib=
boleth package/rpm for Linux on Power? (preferably for RHEL 7 ppc64le)<br>&=
nbsp;&nbsp; &nbsp;<br>&nbsp;&nbsp; &nbsp;Some year back there was one packa=
ge on &lt;<a href=3D"https://software.opensuse.org/package/shibboleth-sp" t=
arget=3D"_blank">https://software.opensuse.org/package/shibboleth-sp</a>&nb=
sp;&gt;<br>&nbsp;&nbsp; &nbsp;(which was installable for RHEL too; ) ..but =
can't find it anymore...so what might the latest status be?<br>&nbsp;&nbsp;=
 &nbsp;<br>&nbsp;&nbsp; &nbsp;Br,<br>&nbsp;&nbsp; &nbsp;tommi<br>&nbsp;&nbs=
p; &nbsp;<br>&nbsp;&nbsp; &nbsp;<br>&nbsp;&nbsp; &nbsp;Yst=C3=A4v=C3=A4llis=
in terveisin / Best regards,<br>&nbsp;&nbsp; &nbsp;<br>&nbsp;&nbsp; &nbsp;T=
ommi Sihvo, Lead Service Architect<br>&nbsp;&nbsp; &nbsp;<br>&nbsp;&nbsp; &=
nbsp;TietoEVRY, Compute Services<br>&nbsp;&nbsp; &nbsp;email tommi.sihvo@ti=
eto.com &nbsp;mobile +358 (0)40 5180 646<br>&nbsp;&nbsp; &nbsp;Joukahaisenk=
atu 1, 5th floor<br>&nbsp;&nbsp; &nbsp;20520 TURKU<br>&nbsp;&nbsp; &nbsp;<b=
r>&nbsp;&nbsp; &nbsp;<br>&nbsp;&nbsp; &nbsp;<br>&nbsp;&nbsp; &nbsp;Tieto an=
d EVRY are joining forces.<br>&nbsp;&nbsp; &nbsp;<br>&nbsp;&nbsp; &nbsp;www=
.tietoevry.com &lt;<a href=3D"http://www.tietoevry.com" target=3D"_blank">h=
ttp://www.tietoevry.com</a>&nbsp;&gt;<br>&nbsp;&nbsp; &nbsp;<br>&nbsp;&nbsp=
; &nbsp;Twitter &lt;<a href=3D"https://twitter.com/tietoevry" target=3D"_bl=
ank">https://twitter.com/tietoevry</a>&nbsp;&gt; | Facebook &lt;<a href=3D"=
https://www.facebook.com/tietoevry/" target=3D"_blank">https://www.facebook=
.com/tietoevry/</a>&nbsp;&gt; | LinkedIn &lt;<a href=3D"https://www.linkedi=
n.com/company/tietoevry/" target=3D"_blank">https://www.linkedin.com/compan=
y/tietoevry/</a>&nbsp;&gt;<br>&nbsp;&nbsp; &nbsp;<br>&nbsp;&nbsp; &nbsp;Ple=
ase note: The information contained in this message may be legally privileg=
ed,<br>&nbsp;&nbsp; &nbsp;confidential and protected from disclosure. If yo=
u received this in error, please notify<br>&nbsp;&nbsp; &nbsp;the sender im=
mediately and delete the message from your computer. Thank you.<br>&nbsp;&n=
bsp; &nbsp;<br>&nbsp;&nbsp; &nbsp;<br>&nbsp;&nbsp; &nbsp;<br>&nbsp;&nbsp; &=
nbsp;_______________________________________________<br>&nbsp;&nbsp; &nbsp;=
Linuxppc-users mailing list<br>&nbsp;&nbsp; &nbsp;Linuxppc-users@lists.ozla=
bs.org<br>&nbsp;&nbsp; &nbsp;<a href=3D"https://lists.ozlabs.org/listinfo/l=
inuxppc-users" target=3D"_blank">https://lists.ozlabs.org/listinfo/linuxppc=
-users</a>&nbsp;<br>&nbsp;&nbsp; &nbsp;<br><br>____________________________=
___________________<br>Linuxppc-users mailing list<br>Linuxppc-users@lists.=
ozlabs.org<br><a href=3D"https://lists.ozlabs.org/listinfo/linuxppc-users" =
target=3D"_blank">https://lists.ozlabs.org/listinfo/linuxppc-users</a>&nbsp=
;</font><br>&nbsp;</div></blockquote>
<div dir=3D"ltr" >&nbsp;</div></div><BR>


--===============3961760451075142564==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users

--===============3961760451075142564==--
