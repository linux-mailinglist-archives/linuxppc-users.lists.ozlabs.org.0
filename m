Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D83A967C
	for <lists+linuxppc-users@lfdr.de>; Thu,  5 Sep 2019 00:31:07 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46Nz7D5M37zDqyg
	for <lists+linuxppc-users@lfdr.de>; Thu,  5 Sep 2019 08:31:04 +1000 (AEST)
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
 by lists.ozlabs.org (Postfix) with ESMTPS id 46Nz6v0w32zDqGW
 for <linuxppc-users@lists.ozlabs.org>; Thu,  5 Sep 2019 08:30:46 +1000 (AEST)
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x84MR9qV105527
 for <linuxppc-users@lists.ozlabs.org>; Wed, 4 Sep 2019 18:30:43 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2utjfrq4cr-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Wed, 04 Sep 2019 18:30:42 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linuxppc-users@lists.ozlabs.org> from <daniel@linux.ibm.com>;
 Wed, 4 Sep 2019 23:30:40 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 4 Sep 2019 23:30:37 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x84MUYSE47644894
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 4 Sep 2019 22:30:34 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 76E4E4C063;
 Wed,  4 Sep 2019 22:30:34 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2D8814C050;
 Wed,  4 Sep 2019 22:30:34 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed,  4 Sep 2019 22:30:34 +0000 (GMT)
Received: from volution.fritz.box (haven.au.ibm.com [9.192.254.114])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ozlabs.au.ibm.com (Postfix) with ESMTPSA id E2EABA0231;
 Thu,  5 Sep 2019 08:30:30 +1000 (AEST)
Date: Thu, 5 Sep 2019 08:30:28 +1000
From: Daniel Black <daniel@linux.ibm.com>
To: Toshaan Bharvani | VanTosh <toshaan@vantosh.com>,
 linuxppc-users@lists.ozlabs.org, Yasal Akgun <YASAL@tr.ibm.com>
In-Reply-To: <86ed2979-a37f-5c14-6f25-3e4d9758c386@vantosh.com>
References: <OFAE7466DE.11482CBD-ON00258465.004651E8-43258465.00469545@notes.na.collabserv.com>
 <a748041b-1eb5-741c-b7e7-41a0e43d0af0@vantosh.com>
 <20190904140801.1502960a@volution.fritz.box>
 <86ed2979-a37f-5c14-6f25-3e4d9758c386@vantosh.com>
Organization: IBM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19090422-0028-0000-0000-00000397C9D2
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19090422-0029-0000-0000-0000245A1CD9
Message-Id: <20190905083028.7bf79a32@volution.fritz.box>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-04_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1909040216
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

On Wed, 4 Sep 2019 15:15:11 +0200
Toshaan Bharvani | VanTosh <toshaan@vantosh.com> wrote:

> > A while ago was helping someone out with a potential customer that showed a CPU large usage in postgresql's PinBuffer function but never really got to the bottom of it without a reproducible load with easy access (and whether this was general postgresql tuning problem).  

> Yes, I remember having problems with CPU and memory usage inconsistency,
> this was on a v8 and v9.5 and lower, once we moved to v9.6 all problems
> seem to have been solved.

memory ordering? That sounds about right.


> > So while you have access to multiple instances, are there Postgresql functions that show a higher CPU usage in POWER compared to x86 that I could look optimizing (ahead of potential clients asking)? If so can you show a test case to show it?  
> The only functions/queries we see slower on POWER is the full text
> search , a WHERE LIKE query or tsvector/tsquery function normally does
> very well, however in some cases, we have seen increased CPU and slower
> responses.
> Unfortunately, we have difficulty reproducing theses, so I haven't filed
> any reports, as we do not really understand where the issue could be and
> if it is actually even a Pg issue and not a query issue.

If you work something out or get close I'm interested.

> > Performance data gather with:
> > 
> > perf record -g ; perf report -g --no-children --stdio
> > 
> > Coincidently I'm meeting with 2 postgresql developers next week where I could discuss improvements.
> >   
> I will send you some data by end of the week.

Thanks.

My meetings with postgresql developers is for https://linuxplumbersconf.org/event/4/sessions/60/ and not really about improving performance on POWER. While this would be interesting to discuss please don't put a lot of effort into it expecting it to play a key part in near term improvements.

> If you are working on tests and other improvements, we can always talk
> offline

sure.

> or I can assist with testing, we have multiple architectures.

Thanks.

I've got a few things on the go and this won't get as much attention without client backing, however I hope for a slow improvement of things over a longer time.

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
