Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E37A7BC2
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 08:34:52 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46NYvt2Tp9zDqk9
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 16:34:50 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=linux.ibm.com
 (client-ip=148.163.156.1; helo=mx0a-001b2d01.pphosted.com;
 envelope-from=daniel@linux.ibm.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=linux.ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 46NYtG2746zDqsH
 for <linuxppc-users@lists.ozlabs.org>; Wed,  4 Sep 2019 16:33:25 +1000 (AEST)
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x846Lxon097425
 for <linuxppc-users@lists.ozlabs.org>; Wed, 4 Sep 2019 02:33:22 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2ut5vw3tjg-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Wed, 04 Sep 2019 02:33:22 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linuxppc-users@lists.ozlabs.org> from <daniel@linux.ibm.com>;
 Wed, 4 Sep 2019 07:33:20 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 4 Sep 2019 07:33:17 +0100
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x846XGbY41681032
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 4 Sep 2019 06:33:16 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8FF9AA4067;
 Wed,  4 Sep 2019 06:33:16 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3E5EAA405B;
 Wed,  4 Sep 2019 06:33:16 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed,  4 Sep 2019 06:33:16 +0000 (GMT)
Received: from volution.fritz.box (haven.au.ibm.com [9.192.254.114])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ozlabs.au.ibm.com (Postfix) with ESMTPSA id 1690DA0147;
 Wed,  4 Sep 2019 16:33:13 +1000 (AEST)
Date: Wed, 4 Sep 2019 16:33:10 +1000
From: Daniel Black <daniel@linux.ibm.com>
To: <Tommi.Sihvo@tieto.com>
In-Reply-To: <612F7D89-0BED-4AF5-8CFA-ADC2A554D9B4@tieto.com>
References: <OFAE7466DE.11482CBD-ON00258465.004651E8-43258465.00469545@notes.na.collabserv.com>
 <a748041b-1eb5-741c-b7e7-41a0e43d0af0@vantosh.com>
 <612F7D89-0BED-4AF5-8CFA-ADC2A554D9B4@tieto.com>
Organization: IBM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19090406-0008-0000-0000-00000310D13B
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19090406-0009-0000-0000-00004A2F2554
Message-Id: <20190904163310.5be78f2a@volution.fritz.box>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-04_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1909040067
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
Cc: linuxppc-users@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

On Wed, 4 Sep 2019 04:26:59 +0000
<Tommi.Sihvo@tieto.com> wrote:

> Hi,
> 
> We are running quite many EDB v.10 clusters (dual site & with witness node configuration) on top of Linux on Power (RHEL 7.6LE) & Power8; and we have actually automated the deployment & EDB basic binary & config setup (PowerVC json REST + BSA post-script), so setting up new environments takes only a moment..
> 
> Customers have been really satisfied, one is consolidating all their edb databases on this environment based of experience they are having with the setup.

Good. I still wouldn't mind any running DB performance insights (off-list is obviously fine) for those customers/potential customers that measure hardware purchases based on benchmarks.

> We are also looking candidate customers for migrating some Oracle x86 environments  into Linux on Power EDB.
> Would be a nice project to try, but couple of cases have ended up dead because the 3rd party application using the database supports only Oracle.. ( 

A talk on that had some useful hints unfortunately most where in the video but not slides. I'll have to ask if it got legal threats to remove (was rather critical of AWS tools and disclosed they where a poor wrapper of a named vendor product).

https://www.percona.com/live/19/sessions/migrating-between-proprietary-and-open-source-database-technologies-calculating-your-roi

Overall it painted it as rather a large effort with a lot of manual effort even with tools available. 3rd party where frequently cited as problems too.

MariaDB-10.3 also includes a oracle mode too which is obviously a lot newer.

> 
> Br,
> tommi

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
