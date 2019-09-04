Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CB590A85F4
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 17:09:24 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46NnKX1qKNzDr0P
	for <lists+linuxppc-users@lfdr.de>; Thu,  5 Sep 2019 01:09:20 +1000 (AEST)
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
 by lists.ozlabs.org (Postfix) with ESMTPS id 46Nb8L0Vq6zDqWK
 for <linuxppc-users@lists.ozlabs.org>; Wed,  4 Sep 2019 17:30:40 +1000 (AEST)
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x847TD7l000800
 for <linuxppc-users@lists.ozlabs.org>; Wed, 4 Sep 2019 03:30:37 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com
 [192.155.248.93])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2usu1767ew-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Wed, 04 Sep 2019 03:30:36 -0400
Received: from localhost
 by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
 for <linuxppc-users@lists.ozlabs.org> from <YASAL@tr.ibm.com>;
 Wed, 4 Sep 2019 07:30:35 -0000
Received: from us1a3-smtp08.a3.dal06.isc4sb.com (10.146.103.57)
 by smtp.notes.na.collabserv.com (10.106.227.39) with
 smtp.notes.na.collabserv.com ESMTP; Wed, 4 Sep 2019 07:30:32 -0000
Received: from us1a3-mail258.a3.dal06.isc4sb.com ([10.146.127.170])
 by us1a3-smtp08.a3.dal06.isc4sb.com
 with ESMTP id 2019090407303172-136930 ;
 Wed, 4 Sep 2019 07:30:31 +0000 
In-Reply-To: <OFAF2370E8.4E8E8CD9-ON0025846A.00585224-0025846A.00587CBB@LocalDomain>
To: "Mark Nellen" <mnellen@us.ibm.com>
From: "Yasal Akgun" <YASAL@tr.ibm.com>
Date: Wed, 4 Sep 2019 10:30:31 +0300
References: <OF1DAD104A.0728C4AC-ON0025846A.00502AEE-1567521338935@notes.na.collabserv.com>
 <OFAF2370E8.4E8E8CD9-ON0025846A.00585224-0025846A.00587CBB@LocalDomain>
X-KeepSent: 891EF77D:C991C5ED-0025846B:0028508D;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 10.0.1 November 29, 2018
X-LLNOutbound: False
X-Disclaimed: 30219
X-TNEFEvaluated: 1
x-cbid: 19090407-8889-0000-0000-000000517A56
X-IBM-SpamModules-Scores: BY=0.258988; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.49; ST=0; TS=0; UL=0; ISC=; MB=0.000003
X-IBM-SpamModules-Versions: BY=3.00011713; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01256471; UDB=6.00663879; IPR=6.01038150; 
 MB=3.00028464; MTD=3.00000008; XFM=3.00000015; UTC=2019-09-04 07:30:34
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2019-09-04 07:09:57 - 6.00010367
x-cbparentid: 19090407-8890-0000-0000-00000077BF56
Message-Id: <OF891EF77D.C991C5ED-ON0025846B.0028508D-4325846B.00293F02@notes.na.collabserv.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-04_01:, , signatures=0
X-Proofpoint-Spam-Reason: safe
X-Mailman-Approved-At: Thu, 05 Sep 2019 01:05:41 +1000
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
Cc: Amit Dave <ADave@ae.ibm.com>, linuxppc-users@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============7268892515690696724=="
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

--===============7268892515690696724==
Content-type: multipart/related; 
	Boundary="0__=8FBB0EF8DFBBD61D8f9e8a93df938690918c8FBB0EF8DFBBD61D"

--0__=8FBB0EF8DFBBD61D8f9e8a93df938690918c8FBB0EF8DFBBD61D
Content-type: multipart/alternative; 
	Boundary="1__=8FBB0EF8DFBBD61D8f9e8a93df938690918c8FBB0EF8DFBBD61D"


--1__=8FBB0EF8DFBBD61D8f9e8a93df938690918c8FBB0EF8DFBBD61D
Content-Transfer-Encoding: quoted-printable
Content-type: text/plain; charset=ISO-8859-1


Hi Mark,

Thank you for your reply.

We made several PoCs and the results are very good as mentioned in the
presentation shared.

What we are looking for is a reference for postgresql running on Power. EDB
is also OK.

Thanks

Yasal



From:	Mark Nellen/Beaverton/IBM
To:	Ahmed Amer/United Arab Emirates/IBM@IBMAE
Cc:	Amit Dave/United Arab Emirates/IBM@IBMAE,
            linuxppc-users@lists.ozlabs.org, Yasal Akgun/Turkey/IBM@IBMTR
Date:	03/09/2019 19:06
Subject:	Re: [EXTERNAL] Re: [Linuxppc-users] PostgreSQL support on IBM
            Power Systems



See this competitive deck.  Might have what you want.  Slides 13/14 are
most recent.  Slide 63,67,68 are p8 but good to show that we have a history
of good performance and investment.  Slides are EnterpriseDB but Postgres
would being very similar.
                                                       =20
 https://ibm.box.com/s/6jcdnp08zg6ixtkhra7fgh663mnp6uy1=20
                                                       =20

Please advise if have questions.

Mark Nellen
Program Manager, ISV Benchmark and Performance
IBM STG ISV Business Strategy & Enablement
t/l: 912-9870 (720) 430-9870
FAX: (720) 430-9870, Cell: 503-515-5102
1385 NW Amberglen Parkway
Hillsboro, OR 97006


 ----- Original message -----
 From: "Ahmed Amer" <ahmed.amer@ae.ibm.com>
 Sent by: "Linuxppc-users" <linuxppc-users-bounces
 +mnellen=3Dus.ibm.com@lists.ozlabs.org>
 To: "Yasal Akgun" <YASAL@tr.ibm.com>
 Cc: linuxppc-users@lists.ozlabs.org, Amit Dave <ADave@ae.ibm.com>
 Subject: [EXTERNAL] Re: [Linuxppc-users] PostgreSQL support on IBM Power
 Systems
 Date: Tue, Sep 3, 2019 7:44 AM



 Hey Yasal ,
 Yes ,we have a one for a client in MEA.
 Lets sametime to talk tomorrow for further clarification.

 Ahmer Amer
 00971562160827
 ahmed.amer@ae.ibm.com
 IBM Systems

 Sent from IBM Verse





 Yasal Akgun --- [EXTERNAL] [Linuxppc-users] PostgreSQL support on IBM
 Power Systems ---

                                                                           =

 From:   "Yasal Akgun" <YASAL@tr.ibm.com>                                  =

                                                                           =

 To:     linuxppc-users@lists.ozlabs.org                                   =

                                                                           =

 Cc:     "Amit Dave" <ADave@ae.ibm.com>                                    =

                                                                           =

 Date:   Tue, Sep 3, 2019 6:28 PM                                          =

                                                                           =

 Subject [EXTERNAL] [Linuxppc-users] PostgreSQL support on IBM Power       =

 :       Systems                                                           =

                                                                           =





 Hi,

 Do you have references for postgresql running on Power (LPAR or
 full-dedicated)?


 Yasal Akg=FCn

 Technical Sales & Consultant for Power & Cognitive Systems
 Systems, IBM Turkey

 Mobile-1 : 90 555 517 5533
 Mobile-2 : 90 549 455 4822
 Work : 90 312 455 4822
 yasal@tr.ibm.com



 =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
 Linuxppc-users mailing list
 Linuxppc-users@lists.ozlabs.org
 https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A=5F=5Flists.ozlabs.or=
g=5Flistinfo=5Flinuxppc-2Dusers&d=3DDwICAg&c=3Djf=5FiaSHvJObTbx-siA1ZOg&r=
=3DrrOjsawVEMMgzFKIgT-YxWkyXc3=5F9QN-cVM87slN9Vs&m=3DPjd2lQs=5F1UZ2uoPAy5ov=
lP4xUbbSZ1Q83NRBUeDfDM8&s=3DhSrPYw0db84Mrm-UFqxh0G=5FnujKMhB3eNlAlEjbJ1Yw&e=
=3D




--1__=8FBB0EF8DFBBD61D8f9e8a93df938690918c8FBB0EF8DFBBD61D
Content-type: text/html; charset=ISO-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-UnRewURL: 2 URL's were un-rewritten

<html><body><p><font size=3D"2">Hi Mark,</font><br><br><font size=3D"2">Tha=
nk you for your reply.</font><br><br><font size=3D"2">We made several PoCs =
and the results are very good as mentioned in the presentation shared.</fon=
t><br><br><font size=3D"2">What we are looking for is a reference </font><f=
ont size=3D"2">for postgresql running on Powe</font><font size=3D"2">r. EDB=
 is also OK.</font><br><br><font size=3D"2">Thanks</font><br><br><font size=
=3D"2">Yasal</font><br><br><img width=3D"16" height=3D"16" src=3D"cid:1__=
=3D8FBB0EF8DFBBD61D8f9e8a93df938690918c8FB@" border=3D"0" alt=3D"Inactive h=
ide details for Mark Nellen---03/09/2019 19:06:32---See this competitive de=
ck.  Might have what you want.  Slides 13/"><font size=3D"2" color=3D"#4242=
82">Mark Nellen---03/09/2019 19:06:32---See this competitive deck.  Might h=
ave what you want.  Slides 13/14 are most recent.  Slide 63,67,68</font><br=
><br><font size=3D"2" color=3D"#5F5F5F">From:        </font><font size=3D"2=
">Mark Nellen/Beaverton/IBM</font><br><font size=3D"2" color=3D"#5F5F5F">To=
:        </font><font size=3D"2">Ahmed Amer/United Arab Emirates/IBM@IBMAE<=
/font><br><font size=3D"2" color=3D"#5F5F5F">Cc:        </font><font size=
=3D"2">Amit Dave/United Arab Emirates/IBM@IBMAE, linuxppc-users@lists.ozlab=
s.org, Yasal Akgun/Turkey/IBM@IBMTR</font><br><font size=3D"2" color=3D"#5F=
5F5F">Date:        </font><font size=3D"2">03/09/2019 19:06</font><br><font=
 size=3D"2" color=3D"#5F5F5F">Subject:        </font><font size=3D"2">Re: [=
EXTERNAL] Re: [Linuxppc-users] PostgreSQL support on IBM Power Systems</fon=
t><br><hr width=3D"100%" size=3D"2" align=3D"left" noshade style=3D"color:#=
8091A5; "><br><br><br><font size=3D"2" face=3D"Arial">See this competitive =
deck.  Might have what you want.  Slides 13/14 are most recent.  Slide 63,6=
7,68 are p8 but good to show that we have a history of good performance and=
 investment.  Slides are EnterpriseDB but Postgres would being very similar=
. </font><table border=3D"0" cellspacing=3D"0" cellpadding=3D"0"><tr valign=
=3D"top"><td width=3D"338" valign=3D"middle"><a href=3D"https://ibm.box.com=
/s/6jcdnp08zg6ixtkhra7fgh663mnp6uy1"><b><u><font size=3D"2" color=3D"#0000F=
F" face=3D"Arial">https://ibm.box.com/s/6jcdnp08zg6ixtkhra7fgh663mnp6uy1</f=
ont></u></b></a></td></tr></table><font size=3D"2" face=3D"Arial">Please ad=
vise if have questions.</font><br><font size=3D"2" face=3D"Arial"><br>Mark =
Nellen<br>Program Manager, ISV Benchmark and Performance<br>IBM STG ISV Bus=
iness Strategy &amp; Enablement<br>t/l: 912-9870 (720) 430-9870<br>FAX: (72=
0) 430-9870, Cell: 503-515-5102<br>1385 NW Amberglen Parkway<br>Hillsboro, =
OR 97006</font><br><font size=3D"2" face=3D"Arial"> </font><br><font size=
=3D"2" face=3D"Arial"> </font><br><font size=3D"2" face=3D"Arial">----- Ori=
ginal message -----<br>From: &quot;Ahmed Amer&quot; &lt;ahmed.amer@ae.ibm.c=
om&gt;<br>Sent by: &quot;Linuxppc-users&quot; &lt;linuxppc-users-bounces+mn=
ellen=3Dus.ibm.com@lists.ozlabs.org&gt;<br>To: &quot;Yasal Akgun&quot; &lt;=
YASAL@tr.ibm.com&gt;<br>Cc: linuxppc-users@lists.ozlabs.org, Amit Dave &lt;=
ADave@ae.ibm.com&gt;<br>Subject: [EXTERNAL] Re: [Linuxppc-users] PostgreSQL=
 support on IBM Power Systems<br>Date: Tue, Sep 3, 2019 7:44 AM<br>  </font=
><p><font size=3D"2" face=3D"Helvetica Neue">Hey Yasal ,<br>Yes ,we have a =
one for a client in MEA.<br>Lets sametime to talk tomorrow for further clar=
ification.<br><br>Ahmer Amer<br>00971562160827</font><u><font size=3D"2" co=
lor=3D"#0000FF" face=3D"Helvetica Neue"><br></font></u><a href=3D"mailto:ah=
med.amer@ae.ibm.com" target=3D"_blank"><u><font size=3D"2" color=3D"#0000FF=
" face=3D"Helvetica Neue">ahmed.amer@ae.ibm.com</font></u></a><font size=3D=
"2" face=3D"Helvetica Neue"><br>IBM Systems<br><br>Sent from IBM Verse</fon=
t><p><font size=3D"2" face=3D"Arial"><br><br>  </font><br><font size=3D"2" =
color=3D"#424282" face=3D"Arial">Yasal Akgun --- [EXTERNAL] [Linuxppc-users=
] PostgreSQL support on IBM Power Systems --- </font><br><font size=3D"2" f=
ace=3D"Arial">  </font><table width=3D"100%" border=3D"0" cellspacing=3D"0"=
 cellpadding=3D"0"><tr valign=3D"top"><td width=3D"10%"><font size=3D"2" co=
lor=3D"#5F5F5F">From:</font></td><td width=3D"90%"><font size=3D"2">&quot;Y=
asal Akgun&quot; &lt;YASAL@tr.ibm.com&gt;</font></td></tr>
<tr valign=3D"top"><td width=3D"10%"><font size=3D"2" color=3D"#5F5F5F">To:=
</font></td><td width=3D"90%"><font size=3D"2">linuxppc-users@lists.ozlabs.=
org</font></td></tr>
<tr valign=3D"top"><td width=3D"10%"><font size=3D"2" color=3D"#5F5F5F">Cc:=
</font></td><td width=3D"90%"><font size=3D"2">&quot;Amit Dave&quot; &lt;AD=
ave@ae.ibm.com&gt;</font></td></tr>
<tr valign=3D"top"><td width=3D"10%"><font size=3D"2" color=3D"#5F5F5F">Dat=
e:</font></td><td width=3D"90%"><font size=3D"2">Tue, Sep 3, 2019 6:28 PM</=
font></td></tr>
<tr valign=3D"top"><td width=3D"10%"><font size=3D"2" color=3D"#5F5F5F">Sub=
ject:</font></td><td width=3D"90%"><font size=3D"2">[EXTERNAL] [Linuxppc-us=
ers] PostgreSQL support on IBM Power Systems</font></td></tr></table><hr wi=
dth=3D"100%" size=3D"2" align=3D"left"><p><font size=3D"2" face=3D"Arial">H=
i,<br><br>Do you have references for postgresql running on Power (LPAR or f=
ull-dedicated)?<br><br><br>Yasal Akg=FCn<br><br>Technical Sales &amp; Consu=
ltant for Power &amp; Cognitive Systems<br>Systems, IBM Turkey<br><br>Mobil=
e-1 : 90 555 517 5533<br>Mobile-2 : 90 549 455 4822<br>Work : 90 312 455 48=
22<br>yasal@tr.ibm.com<br> </font><p><tt><font size=3D"2">_________________=
______________________________<br>Linuxppc-users mailing list<br>Linuxppc-u=
sers@lists.ozlabs.org</font></tt><tt><u><font size=3D"2" color=3D"#0000FF">=
<br></font></u></tt><a href=3D"https://lists.ozlabs.org/listinfo/linuxppc-u=
sers" target=3D"_blank"><tt><u><font size=3D"2" color=3D"#0000FF">https://l=
ists.ozlabs.org/listinfo/linuxppc-users</font></u></tt></a><tt><font size=
=3D"2">&nbsp;</font></tt><br><font size=3D"2" face=3D"Arial"> </font><br><b=
r><BR>
</body></html>

--1__=8FBB0EF8DFBBD61D8f9e8a93df938690918c8FBB0EF8DFBBD61D--


--0__=8FBB0EF8DFBBD61D8f9e8a93df938690918c8FBB0EF8DFBBD61D
Content-type: image/gif; 
	name="graycol.gif"
Content-Disposition: inline; filename="graycol.gif"
Content-ID: <1__=8FBB0EF8DFBBD61D8f9e8a93df938690918c8FB@>
Content-Transfer-Encoding: base64

R0lGODlhEAAQAKECAMzMzAAAAP///wAAACH5BAEAAAIALAAAAAAQABAAAAIXlI+py+0PopwxUbpu
ZRfKZ2zgSJbmSRYAIf4fT3B0aW1pemVkIGJ5IFVsZWFkIFNtYXJ0U2F2ZXIhAAA7


--0__=8FBB0EF8DFBBD61D8f9e8a93df938690918c8FBB0EF8DFBBD61D--


--===============7268892515690696724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users

--===============7268892515690696724==--

