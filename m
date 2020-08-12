Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C16F242FF3
	for <lists+linuxppc-users@lfdr.de>; Wed, 12 Aug 2020 22:17:37 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 4BRgwt36dfzDqdv
	for <lists+linuxppc-users@lfdr.de>; Thu, 13 Aug 2020 06:17:34 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org; spf=pass (sender SPF authorized)
 smtp.mailfrom=ca.ibm.com (client-ip=148.163.158.5;
 helo=mx0a-001b2d01.pphosted.com; envelope-from=tomtran@ca.ibm.com;
 receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=pass (p=none dis=none) header.from=ca.ibm.com
Authentication-Results: lists.ozlabs.org; dkim=pass (2048-bit key;
 unprotected) header.d=ibm.com header.i=@ibm.com header.a=rsa-sha256
 header.s=pp1 header.b=NOtg2gpL; dkim-atps=neutral
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 4BRgwY0PqYzDqcL
 for <linuxppc-users@lists.ozlabs.org>; Thu, 13 Aug 2020 06:17:12 +1000 (AEST)
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 07CK7MG2165874
 for <linuxppc-users@lists.ozlabs.org>; Wed, 12 Aug 2020 16:17:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=in-reply-to : to : cc :
 from : date : references : content-type : message-id : mime-version :
 subject; s=pp1; bh=n9RIFzuHOvzACTqNoAOkqiIE0XU4Bc0bJOkBzl+2Ovs=;
 b=NOtg2gpLRTXpEtdLNzavA1iE3HGD4izQ4F+8/fjdqKowQUqwVo2kjKQqp9dIH5iW5SZd
 0r3FiPHSOW18U00dZO1d61KE8f38y8lqnT5SNeDlQoWcq2Xvo35lF4k1SubaOxWIKw4W
 mg94ON1TdBoc4M0sEuln45mMHAOAKZZWT3hzLids9+sG4FI+nC/UWPqaHQg1vP6Lgxho
 G84/Hvuz6gUlcAaB58JI3F0q0LOqZ4jCwrRqZj/hYk1Ya7E+Ebp0/uh+eyla/lY0Segn
 +1+E3koeK+x6Yb6zN1+e5VWlTxseY/OvTfzCUk4Ic3QOG8GtCbvJ+jCSoAUXgmZ1+YpO vA== 
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com
 [192.155.248.75])
 by mx0b-001b2d01.pphosted.com with ESMTP id 32v7uug5ax-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Wed, 12 Aug 2020 16:17:09 -0400
Received: from localhost
 by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
 for <linuxppc-users@lists.ozlabs.org> from <tomtran@ca.ibm.com>;
 Wed, 12 Aug 2020 20:17:09 -0000
Received: from us1a3-smtp05.a3.dal06.isc4sb.com (10.146.71.159)
 by smtp.notes.na.collabserv.com (10.106.227.123) with
 smtp.notes.na.collabserv.com ESMTP; Wed, 12 Aug 2020 20:17:07 -0000
Received: from us1a3-mail235.a3.dal06.isc4sb.com ([10.146.103.212])
 by us1a3-smtp05.a3.dal06.isc4sb.com
 with ESMTP id 2020081220170682-782813 ;
 Wed, 12 Aug 2020 20:17:06 +0000 
In-Reply-To: <OFC0EC219A.C3976B1D-ON002585C2.006B74A0-002585C2.006B83FA@notes.na.collabserv.com>
To: "Teri Wood" <twood@us.ibm.com>
From: "Tom T Tran" <tomtran@ca.ibm.com>
Date: Wed, 12 Aug 2020 16:16:59 -0400
References: <OFC0EC219A.C3976B1D-ON002585C2.006B74A0-002585C2.006B83FA@notes.na.collabserv.com>
X-KeepSent: 7DDAF93E:46F6FE62-002585C2:006ECF75;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP10 SHF68 March 06, 2018
X-LLNOutbound: False
X-Disclaimed: 37731
X-TNEFEvaluated: 1
x-cbid: 20081220-6875-0000-0000-0000032E8F76
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.433748; ST=0; TS=0; UL=0; ISC=; MB=0.000000
X-IBM-SpamModules-Versions: BY=3.00013639; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000295; SDB=6.01419244; UDB=6.00761337; IPR=6.01201855; 
 MB=3.00033496; MTD=3.00000008; XFM=3.00000015; UTC=2020-08-12 20:17:08
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2020-08-12 17:14:33 - 6.00011716
x-cbparentid: 20081220-6876-0000-0000-0000249192DA
Message-Id: <OF7DDAF93E.46F6FE62-ON002585C2.006ECF75-852585C2.006F6B19@notes.na.collabserv.com>
X-Proofpoint-UnRewURL: 1 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-08-12_15:2020-08-11,
 2020-08-12 signatures=0
X-Proofpoint-Spam-Reason: orgsafe
Subject: Re: [Linuxppc-users] Java 9
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
Content-Type: multipart/mixed; boundary="===============1372406171711307360=="
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>


--===============1372406171711307360==
Content-type: multipart/alternative; 
	Boundary="0__=8FBB0F51DFFD49E58f9e8a93df938690918c8FBB0F51DFFD49E5"
Content-Disposition: inline


--0__=8FBB0F51DFFD49E58f9e8a93df938690918c8FBB0F51DFFD49E5
Content-type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable


Hi Teri,

Java 8 and Java 11 are long term support releases. Non-LTS releases such as
Java 9 and Java 10 are immediately superseded once a newer Java version is
released. For more details:
https://www.oracle.com/java/technologies/java-se-support-roadmap.html


Regards,

Tom Tran
Performance Analyst, Software Developer
IBM Systems, Power Systems Performance
IBM Toronto Lab
Phone: 905-413-2894
Email: tomtran@ca.ibm.com

"Linuxppc-users" <linuxppc-users-bounces
+tomtran=3Dca.ibm.com@lists.ozlabs.org> wrote on 2020-08-12 03:34:21 PM:

> From: "Teri Wood" <twood@us.ibm.com>
> To: linuxppc-users@lists.ozlabs.org
> Date: 2020-08-12 03:35 PM
> Subject: [EXTERNAL] [Linuxppc-users] Java 9
> Sent by: "Linuxppc-users" <linuxppc-users-bounces
> +tomtran=3Dca.ibm.com@lists.ozlabs.org>
>
> Is there a reason why Red hat has java-1.8.0-openjdk, and java-11-
> openjdk but no Java 9 or Java 10 on ftp3 repo.
>
> Thank you,
>
> Teri Wood
> ISV System Admin
> ISV Benchmark Center
> _______________________________________________
> Linuxppc-users mailing list
> Linuxppc-users@lists.ozlabs.org
> INVALID URI REMOVED
>
u=3Dhttps-3A__lists.ozlabs.org_listinfo_linuxppc-2Dusers&d=3DDwICAg&c=3Djf_=
iaSHvJObTbx-

> siA1ZOg&r=3DZY1koreH91uvJY-kZ8pWy-
> n7jBIIt_bwWDjw8LrDgRw&m=3DPQDVQ3rhdhz8sPk_fEXK6z2M_RmDkpBcA5CZVr-
> S694&s=3DhdMmcuALNDjHWKsA7F4PGXPZFAWz7kydlcKoF9w2ES0&e=3D

--0__=8FBB0F51DFFD49E58f9e8a93df938690918c8FBB0F51DFFD49E5
Content-type: text/html; charset=US-ASCII
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

<html><body><p><font size=3D"2">Hi Teri,</font><br><br><font size=3D"2">Jav=
a 8 and Java 11 are long term support releases. Non-LTS releases such as Ja=
va 9 and Java 10 are immediately superseded once a newer Java version is re=
leased. For more details: </font><a href=3D"https://www.oracle.com/java/tec=
hnologies/java-se-support-roadmap.html"><font size=3D"2">https://www.oracle=
.com/java/technologies/java-se-support-roadmap.html</font></a><br><font siz=
e=3D"2"><br><br>Regards,<br><br>Tom Tran<br>Performance Analyst, Software D=
eveloper<br>IBM Systems, Power Systems Performance<br>IBM Toronto Lab<br>Ph=
one: 905-413-2894<br>Email: tomtran@ca.ibm.com</font><br><br><tt><font size=
=3D"2">&quot;Linuxppc-users&quot; &lt;linuxppc-users-bounces+tomtran=3Dca.i=
bm.com@lists.ozlabs.org&gt; wrote on 2020-08-12 03:34:21 PM:<br><br>&gt; Fr=
om: &quot;Teri Wood&quot; &lt;twood@us.ibm.com&gt;</font></tt><br><tt><font=
 size=3D"2">&gt; To: linuxppc-users@lists.ozlabs.org</font></tt><br><tt><fo=
nt size=3D"2">&gt; Date: 2020-08-12 03:35 PM</font></tt><br><tt><font size=
=3D"2">&gt; Subject: [EXTERNAL] [Linuxppc-users] Java 9</font></tt><br><tt>=
<font size=3D"2">&gt; Sent by: &quot;Linuxppc-users&quot; &lt;linuxppc-user=
s-bounces<br>&gt; +tomtran=3Dca.ibm.com@lists.ozlabs.org&gt;</font></tt><br=
><tt><font size=3D"2">&gt; <br>&gt; Is there a reason why Red hat has java-=
1.8.0-openjdk, and java-11-<br>&gt; openjdk but no Java 9 or Java 10 on ftp=
3 repo. &nbsp;</font></tt><br><tt><font size=3D"2">&gt; &nbsp;</font></tt><=
br><tt><font size=3D"2">&gt; Thank you,<br>&gt; <br>&gt; Teri Wood<br>&gt; =
ISV System Admin<br>&gt; ISV Benchmark Center</font></tt><br><tt><font size=
=3D"2">&gt; _______________________________________________<br>&gt; Linuxpp=
c-users mailing list<br>&gt; Linuxppc-users@lists.ozlabs.org<br>&gt; <a hre=
f=3D"INVALID URI REMOVED">INVALID URI REMOVED</a><br>&gt; u=3Dhttps-3A__lis=
ts.ozlabs.org_listinfo_linuxppc-2Dusers&amp;d=3DDwICAg&amp;c=3Djf_iaSHvJObT=
bx-<br>&gt; siA1ZOg&amp;r=3DZY1koreH91uvJY-kZ8pWy-<br>&gt; n7jBIIt_bwWDjw8L=
rDgRw&amp;m=3DPQDVQ3rhdhz8sPk_fEXK6z2M_RmDkpBcA5CZVr-<br>&gt; S694&amp;s=3D=
hdMmcuALNDjHWKsA7F4PGXPZFAWz7kydlcKoF9w2ES0&amp;e=3D <br></font></tt><BR>
</body></html>

--0__=8FBB0F51DFFD49E58f9e8a93df938690918c8FBB0F51DFFD49E5--


--===============1372406171711307360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users

--===============1372406171711307360==--

