Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id 37534A712D
	for <lists+linuxppc-users@lfdr.de>; Tue,  3 Sep 2019 18:57:57 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 46NCnG5SBrzDqWv
	for <lists+linuxppc-users@lfdr.de>; Wed,  4 Sep 2019 02:57:54 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (mailfrom) smtp.mailfrom=vantosh.com
 (client-ip=188.118.22.251; helo=vtloadbalancer2.vantosh.com;
 envelope-from=toshaan@vantosh.com; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=vantosh.com
X-Greylist: delayed 3043 seconds by postgrey-1.36 at bilbo;
 Wed, 04 Sep 2019 02:42:28 AEST
Received: from vtloadbalancer2.vantosh.com (vtloadbalancer2.vantosh.com
 [188.118.22.251])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 46NCRS5g8qzDqmT
 for <linuxppc-users@lists.ozlabs.org>; Wed,  4 Sep 2019 02:42:28 +1000 (AEST)
Received: from trloadbalancer1.vantosh.com (trloadbalancer1.vantosh.com
 [10.85.247.59])
 by vtloadbalancer2.vantosh.com (8.14.7/8.14.7) with ESMTP id x83Fccx5005993
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Tue, 3 Sep 2019 17:38:38 +0200
Received: from localhost.localdomain ([10.130.132.253]) (authenticated bits=0)
 by trloadbalancer1.vantosh.com (8.14.7/8.14.7) with ESMTP id x83FpULw028717
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NOT)
 for <linuxppc-users@lists.ozlabs.org>; Tue, 3 Sep 2019 17:51:31 +0200
To: linuxppc-users@lists.ozlabs.org
References: <OFAE7466DE.11482CBD-ON00258465.004651E8-43258465.00469545@notes.na.collabserv.com>
From: Toshaan Bharvani | VanTosh <toshaan@vantosh.com>
Openpgp: preference=signencrypt
Autocrypt: addr=toshaan@vantosh.com; prefer-encrypt=mutual; keydata=
 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
 BAyWJ+wbJI17xrARpz+pbOSUwa2CfQ==
Message-ID: <a748041b-1eb5-741c-b7e7-41a0e43d0af0@vantosh.com>
Date: Tue, 3 Sep 2019 17:51:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <OFAE7466DE.11482CBD-ON00258465.004651E8-43258465.00469545@notes.na.collabserv.com>
Content-Language: en-GB
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
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

Yasal,


On 29/08/2019 14:50, Yasal Akgun wrote:
> Hi,
> =

> Do you have references for postgresql running on Power (LPAR or
> full-dedicated)?

We have multiple instances of PostgreSQL v10 and v11, all on Linux ppc64
and ppc64le. We run this for multiple of our customers.
All are running in Linux KVM Qemu virtual machines.
We also have x86_64 to compare with


> =

> =

> Yasal Akg=FCn
> =

> Technical Sales & Consultant for Power & Cognitive Systems
> Systems, IBM Turkey
> =

> Mobile-1 : 90 555 517 5533
> Mobile-2 : 90 549 455 4822
> Work : 90 312 455 4822
> yasal@tr.ibm.com

Regards,
Toshaan.

-- =

--
Toshaan Bharvani
+32-(0)476-66.70.55
toshaan@vantosh.com
@toshywoshy
--
_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
