Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id 019B526948C
	for <lists+linuxppc-users@lfdr.de>; Mon, 14 Sep 2020 20:12:58 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 4Bqvbq2wyZzDqPj
	for <lists+linuxppc-users@lfdr.de>; Tue, 15 Sep 2020 04:12:55 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org; spf=pass (sender SPF authorized)
 smtp.mailfrom=us.ibm.com (client-ip=148.163.158.5;
 helo=mx0a-001b2d01.pphosted.com; envelope-from=cel@us.ibm.com;
 receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=pass (p=none dis=none) header.from=us.ibm.com
Authentication-Results: lists.ozlabs.org; dkim=pass (2048-bit key;
 unprotected) header.d=ibm.com header.i=@ibm.com header.a=rsa-sha256
 header.s=pp1 header.b=pRn/GGli; dkim-atps=neutral
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 4BqvbP2zy2zDqPW
 for <linuxppc-users@lists.ozlabs.org>; Tue, 15 Sep 2020 04:12:30 +1000 (AEST)
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08EI3VT8030687
 for <linuxppc-users@lists.ozlabs.org>; Mon, 14 Sep 2020 14:12:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : subject :
 from : to : date : content-type : mime-version :
 content-transfer-encoding; s=pp1;
 bh=qMOhjVqeugJ4/IYl2R7EsrffJAjJMnBKgavrt1Qurok=;
 b=pRn/GGliN9Up2mygzkGopiNW3mLA6lSvBCib/H9ToqBwTdL3bzXwnANIF1y7O5qmwXIh
 fYdoGK+14vR3P7w0+rSFF6MjDiB+Lm8iz4yXE7RMMjZb2f5zMNF8Vov1etrYV9boB1G7
 XIQ6iCM1MIWghZ9k68yOrl06OMYimhTH+twfLWsmubeQk8KtqHkZx5LnwKM1wL+JbLeF
 qeBRqUYclOgh1L7S4HG3ZlNRg9WFzgdxmUQka/ktLIvmzeg0BraLAC8l4177nV6saCiQ
 rJt/2WszqgkfUjx1GXclev1n89fofwI+VmcahzbZS++orYKikRiI+4aRI27BgOrjbvMK PQ== 
Received: from ppma03dal.us.ibm.com (b.bd.3ea9.ip4.static.sl-reverse.com
 [169.62.189.11])
 by mx0b-001b2d01.pphosted.com with ESMTP id 33jcs6sa47-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Mon, 14 Sep 2020 14:12:26 -0400
Received: from pps.filterd (ppma03dal.us.ibm.com [127.0.0.1])
 by ppma03dal.us.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 08EI2VsQ027894
 for <linuxppc-users@lists.ozlabs.org>; Mon, 14 Sep 2020 18:12:25 GMT
Received: from b03cxnp08025.gho.boulder.ibm.com
 (b03cxnp08025.gho.boulder.ibm.com [9.17.130.17])
 by ppma03dal.us.ibm.com with ESMTP id 33gny96616-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Mon, 14 Sep 2020 18:12:25 +0000
Received: from b03ledav002.gho.boulder.ibm.com
 (b03ledav002.gho.boulder.ibm.com [9.17.130.233])
 by b03cxnp08025.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 08EICLnP40501634
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linuxppc-users@lists.ozlabs.org>; Mon, 14 Sep 2020 18:12:21 GMT
Received: from b03ledav002.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7F27313604F
 for <linuxppc-users@lists.ozlabs.org>; Mon, 14 Sep 2020 18:12:24 +0000 (GMT)
Received: from b03ledav002.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 023E1136051
 for <linuxppc-users@lists.ozlabs.org>; Mon, 14 Sep 2020 18:12:23 +0000 (GMT)
Received: from sig-9-65-192-58.ibm.com (unknown [9.65.192.58])
 by b03ledav002.gho.boulder.ibm.com (Postfix) with ESMTP
 for <linuxppc-users@lists.ozlabs.org>; Mon, 14 Sep 2020 18:12:23 +0000 (GMT)
Message-ID: <880bba138d34131ea6085287e65445866141ab7a.camel@us.ibm.com>
From: Carl Love <cel@us.ibm.com>
To: linuxppc-users@lists.ozlabs.org
Date: Mon, 14 Sep 2020 11:12:22 -0700
X-Mailer: Evolution 3.28.5 (3.28.5-5.el7) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-14_07:2020-09-14,
 2020-09-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 lowpriorityscore=0 clxscore=1011 spamscore=0 suspectscore=5
 mlxscore=0 bulkscore=0 phishscore=0 impostorscore=0 adultscore=0
 mlxlogscore=458 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009140142
Subject: [Linuxppc-users] Lenovo P53 question
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

Everyone:

If you are not using a Lenovo P53 laptop with Linux please ignore this
message.

If you are running Linux on a Lenovo P53 laptop, I am wondering if you
have the Lenovo Thunderbolt 3 Gen2 workstation docking station?  I am
specifically interested in knowing if the docking station works with
Linux.  

Thanks.

                   Carl Love

_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
