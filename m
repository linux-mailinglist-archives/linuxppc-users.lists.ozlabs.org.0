Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1A0242F69
	for <lists+linuxppc-users@lfdr.de>; Wed, 12 Aug 2020 21:34:59 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 4BRfzh0t5NzDqd0
	for <lists+linuxppc-users@lfdr.de>; Thu, 13 Aug 2020 05:34:56 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org; spf=pass (sender SPF authorized)
 smtp.mailfrom=us.ibm.com (client-ip=148.163.158.5;
 helo=mx0a-001b2d01.pphosted.com; envelope-from=twood@us.ibm.com;
 receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=pass (p=none dis=none) header.from=us.ibm.com
Authentication-Results: lists.ozlabs.org; dkim=pass (2048-bit key;
 unprotected) header.d=ibm.com header.i=@ibm.com header.a=rsa-sha256
 header.s=pp1 header.b=MX5jbItp; dkim-atps=neutral
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 4BRfz82Qf3zDqZQ
 for <linuxppc-users@lists.ozlabs.org>; Thu, 13 Aug 2020 05:34:27 +1000 (AEST)
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 07CJVVs3128030
 for <linuxppc-users@lists.ozlabs.org>; Wed, 12 Aug 2020 15:34:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=in-reply-to : subject :
 from : to : date : references : mime-version : content-transfer-encoding :
 content-type : message-id; s=pp1;
 bh=r7Tm2vq+JaO6egrDEFSNk2QkD+o/K7L93PN/YTFiKx0=;
 b=MX5jbItp18LZuFr/SKfsc4pGcjJmvX0ebd5I1ErkUrwgy1LmAYFUFd29aJFuN+7mzL9h
 fNtAxLjvOikeNtydIycdFrdEqVZ8++w/650vzqCi0FNYQnygUbT34gyGgnTQVnse5C9U
 TfLx1ekMWrGhG9xReF9nRXpkIj9lnNVbEiAnueeVGnjNikmcMoF/S+0N4nrg1T2tYG5o
 3L9a/kyIE4wVcaURTirlxOPbdBDVBzAdXnb99yNFxneNLjLNDgPkjDBBoqY973ruycwe
 xipV1o6PSEHejX1hfkBD+B87VwnRw3iPLT7P/6gOPeB2FsOe6F0oH3n8nnNelSnbAxlr lw== 
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com
 [192.155.248.90])
 by mx0b-001b2d01.pphosted.com with ESMTP id 32vcsy3m2n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Wed, 12 Aug 2020 15:34:24 -0400
Received: from localhost
 by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
 for <linuxppc-users@lists.ozlabs.org> from <twood@us.ibm.com>;
 Wed, 12 Aug 2020 19:34:24 -0000
Received: from us1a3-smtp01.a3.dal06.isc4sb.com (10.106.154.95)
 by smtp.notes.na.collabserv.com (10.106.227.141) with
 smtp.notes.na.collabserv.com ESMTP; Wed, 12 Aug 2020 19:34:22 -0000
Received: from us1a3-mail116.a3.dal06.isc4sb.com ([10.146.45.125])
 by us1a3-smtp01.a3.dal06.isc4sb.com
 with ESMTP id 2020081219342161-783337 ;
 Wed, 12 Aug 2020 19:34:21 +0000 
In-Reply-To: 
From: "Teri Wood" <twood@us.ibm.com>
To: linuxppc-users@lists.ozlabs.org
Date: Wed, 12 Aug 2020 19:34:21 +0000
Sensitivity: 
References: 
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Mailer: IBM Verse Build 17652-1661 | IBM Domino Build
 SCN1812108_20180501T0841_FP65 April 15, 2020 at 09:48
X-LLNOutbound: False
X-Disclaimed: 41387
X-TNEFEvaluated: 1
x-cbid: 20081219-3649-0000-0000-000003A18AA0
X-IBM-SpamModules-Scores: BY=0.293346; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.423878; ST=0; TS=0; UL=0; ISC=; MB=0.001190
X-IBM-SpamModules-Versions: BY=3.00013638; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000295; SDB=6.01419230; UDB=6.00761329; IPR=6.01201841; 
 MB=3.00033495; MTD=3.00000008; XFM=3.00000015; UTC=2020-08-12 19:34:22
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2020-08-12 17:02:19 - 6.00011716
x-cbparentid: 20081219-3650-0000-0000-0000894A8F14
Message-Id: <OFC0EC219A.C3976B1D-ON002585C2.006B74A0-002585C2.006B83FA@notes.na.collabserv.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-08-12_15:2020-08-11,
 2020-08-12 signatures=0
X-Proofpoint-Spam-Reason: orgsafe
Subject: [Linuxppc-users] Java 9
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
Content-Type: multipart/mixed; boundary="===============2782275771419799949=="
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

--===============2782275771419799949==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<div class=3D"socmaildefaultfont" dir=3D"ltr" style=3D"font-family:Arial, H=
elvetica, sans-serif;font-size:10pt" ><div class=3D"socmaildefaultfont" dir=
=3D"ltr" style=3D"font-family:Arial, Helvetica, sans-serif;font-size:10pt" =
><div dir=3D"ltr" ><span style=3D"color: rgb(18, 18, 18); font-family: Aria=
l, Helvetica, sans-serif; font-size: 13.3333px; font-style: normal; font-va=
riant-ligatures: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tr=
ansform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoratio=
n-style: initial; text-decoration-color: initial; display: inline !importan=
t; float: none;" >Is there a reason why Red hat has&nbsp;java-1.8.0-openjdk=
, and java-11-openjdk but no Java 9 or Java 10 on ftp3 repo.&nbsp;&nbsp;</s=
pan></div>
<div dir=3D"ltr" >&nbsp;</div>
<div dir=3D"ltr" ><b><font color=3D"#0000FF" size=3D"2" >Thank you,</font><=
/b><br><br><b><font color=3D"#0000FF" face=3D"Sybil Green" size=3D"3" >Teri=
 Wood</font></b><br><b><font color=3D"#0000FF" size=3D"2" >ISV System Admin=
</font></b><br><b><font color=3D"#0000FF" size=3D"2" >ISV Benchmark Center<=
/font></b></div></div></div><BR>


--===============2782275771419799949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users

--===============2782275771419799949==--
