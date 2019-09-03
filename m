Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6E6A6DBC
	for <lists+linuxppc-users@lfdr.de>; Tue,  3 Sep 2019 18:15:10 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46NBqv61r3zDqtZ
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 02:15:07 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=us.ibm.com
 (client-ip=148.163.156.1; helo=mx0a-001b2d01.pphosted.com;
 envelope-from=mnellen@us.ibm.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=us.ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 46NBfG3lQzzDql2
 for <linuxppc-users@lists.ozlabs.org>; Wed,  4 Sep 2019 02:06:39 +1000 (AEST)
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x83FvKQN025717
 for <linuxppc-users@lists.ozlabs.org>; Tue, 3 Sep 2019 12:06:37 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com
 [192.155.248.93])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2usu0bs3cs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Tue, 03 Sep 2019 12:06:36 -0400
Received: from localhost
 by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
 for <linuxppc-users@lists.ozlabs.org> from <mnellen@us.ibm.com>;
 Tue, 3 Sep 2019 16:06:35 -0000
Received: from us1a3-smtp07.a3.dal06.isc4sb.com (10.146.103.14)
 by smtp.notes.na.collabserv.com (10.106.227.39) with
 smtp.notes.na.collabserv.com ESMTP; Tue, 3 Sep 2019 16:06:31 -0000
Received: from us1a3-mail29.a3.dal06.isc4sb.com ([10.146.77.233])
 by us1a3-smtp07.a3.dal06.isc4sb.com
 with ESMTP id 2019090316063048-731661 ;
 Tue, 3 Sep 2019 16:06:30 +0000 
In-Reply-To: <OF1DAD104A.0728C4AC-ON0025846A.00502AEE-1567521338935@notes.na.collabserv.com>
From: "Mark Nellen" <mnellen@us.ibm.com>
To: "Ahmed Amer" <ahmed.amer@ae.ibm.com>
Date: Tue, 3 Sep 2019 16:06:30 +0000
Sensitivity: 
References: <OF1DAD104A.0728C4AC-ON0025846A.00502AEE-1567521338935@notes.na.collabserv.com>
Importance: Normal
X-Priority: 3 (Normal)
X-Mailer: IBM Verse Build 17652-1619 | IBM Domino Build
 SCN1812108_20180501T0841_FP57 August 05, 2019 at 12:42
X-LLNOutbound: False
X-Disclaimed: 1927
X-TNEFEvaluated: 1
x-cbid: 19090316-8889-0000-0000-0000004FE4C5
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.394815; ST=0; TS=0; UL=0; ISC=; MB=0.000010
X-IBM-SpamModules-Versions: BY=3.00011710; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01256174; UDB=6.00663694; IPR=6.01037842; 
 MB=3.00028453; MTD=3.00000008; XFM=3.00000015; UTC=2019-09-03 16:06:34
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2019-09-03 12:06:18 - 6.00010364
x-cbparentid: 19090316-8890-0000-0000-00000075FDFF
Message-Id: <OFAF2370E8.4E8E8CD9-ON0025846A.00585224-0025846A.00587CBB@notes.na.collabserv.com>
X-Proofpoint-UnRewURL: 3 URL's were un-rewritten
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
Cc: Yasal Akgun <YASAL@tr.ibm.com>, linuxppc-users@lists.ozlabs.org,
 Amit Dave <ADave@ae.ibm.com>
Content-Type: multipart/mixed; boundary="===============1835277120469132319=="
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

--===============1835277120469132319==
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"socmaildefaultfont" style=3D"font-family:Arial, Helvetica, sa=
ns-serif;font-size:10pt" dir=3D"ltr" ><div dir=3D"ltr" >See this competitiv=
e deck.&nbsp; Might have what you want.&nbsp; Slides 13/14 are most recent.=
&nbsp; Slide 63,67,68 are p8 but good to show that we have a history of goo=
d performance and investment.&nbsp; Slides are EnterpriseDB but Postgres wo=
uld being very similar.
<table>        <tbody>                <tr>                        <td><span=
 class=3D"left" style=3D"font-size: 10pt; font-family: Arial; color: rgb(0,=
 0, 0);" ><span style=3D"color: rgb(0, 0, 255); font-style: normal;" ><b><a=
 href=3D"https://ibm.box.com/s/6jcdnp08zg6ixtkhra7fgh663mnp6uy1">https://ib=
m.box.com/s/6jcdnp08zg6ixtkhra7fgh663mnp6uy1</a></b></span></span></td>    =
            </tr>        </tbody></table></div>
<div dir=3D"ltr" >Please advise if have questions.</div>
<div dir=3D"ltr" ><br>Mark Nellen<br>Program Manager, ISV Benchmark and Per=
formance<br>IBM STG ISV Business Strategy &amp; Enablement<br>t/l: 912-9870=
 (720) 430-9870<br>FAX: (720) 430-9870, Cell: 503-515-5102<br>1385 NW Amber=
glen Parkway<br>Hillsboro, OR 97006</div>
<div dir=3D"ltr" >&nbsp;</div>
<div dir=3D"ltr" >&nbsp;</div>
<blockquote style=3D"border-left:solid #aaaaaa 2px; margin-left:5px; paddin=
g-left:5px; direction:ltr; margin-right:0px" dir=3D"ltr" data-history-conte=
nt-modified=3D"1" >----- Original message -----<br>From: "Ahmed Amer" &lt;a=
hmed.amer@ae.ibm.com&gt;<br>Sent by: "Linuxppc-users" &lt;linuxppc-users-bo=
unces+mnellen=3Dus.ibm.com@lists.ozlabs.org&gt;<br>To: "Yasal Akgun" &lt;YA=
SAL@tr.ibm.com&gt;<br>Cc: linuxppc-users@lists.ozlabs.org, Amit Dave &lt;AD=
ave@ae.ibm.com&gt;<br>Subject: [EXTERNAL] Re: [Linuxppc-users] PostgreSQL s=
upport on IBM Power Systems<br>Date: Tue, Sep 3, 2019 7:44 AM<br>&nbsp;
<p dir=3D"ltr" ><font style=3D"white-space:pre-wrap;font-family: Helvetica =
Neue, Helvetica, Arial, sans-serif;margin: 1em 0;" >Hey Yasal ,<br>Yes ,we =
have a one for a client in MEA.<br>Lets sametime to talk tomorrow for furth=
er clarification.<br><br>Ahmer Amer<br>00971562160827<br><a href=3D"mailto:=
ahmed.amer@ae.ibm.com" target=3D"_blank">ahmed.amer@ae.ibm.com</a><br>IBM S=
ystems<br><br>Sent from IBM Verse</font></p><br><br>&nbsp;
<div dir=3D"ltr" ><div><span><font color=3D"#424282" >Yasal Akgun --- [EXTE=
RNAL] [Linuxppc-users] PostgreSQL support on IBM Power Systems --- </font><=
/span></div>
<div>&nbsp;
<table width=3D"100%" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" >   =
     <tbody>                <tr valign=3D"top" >                        <td=
 width=3D"1%" style=3D"width: 96px;" ><font color=3D"#5f5f5f" size=3D"2" >F=
rom:</font></td>                        <td width=3D"100%" style=3D"width: =
auto;" ><font size=3D"2" >"Yasal Akgun" &lt;YASAL@tr.ibm.com&gt;</font></td=
>                </tr>                <tr valign=3D"top" >                 =
       <td width=3D"1%" style=3D"width: 96px;" ><font color=3D"#5f5f5f" siz=
e=3D"2" >To:</font></td>                        <td width=3D"100%" style=3D=
"width: auto;" ><font size=3D"2" >linuxppc-users@lists.ozlabs.org</font></t=
d>                </tr>                <tr valign=3D"top" >                =
        <td width=3D"1%" style=3D"width: 96px;" ><font color=3D"#5f5f5f" si=
ze=3D"2" >Cc:</font></td>                        <td width=3D"100%" style=
=3D"width: auto;" ><font size=3D"2" >"Amit Dave" &lt;ADave@ae.ibm.com&gt;</=
font></td>                </tr>                <tr valign=3D"top" >        =
                <td width=3D"1%" style=3D"width: 96px;" ><font color=3D"#5f=
5f5f" size=3D"2" >Date:</font></td>                        <td width=3D"100=
%" style=3D"width: auto;" ><font size=3D"2" >Tue, Sep 3, 2019 6:28 PM</font=
></td>                </tr>                <tr valign=3D"top" >            =
            <td width=3D"1%" style=3D"width: 96px;" ><font color=3D"#5f5f5f=
" size=3D"2" >Subject:</font></td>                        <td width=3D"100%=
" style=3D"width: auto;" ><font size=3D"2" >[EXTERNAL] [Linuxppc-users] Pos=
tgreSQL support on IBM Power Systems</font></td>                </tr>      =
  </tbody></table>
<hr width=3D"100%" size=3D"2" align=3D"left" style=3D"color:#8091A5; " ></d=
iv>
<p><font size=3D"2" >Hi,</font><br><br>Do you have references for postgresq=
l running on Power (LPAR or full-dedicated)?<br><br><br><font size=3D"2" >Y=
asal Akg=C3=BCn</font><br><br><font size=3D"2" >Technical Sales &amp; Consu=
ltant for Power &amp; Cognitive Systems<br>Systems, IBM Turkey</font><br><b=
r><font size=3D"2" >Mobile-1 : 90 555 517 5533<br>Mobile-2 : 90 549 455 482=
2<br>Work : 90 312 455 4822<br>yasal@tr.ibm.com</font><br>&nbsp;</p>
<div><font face=3D"Default Monospace,Courier New,Courier,monospace" size=3D=
"2" >_______________________________________________<br>Linuxppc-users mail=
ing list<br>Linuxppc-users@lists.ozlabs.org<br><a href=3D"https://lists.ozl=
abs.org/listinfo/linuxppc-users" target=3D"_blank">https://lists.ozlabs.org=
/listinfo/linuxppc-users</a>&nbsp;</font></div></div></blockquote>
<div dir=3D"ltr" >&nbsp;</div></div><BR>


--===============1835277120469132319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users

--===============1835277120469132319==--
