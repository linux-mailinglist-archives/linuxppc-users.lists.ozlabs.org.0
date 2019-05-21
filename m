Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 824E5251CC
	for <lists+linuxppc-users@lfdr.de>; Tue, 21 May 2019 16:21:31 +0200 (CEST)
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 457dHD5M3xzDqQ5
	for <lists+linuxppc-users@lfdr.de>; Wed, 22 May 2019 00:21:28 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=linux.ibm.com
 (client-ip=148.163.158.5; helo=mx0a-001b2d01.pphosted.com;
 envelope-from=anton@linux.ibm.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=linux.ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 457Lhz0q6dzDqBs
 for <linuxppc-users@lists.ozlabs.org>; Tue, 21 May 2019 13:24:12 +1000 (AEST)
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4L3HQXH115598
 for <linuxppc-users@lists.ozlabs.org>; Mon, 20 May 2019 23:24:10 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2sm8rah73w-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Mon, 20 May 2019 23:24:10 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linuxppc-users@lists.ozlabs.org> from <anton@linux.ibm.com>;
 Tue, 21 May 2019 04:24:08 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 21 May 2019 04:24:05 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4L3O4DL28180580
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 May 2019 03:24:04 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B03F2AE057;
 Tue, 21 May 2019 03:24:04 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 61A5DAE055;
 Tue, 21 May 2019 03:24:04 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Tue, 21 May 2019 03:24:04 +0000 (GMT)
Received: from kryten (unknown [9.81.198.209])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ozlabs.au.ibm.com (Postfix) with ESMTPSA id DCB26A01A2;
 Tue, 21 May 2019 13:24:02 +1000 (AEST)
Date: Tue, 21 May 2019 13:24:01 +1000
From: Anton Blanchard <anton@linux.ibm.com>
To: dftxbs3e@free.fr
In-Reply-To: <e174b6de612bd280e950ba5bf925a5a7@free.fr>
References: <e174b6de612bd280e950ba5bf925a5a7@free.fr>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19052103-0028-0000-0000-0000036FCC88
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19052103-0029-0000-0000-0000242F7467
Message-Id: <20190521132401.08be995c@kryten>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-20_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=538 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905210019
X-Mailman-Approved-At: Tue, 21 May 2019 23:46:48 +1000
Subject: Re: [Linuxppc-users] [EXTERNAL] Poor RAID6 performance (vpermxor8 0
 MB/s)
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

Hi,

> My RAID6 array has been suffering quite poor write performance
> (26MB/s), using RAID1 does not have that write performance loss.
> While I do know RAID6 causes a write performance hit, I would expect
> better.
> 
> I have noticed this in my dmesg kernel log:
> 
> [  255.514795] raid6: using algorithm vpermxor8 gen() 0 MB/s
> [  255.514800] raid6: using intx1 recovery algorithm

That's expected if you disable CONFIG_RAID6_PQ_BENCHMARK. With it enabled
you should see vpermxor8 can easily do over 10GB/sec:

[    0.671884] raid6: vpermxor8 gen() 17389 MB/s
[    0.841905] raid6: vpermxor4 gen() 15622 MB/s
[    1.011929] raid6: vpermxor2 gen() 12473 MB/s
[    1.181953] raid6: vpermxor1 gen()  7652 MB/s
[    1.351975] raid6: altivecx8 gen() 13851 MB/s
[    1.521997] raid6: altivecx4 gen() 15624 MB/s
[    1.692022] raid6: altivecx2 gen() 12475 MB/s
[    1.862045] raid6: altivecx1 gen()  7655 MB/s
[    2.032067] raid6: int64x8  gen()  5071 MB/s
[    2.202094] raid6: int64x8  xor()  2008 MB/s
[    2.372111] raid6: int64x4  gen() 10823 MB/s
[    2.542133] raid6: int64x4  xor()  3669 MB/s
[    2.712158] raid6: int64x2  gen()  8896 MB/s
[    2.882182] raid6: int64x2  xor()  3319 MB/s
[    3.052226] raid6: int64x1  gen()  5071 MB/s
[    3.222249] raid6: int64x1  xor()  2146 MB/s
[    3.222316] raid6: using algorithm vpermxor8 gen() 17389 MB/s

The kernel has selected the right algorithm for you, so it doesn't explain
your issues. Having said that, we don't have a VMX version of the recovery
algorithm. Can you double check that your array isn't in degraded state?

To further diagnose this, a couple of things would be useful:

1. Are we CPU bound or IO bound? A chunk of "vmstat 1" might help here

2. If we are CPU bound, where is the time being spent?
"perf record -a sleep 30; perf report" will give us some clues.

Thanks,
Anton

> Is that a bug?
> 
> Thanks
> _______________________________________________
> Linuxppc-users mailing list
> Linuxppc-users@lists.ozlabs.org
> https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.ozlabs.org_listinfo_linuxppc-2Dusers&d=DwICAg&c=jf_iaSHvJObTbx-siA1ZOg&r=azkGdnz7EYeVmhCvUFAXMMwzYZqpcBIElGi1DsA0tKU&m=A_KwMEnXPAHjRPVUQQi2pwHw9tCLKOLqGgvz0Ywuk5E&s=F4Gek9swz1H03YhoNSpsSqLryC0hV5hmQe7RxlXF7JY&e=

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
