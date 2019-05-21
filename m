Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A73246E3
	for <lists+linuxppc-users@lfdr.de>; Tue, 21 May 2019 06:32:16 +0200 (CEST)
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 457NCK56MgzDqKj
	for <lists+linuxppc-users@lfdr.de>; Tue, 21 May 2019 14:32:13 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=linux.ibm.com
 (client-ip=148.163.156.1; helo=mx0a-001b2d01.pphosted.com;
 envelope-from=anton@linux.ibm.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=linux.ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 457NC93MRtzDqCl
 for <linuxppc-users@lists.ozlabs.org>; Tue, 21 May 2019 14:32:05 +1000 (AEST)
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4L4VrBb007947
 for <linuxppc-users@lists.ozlabs.org>; Tue, 21 May 2019 00:32:03 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2sm6srxqpg-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Tue, 21 May 2019 00:32:02 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linuxppc-users@lists.ozlabs.org> from <anton@linux.ibm.com>;
 Tue, 21 May 2019 05:32:00 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 21 May 2019 05:31:57 +0100
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4L4Vue736306978
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 May 2019 04:31:56 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D14F8A405C;
 Tue, 21 May 2019 04:31:56 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7FD61A4054;
 Tue, 21 May 2019 04:31:56 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Tue, 21 May 2019 04:31:56 +0000 (GMT)
Received: from kryten (unknown [9.81.198.209])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ozlabs.au.ibm.com (Postfix) with ESMTPSA id 592D1A0131;
 Tue, 21 May 2019 14:31:55 +1000 (AEST)
Date: Tue, 21 May 2019 14:31:54 +1000
From: Anton Blanchard <anton@linux.ibm.com>
To: dftxbs3e@free.fr
In-Reply-To: <c22b01d0f00fb508fe64b314df6532e0@free.fr>
References: <c22b01d0f00fb508fe64b314df6532e0@free.fr>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19052104-0028-0000-0000-0000036FCFD2
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19052104-0029-0000-0000-0000242F77D8
Message-Id: <20190521143154.7ad4f4f8@kryten>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-20_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=735 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905210029
Subject: Re: [Linuxppc-users] [EXTERNAL] AES NX Coprocessor dm-crypt support
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

> I am interested in support for the NX AES Coprocessor as described in 
> section 11.1 and 25.3 of the POWER9 User Manual in Linux's dm-crypt.
> 
> Currently I am using LUKS on NVMe drives that advertise having
> 3.2GB/s read speeds (Samsung) and I am currently capped to 1GB/s with
> current on-chip instructions (vcipher etc).
> 
> If we consider the advertised performance for the NX Coprocessors and
> my dual CPU system, two NX engines per CPU (6.4 * 2 * 2), it would
> total for 25.6 Gbps 256bit AES performance which equals 3.2GB/s. That
> would allow me to use LUKS over my NVMe drives without performance
> loss, which is needless to say, quite awesome.

What algorithm are you using? Is it AES-XTS? On my box:

# cryptsetup benchmark --cipher aes-xts-plain64

#     Algorithm | Key |  Encryption |  Decryption
        aes-xts   256b  2332.2 MiB/s  2366.8 MiB/s

That's just crypto performance - adding in I/O will see that number drop,
but 1 GB/sec seems a bit low. I just took a look at the AES-XTS
algorithm and I see a few places we can pick up a bit of performance
(perhaps 10%).

Keep in mind that you are comparing a single threaded in core result
with a projected multi threaded NX result. The in core results will
scale with the number of cores you have, and even 2 cores will exceed
the performance of all 4 NX accelerators.

Thanks,
Anton

> 
> Another significant benefit of this would be XMR mining, the current 
> latest POWER miner does not make use of NX coprocessors. ( 
> https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_madscientist159_xmrig&d=DwICAg&c=jf_iaSHvJObTbx-siA1ZOg&r=azkGdnz7EYeVmhCvUFAXMMwzYZqpcBIElGi1DsA0tKU&m=Nito0Ak3Mdo6mT2SflTzQb-SP6s6Zzu4kvBvoWYcJek&s=1G2rfMAGH6r7CmZqKQaZy9InJT-f8AD2yKJPYMTuCF8&e= ).
> 
> How would I go about this? Currently there's a gzip implementation at 
> https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_abalib_power-2Dgzip&d=DwICAg&c=jf_iaSHvJObTbx-siA1ZOg&r=azkGdnz7EYeVmhCvUFAXMMwzYZqpcBIElGi1DsA0tKU&m=Nito0Ak3Mdo6mT2SflTzQb-SP6s6Zzu4kvBvoWYcJek&s=yCOEOyXyZMDPplivKtIC-X6iUbm2OcGxeqtt8qn07ac&e=
> - it's cited in the manual.
> 
> PS: I'm part of an active community around POWER9 and the Talos II 
> systems at #talos-workstation on Freenode IRC, feel free to join and 
> ping JSharp, tpearson, koenigni, awordnot or (myself) dftxbs3e about 
> this.
> 
> Thanks
> _______________________________________________
> Linuxppc-users mailing list
> Linuxppc-users@lists.ozlabs.org
> https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.ozlabs.org_listinfo_linuxppc-2Dusers&d=DwICAg&c=jf_iaSHvJObTbx-siA1ZOg&r=azkGdnz7EYeVmhCvUFAXMMwzYZqpcBIElGi1DsA0tKU&m=Nito0Ak3Mdo6mT2SflTzQb-SP6s6Zzu4kvBvoWYcJek&s=gR67RzAkTYo7EfuE7v7dLYhNnABkDUIkiF6LnoZIlkE&e=

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
