Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D74A6C9B
	for <lists+linuxppc-users@lfdr.de>; Tue,  3 Sep 2019 17:12:13 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46N9RH2NCkzDqng
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 01:12:11 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=fr.ibm.com
 (client-ip=148.163.156.1; helo=mx0a-001b2d01.pphosted.com;
 envelope-from=thibaud.besson@fr.ibm.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=fr.ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 46N99S74qgzDqXD
 for <linuxppc-users@lists.ozlabs.org>; Wed,  4 Sep 2019 01:00:12 +1000 (AEST)
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x83ESfKn027507
 for <linuxppc-users@lists.ozlabs.org>; Tue, 3 Sep 2019 10:32:04 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com
 [158.85.210.114])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2usrsuuw72-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Tue, 03 Sep 2019 10:32:01 -0400
Received: from localhost
 by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
 for <linuxppc-users@lists.ozlabs.org> from <thibaud.besson@fr.ibm.com>;
 Tue, 3 Sep 2019 14:31:56 -0000
Received: from us1b3-smtp06.a3dr.sjc01.isc4sb.com (10.122.203.184)
 by smtp.notes.na.collabserv.com (10.122.47.58) with
 smtp.notes.na.collabserv.com ESMTP; Tue, 3 Sep 2019 14:31:53 -0000
Received: from us1b3-mail253.a3dr.sjc03.isc4sb.com ([10.160.11.182])
 by us1b3-smtp06.a3dr.sjc01.isc4sb.com
 with ESMTP id 2019090314315229-530627 ;
 Tue, 3 Sep 2019 14:31:52 +0000 
In-Reply-To: <OFAE7466DE.11482CBD-ON00258465.004651E8-43258465.00469545@notes.na.collabserv.com>
From: "Thibaud Besson" <thibaud.besson@fr.ibm.com>
To: "Yasal Akgun" <YASAL@tr.ibm.com>
Date: Tue, 3 Sep 2019 14:31:52 +0000
Sensitivity: 
References: <OFAE7466DE.11482CBD-ON00258465.004651E8-43258465.00469545@notes.na.collabserv.com>
Importance: Normal
X-Priority: 3 (Normal)
X-Mailer: IBM Verse Build 17652-1619 | IBM Domino Build
 SCN1812108_20180501T0841_FP57 August 05, 2019 at 12:42
X-KeepSent: FDCA2225:5105CBCA-0025846A:004FD194;
 type=4; name=$KeepSent
X-LLNOutbound: False
X-Disclaimed: 19647
X-TNEFEvaluated: 1
x-cbid: 19090314-1639-0000-0000-0000004F67D0
X-IBM-SpamModules-Scores: BY=0.208853; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.390428; ST=0; TS=0; UL=0; ISC=; MB=0.000003
X-IBM-SpamModules-Versions: BY=3.00011710; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01256143; UDB=6.00663675; IPR=6.01037810; 
 MB=3.00028452; MTD=3.00000008; XFM=3.00000015; UTC=2019-09-03 14:31:55
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2019-09-03 12:38:33 - 6.00010364
x-cbparentid: 19090314-1640-0000-0000-0000007E786A
Message-Id: <OFFDCA2225.5105CBCA-ON0025846A.004FD194-0025846A.004FD2B5@notes.na.collabserv.com>
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-03_02:, , signatures=0
X-Proofpoint-Spam-Reason: safe
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
Content-Type: multipart/mixed; boundary="===============6917490705770583241=="
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

--===============6917490705770583241==
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"socmaildefaultfont" dir=3D"ltr" style=3D"font-family:Arial, H=
elvetica, sans-serif;font-size:10pt" ><div dir=3D"ltr" >AIX or Linux ?</div>
<div dir=3D"ltr" >&nbsp;</div>
<div dir=3D"ltr" ><div class=3D"socmaildefaultfont" dir=3D"ltr" style=3D"fo=
nt-family:Arial, Helvetica, sans-serif;font-size:10pt" ><div class=3D"socma=
ildefaultfont" dir=3D"ltr" style=3D"font-family:Arial, Helvetica, sans-seri=
f;font-size:10.5pt" ><div class=3D"socmaildefaultfont" dir=3D"ltr" style=3D=
"font-family:Arial, Helvetica, sans-serif;font-size:10.5pt" ><div class=3D"=
socmaildefaultfont" dir=3D"ltr" style=3D"font-family:Arial, Helvetica, sans=
-serif;font-size:10.5pt" ><div class=3D"socmaildefaultfont" dir=3D"ltr" sty=
le=3D"font-family:Arial;font-size:10.5pt" ><div dir=3D"ltr" ><font size=3D"=
2" face=3D"Default Sans Serif,Verdana,Arial,Helvetica,sans-serif" ><font st=
yle=3D"font-size: 8pt" size=3D"1" face=3D"arial, helvetica, sans-serif" >Co=
rdialement, regards,<br><br><font color=3D"#888888" ><b>Thibaud Besson</b><=
br>Client Technical Specialist / IBM POWER Servers - AIX, Linux<br>IBM Cogn=
itive Systems</font></font> </font>
<table width=3D"544" height=3D"90" cellspacing=3D"0" cellpadding=3D"0" >   =
     <tbody>                <tr>                        <td width=3D"450" v=
align=3D"TOP" >                        <p><font size=3D"2" face=3D"Default =
Sans Serif,Verdana,Arial,Helvetica,sans-serif" ><font style=3D"font-size: 8=
pt" size=3D"1" face=3D"arial, helvetica, sans-serif" ><font color=3D"#466bb=
0" ><b>Mobile:</b></font> <font>33-(0)6 74 12 80 92 </font><br>            =
            <font color=3D"#466bb0" ><b>E-mail:</b></font> <a href=3D"mailt=
o:thibaud.besson@fr.ibm.com" target=3D"_blank"><font color=3D"#5f5f5f" >thi=
baud.besson@fr.ibm.com</font></a><br>                        <font color=3D=
"#466bb0" ><font><b>Find me on:</b></font></font> </font> <span style=3D"te=
xt-decoration: none" > <a href=3D"http://www.linkedin.com/pub/thibaud-besso=
n/2b/6b4/347" target=3D"_blank"><img name=3D"images1" src=3D"http://www.ibm=
.com/webaccessories/emailsig/i/LinkedIn.jpg" width=3D"16" height=3D"16" bor=
der=3D"0" align=3D"BOTTOM" ></a>&nbsp; </span></font></p>                  =
      </td>                        <td style=3D"width: 420px;" >           =
             <p style=3D"text-align: right;" ><font size=3D"2" face=3D"Defa=
ult Sans Serif,Verdana,Arial,Helvetica,sans-serif" ><img name=3D"images3" s=
rc=3D"http://www.ibm.com/webaccessories/emailsig/i/ibm2.gif" width=3D"87" h=
eight=3D"30" border=3D"0" align=3D"BOTTOM" ><br>                        <fo=
nt style=3D"font-size: 8pt" size=3D"1" face=3D"arial, helvetica, sans-serif=
" >17 Avenue De l'Europe, 92275 Bois Colombes Cedex<br>                    =
    France</font></font></p>                        </td>                  =
      <td valign=3D"TOP" ><font size=3D"2" face=3D"Default Sans Serif,Verda=
na,Arial,Helvetica,sans-serif" >&nbsp;</font></td>                </tr>    =
    </tbody></table><font size=3D"2" face=3D"Default Sans Serif,Verdana,Ari=
al,Helvetica,sans-serif" > </font></div></div></div></div></div></div></div>
<div dir=3D"ltr" >&nbsp;</div>
<div dir=3D"ltr" >&nbsp;</div>
<blockquote data-history-content-modified=3D"1" dir=3D"ltr" style=3D"border=
-left:solid #aaaaaa 2px; margin-left:5px; padding-left:5px; direction:ltr; =
margin-right:0px" >----- Message d'origine -----<br>De : "Yasal Akgun" &lt;=
YASAL@tr.ibm.com&gt;<br>Envoy=C3=A9 par : "Linuxppc-users" &lt;linuxppc-use=
rs-bounces+thibaud.besson=3Dfr.ibm.com@lists.ozlabs.org&gt;<br>A : linuxppc=
-users@lists.ozlabs.org<br>Cc : Amit Dave &lt;ADave@ae.ibm.com&gt;<br>Objet=
&nbsp;: [EXTERNAL] [Linuxppc-users] PostgreSQL support on IBM Power Systems=
<br>Date : mar. 3 sept. 2019 16:30<br>&nbsp;
<p><font size=3D"2" >Hi,</font><br><br>Do you have references for postgresq=
l running on Power (LPAR or full-dedicated)?<br><br><br><font size=3D"2" >Y=
asal Akg=C3=BCn</font><br><br><font size=3D"2" >Technical Sales &amp; Consu=
ltant for Power &amp; Cognitive Systems<br>Systems, IBM Turkey</font><br><b=
r><font size=3D"2" >Mobile-1 : 90 555 517 5533<br>Mobile-2 : 90 549 455 482=
2<br>Work : 90 312 455 4822<br>yasal@tr.ibm.com</font></p>
<div><font size=3D"2" face=3D"Default Monospace,Courier New,Courier,monospa=
ce" >_______________________________________________<br>Linuxppc-users mail=
ing list<br>Linuxppc-users@lists.ozlabs.org<br><a href=3D"https://lists.ozl=
abs.org/listinfo/linuxppc-users" target=3D"_blank">https://lists.ozlabs.org=
/listinfo/linuxppc-users</a>&nbsp;</font></div></blockquote>
<div dir=3D"ltr" >&nbsp;</div></div><BR>


--===============6917490705770583241==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users

--===============6917490705770583241==--
