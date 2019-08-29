Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id B6781A6B13
	for <lists+linuxppc-users@lfdr.de>; Tue,  3 Sep 2019 16:17:19 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46N8Cw54NBzDqkb
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 00:17:16 +1000 (AEST)
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
 by lists.ozlabs.org (Postfix) with ESMTPS id 46K2YN5rQ9zDq61
 for <linuxppc-users@lists.ozlabs.org>; Thu, 29 Aug 2019 22:51:29 +1000 (AEST)
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7TClQ4o030337
 for <linuxppc-users@lists.ozlabs.org>; Thu, 29 Aug 2019 08:51:26 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com
 [192.155.248.91])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2upert0uke-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Thu, 29 Aug 2019 08:51:26 -0400
Received: from localhost
 by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
 for <linuxppc-users@lists.ozlabs.org> from <YASAL@tr.ibm.com>;
 Thu, 29 Aug 2019 12:51:25 -0000
Received: from us1a3-smtp01.a3.dal06.isc4sb.com (10.106.154.95)
 by smtp.notes.na.collabserv.com (10.106.227.143) with
 smtp.notes.na.collabserv.com ESMTP; Thu, 29 Aug 2019 12:50:59 -0000
Received: from us1a3-mail258.a3.dal06.isc4sb.com ([10.146.127.170])
 by us1a3-smtp01.a3.dal06.isc4sb.com
 with ESMTP id 2019082912505887-473487 ;
 Thu, 29 Aug 2019 12:50:58 +0000 
MIME-Version: 1.0
To: linuxppc-users@lists.ozlabs.org
From: "Yasal Akgun" <YASAL@tr.ibm.com>
Date: Thu, 29 Aug 2019 15:50:57 +0300
X-KeepSent: AE7466DE:11482CBD-00258465:004651E8;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 10.0.1 November 29, 2018
X-LLNOutbound: False
X-Disclaimed: 22435
X-TNEFEvaluated: 1
x-cbid: 19082912-2475-0000-0000-0000007C4635
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0; SC=0.49;
 ST=0; TS=0; UL=0; ISC=; MB=0.000000
X-IBM-SpamModules-Versions: BY=3.00011677; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01253768; UDB=6.00662218; IPR=6.01035382; 
 MB=3.00028380; MTD=3.00000008; XFM=3.00000015; UTC=2019-08-29 12:51:24
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2019-08-29 10:00:49 - 6.00010343
x-cbparentid: 19082912-2476-0000-0000-00002B844CD4
Message-Id: <OFAE7466DE.11482CBD-ON00258465.004651E8-43258465.00469545@notes.na.collabserv.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-29_06:, , signatures=0
X-Proofpoint-Spam-Reason: safe
X-Mailman-Approved-At: Wed, 04 Sep 2019 00:16:24 +1000
Subject: [Linuxppc-users] PostgreSQL support on IBM Power Systems
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
Cc: Amit Dave <ADave@ae.ibm.com>
Content-Type: multipart/mixed; boundary="===============4383882767508759705=="
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>


--===============4383882767508759705==
Content-type: multipart/alternative; 
	Boundary="0__=8FBB0EF6DFD5D7788f9e8a93df938690918c8FBB0EF6DFD5D778"
Content-Disposition: inline


--0__=8FBB0EF6DFD5D7788f9e8a93df938690918c8FBB0EF6DFD5D778
Content-Transfer-Encoding: quoted-printable
Content-type: text/plain; charset=ISO-8859-1



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

--0__=8FBB0EF6DFD5D7788f9e8a93df938690918c8FBB0EF6DFD5D778
Content-Transfer-Encoding: quoted-printable
Content-type: text/html; charset=ISO-8859-1
Content-Disposition: inline

<html><body><p><font size=3D"2">Hi,</font><br><br>Do you have references fo=
r postgresql running on Power (LPAR or full-dedicated)?<br><br><br><font si=
ze=3D"2">Yasal Akg=FCn</font><br><font size=3D"2"><br>Technical Sales &amp;=
 Consultant for Power &amp; Cognitive Systems<br>Systems, IBM Turkey</font>=
<br><br><font size=3D"2">Mobile-1 : 90 555 517 5533<br>Mobile-2 : 90 549 45=
5 4822<br>Work : 90 312 455 4822<br>yasal@tr.ibm.com</font><BR>
</body></html>

--0__=8FBB0EF6DFD5D7788f9e8a93df938690918c8FBB0EF6DFD5D778--


--===============4383882767508759705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users

--===============4383882767508759705==--

