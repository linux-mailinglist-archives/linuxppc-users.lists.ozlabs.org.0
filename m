Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9B6A6BA4
	for <lists+linuxppc-users@lfdr.de>; Tue,  3 Sep 2019 16:37:58 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46N8gl0j7hzDqvn
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 00:37:55 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=ae.ibm.com
 (client-ip=148.163.156.1; helo=mx0a-001b2d01.pphosted.com;
 envelope-from=ahmed.amer@ae.ibm.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=ae.ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 46N8gN2qWdzDq8M
 for <linuxppc-users@lists.ozlabs.org>; Wed,  4 Sep 2019 00:37:29 +1000 (AEST)
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x83EX174031110
 for <linuxppc-users@lists.ozlabs.org>; Tue, 3 Sep 2019 10:37:26 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com
 [192.155.248.73])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2usskvhm6f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Tue, 03 Sep 2019 10:37:23 -0400
Received: from localhost
 by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
 for <linuxppc-users@lists.ozlabs.org> from <ahmed.amer@ae.ibm.com>;
 Tue, 3 Sep 2019 14:35:41 -0000
Received: from us1a3-smtp07.a3.dal06.isc4sb.com (10.146.103.14)
 by smtp.notes.na.collabserv.com (10.106.227.90) with
 smtp.notes.na.collabserv.com ESMTP; Tue, 3 Sep 2019 14:35:39 -0000
Received: from us1a3-mail165.a3.dal06.isc4sb.com ([10.146.71.65])
 by us1a3-smtp07.a3.dal06.isc4sb.com
 with ESMTP id 2019090314353802-609490 ;
 Tue, 3 Sep 2019 14:35:38 +0000 
To: "Yasal Akgun" <YASAL@tr.ibm.com>
In-Reply-To: <OFAE7466DE.11482CBD-ON00258465.004651E8-43258465.00469545@notes.na.collabserv.com>
Date: Tue, 3 Sep 2019 14:35:38 +0000
From: "Ahmed Amer" <ahmed.amer@ae.ibm.com>
Importance: Normal
MIME-Version: 1.0
X-Mailer: IBM Traveler 10.0.1.1 Build 201906031703_20 on behalf of device with
 id
 And...db5, type 700 (android) and description samsung SM-N950F:Android 9:IBM
 Verse/10.0.9.0 201908051549
X-KeepSent: 1DAD104A:0728C4AC-0025846A:00502AEE;
 type=4; name=$KeepSent
X-LLNOutbound: False
X-Disclaimed: 3715
X-TNEFEvaluated: 1
x-cbid: 19090314-8877-0000-0000-00000100B8A2
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.373977; ST=0; TS=0; UL=0; ISC=; MB=0.093076
X-IBM-SpamModules-Versions: BY=3.00011710; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01256144; UDB=6.00663676; IPR=6.01037812; 
 MB=3.00028452; MTD=3.00000008; XFM=3.00000015; UTC=2019-09-03 14:35:40
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2019-09-03 12:22:57 - 6.00010364
x-cbparentid: 19090314-8878-0000-0000-000003F4CBED
Message-Id: <OF1DAD104A.0728C4AC-ON0025846A.00502AEE-1567521338935@notes.na.collabserv.com>
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
Content-Type: multipart/mixed; boundary="===============7455617577176488898=="
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>


--===============7455617577176488898==
Content-Type: multipart/alternative; 
	boundary="----=_Part_70_-1032028673.1567521338798"


------=_Part_70_-1032028673.1567521338798
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hey Yasal ,Yes ,we have a one for a client in MEA.Lets sametime to talk tom=
orrow for further clarification. Ahmer Amer00971562160827ahmed.amer@ae.ibm.=
com IBM Systems Sent from IBM Verse



   Yasal Akgun --- [EXTERNAL] [Linuxppc-users] PostgreSQL support on IBM Po=
wer Systems ---=20
    From:"Yasal Akgun" <YASAL@tr.ibm.com>To:linuxppc-users@lists.ozlabs.org=
Cc:"Amit Dave" <ADave@ae.ibm.com>Date:Tue, Sep 3, 2019 6:28 PMSubject:[EXTE=
RNAL] [Linuxppc-users] PostgreSQL support on IBM Power Systems
 =20
  Hi,Do you have references for postgresql running on Power (LPAR or full-d=
edicated)?Yasal Akg=C3=BCnTechnical Sales & Consultant for Power & Cognitiv=
e SystemsSystems, IBM TurkeyMobile-1 : 90 555 517 5533Mobile-2 : 90 549 455=
 4822Work : 90 312 455 4822yasal@tr.ibm.com=20


------=_Part_70_-1032028673.1567521338798
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<HTML><BODY><FONT style=3D'white-space:pre-wrap;font-family: Helvetica Neue=
, Helvetica, Arial, sans-serif;margin: 1em 0;'><p dir=3D"ltr">Hey Yasal ,<b=
r>Yes ,we have a one for a client in MEA.<br>Lets sametime to talk tomorrow=
 for further clarification. <br><br>Ahmer Amer<br>00971562160827<br><a href=
=3D"mailto:ahmed.amer@ae.ibm.com">ahmed.amer@ae.ibm.com</a> <br>IBM Systems=
 <br><br>Sent from IBM Verse</p><br></FONT><br><br><div class=3D"domino-sec=
tion" dir=3D"ltr"><div class=3D"domino-section-head"><span class=3D"domino-=
section-title"><font color=3D"#424282">Yasal Akgun --- [EXTERNAL] [Linuxppc=
-users] PostgreSQL support on IBM Power Systems --- </font></span></div><di=
v class=3D"domino-section-body"><br><table width=3D"100%" border=3D"0" cell=
spacing=3D"0" cellpadding=3D"0"><tr valign=3D"top"><td width=3D"1%" style=
=3D"width: 96px;"><font size=3D"2" color=3D"#5F5F5F">From:</font></td><td w=
idth=3D"100%" style=3D"width: auto;"><font size=3D"2">&quot;Yasal Akgun&quo=
t; &lt;YASAL@tr.ibm.com&gt;</font></td></tr><tr valign=3D"top"><td width=3D=
"1%" style=3D"width: 96px;"><font size=3D"2" color=3D"#5F5F5F">To:</font></=
td><td width=3D"100%" style=3D"width: auto;"><font size=3D"2">linuxppc-user=
s@lists.ozlabs.org</font></td></tr><tr valign=3D"top"><td width=3D"1%" styl=
e=3D"width: 96px;"><font size=3D"2" color=3D"#5F5F5F">Cc:</font></td><td wi=
dth=3D"100%" style=3D"width: auto;"><font size=3D"2">&quot;Amit Dave&quot; =
&lt;ADave@ae.ibm.com&gt;</font></td></tr><tr valign=3D"top"><td width=3D"1%=
" style=3D"width: 96px;"><font size=3D"2" color=3D"#5F5F5F">Date:</font></t=
d><td width=3D"100%" style=3D"width: auto;"><font size=3D"2">Tue, Sep 3, 20=
19 6:28 PM</font></td></tr><tr valign=3D"top"><td width=3D"1%" style=3D"wid=
th: 96px;"><font size=3D"2" color=3D"#5F5F5F">Subject:</font></td><td width=
=3D"100%" style=3D"width: auto;"><font size=3D"2">[EXTERNAL] [Linuxppc-user=
s] PostgreSQL support on IBM Power Systems</font></td></tr></table><hr widt=
h=3D"100%" size=3D"2" align=3D"left" noshade style=3D"color:#8091A5; "><br>=
</div><html><body><p><font size=3D"2">Hi,</font><br><br>Do you have referen=
ces for postgresql running on Power (LPAR or full-dedicated)?<br><br><br><f=
ont size=3D"2">Yasal Akg=C3=BCn</font><br><font size=3D"2"><br>Technical Sa=
les &amp; Consultant for Power &amp; Cognitive Systems<br>Systems, IBM Turk=
ey</font><br><br><font size=3D"2">Mobile-1 : 90 555 517 5533<br>Mobile-2 : =
90 549 455 4822<br>Work : 90 312 455 4822<br>yasal@tr.ibm.com</font><BR><BR>
</body></html>
</BODY></HTML>

------=_Part_70_-1032028673.1567521338798--


--===============7455617577176488898==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users

--===============7455617577176488898==--

