Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id 78531A798E
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 06:08:45 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46NVgG6XxGzDqrN
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 14:08:42 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=linux.ibm.com
 (client-ip=148.163.158.5; helo=mx0a-001b2d01.pphosted.com;
 envelope-from=daniel@linux.ibm.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=linux.ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 46NVfv5rT5zDqV6
 for <linuxppc-users@lists.ozlabs.org>; Wed,  4 Sep 2019 14:08:16 +1000 (AEST)
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x843vpmM029833
 for <linuxppc-users@lists.ozlabs.org>; Wed, 4 Sep 2019 00:08:13 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2ut2c5n83f-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Wed, 04 Sep 2019 00:08:13 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linuxppc-users@lists.ozlabs.org> from <daniel@linux.ibm.com>;
 Wed, 4 Sep 2019 05:08:11 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 4 Sep 2019 05:08:10 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x84487mf36765940
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 4 Sep 2019 04:08:07 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0297EAE055;
 Wed,  4 Sep 2019 04:08:07 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A5E03AE04D;
 Wed,  4 Sep 2019 04:08:06 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed,  4 Sep 2019 04:08:06 +0000 (GMT)
Received: from volution.fritz.box (haven.au.ibm.com [9.192.254.114])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ozlabs.au.ibm.com (Postfix) with ESMTPSA id 9E058A0147;
 Wed,  4 Sep 2019 14:08:03 +1000 (AEST)
Date: Wed, 4 Sep 2019 14:08:01 +1000
From: Daniel Black <daniel@linux.ibm.com>
To: Toshaan Bharvani | VanTosh <toshaan@vantosh.com>,
 linuxppc-users@lists.ozlabs.org, "Yasal Akgun" <YASAL@tr.ibm.com>
In-Reply-To: <a748041b-1eb5-741c-b7e7-41a0e43d0af0@vantosh.com>
References: <OFAE7466DE.11482CBD-ON00258465.004651E8-43258465.00469545@notes.na.collabserv.com>
 <a748041b-1eb5-741c-b7e7-41a0e43d0af0@vantosh.com>
Organization: IBM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19090404-0020-0000-0000-0000036766FB
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19090404-0021-0000-0000-000021BCD395
Message-Id: <20190904140801.1502960a@volution.fritz.box>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-03_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=991 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1909040041
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

On Tue, 3 Sep 2019 17:51:34 +0200
Toshaan Bharvani | VanTosh <toshaan@vantosh.com> wrote:

> Yasal,
> 
> 
> On 29/08/2019 14:50, Yasal Akgun wrote:
> > Hi,
> > 
> > Do you have references for postgresql running on Power (LPAR or
> > full-dedicated)?  
> 
> We have multiple instances of PostgreSQL v10 and v11, all on Linux ppc64
> and ppc64le. We run this for multiple of our customers.
> All are running in Linux KVM Qemu virtual machines.
> We also have x86_64 to compare with


Nice!

A while ago was helping someone out with a potential customer that showed a CPU large usage in postgresql's PinBuffer function but never really got to the bottom of it without a reproducible load with easy access (and whether this was general postgresql tuning problem).

So while you have access to multiple instances, are there Postgresql functions that show a higher CPU usage in POWER compared to x86 that I could look optimizing (ahead of potential clients asking)? If so can you show a test case to show it?

Performance data gather with:

perf record -g ; perf report -g --no-children --stdio

Coincidently I'm meeting with 2 postgresql developers next week where I could discuss improvements.

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
