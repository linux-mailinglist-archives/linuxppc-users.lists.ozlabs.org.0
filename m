Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2404:9400:2:0:216:3eff:fee1:b9f1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1274BA709
	for <lists+linuxppc-users@lfdr.de>; Thu, 17 Feb 2022 18:25:46 +0100 (CET)
Received: from boromir.ozlabs.org (localhost [IPv6:::1])
	by lists.ozlabs.org (Postfix) with ESMTP id 4K01tw1Xtsz3cYg
	for <lists+linuxppc-users@lfdr.de>; Fri, 18 Feb 2022 04:25:44 +1100 (AEDT)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org; spf=pass (sender SPF authorized)
 smtp.mailfrom=molgen.mpg.de (client-ip=141.14.17.11; helo=mx1.molgen.mpg.de;
 envelope-from=pmenzel@molgen.mpg.de; receiver=<UNKNOWN>)
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 4K01tj5lT3z3cPD
 for <linuxppc-users@lists.ozlabs.org>; Fri, 18 Feb 2022 04:25:32 +1100 (AEDT)
Received: from [192.168.0.2] (ip5f5aeb9b.dynamic.kabel-deutschland.de
 [95.90.235.155])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A8CCE61E6478B
 for <linuxppc-users@lists.ozlabs.org>; Thu, 17 Feb 2022 18:25:27 +0100 (CET)
Message-ID: <20c1f6ca-38c1-472d-6ed2-5ebf83602966@molgen.mpg.de>
Date: Thu, 17 Feb 2022 18:25:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-US
To: linuxppc-users@lists.ozlabs.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
Subject: [Linuxppc-users] raid6test results for POWER9 and Power10
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

Dear PPC users,


On the POWER8 server IBM S822LC, Linux 5.17-rc1 reports:

     raid6: vpermxor8 gen() 23343 MB/s
     raid6: vpermxor4 gen() 22306 MB/s
     raid6: vpermxor2 gen() 17970 MB/s
     raid6: vpermxor1 gen() 12650 MB/s
     raid6: altivecx8 gen() 13845 MB/s
     raid6: altivecx4 gen() 12820 MB/s
     raid6: altivecx2 gen() 12673 MB/s
     raid6: altivecx1 gen()  9287 MB/s
     raid6: int64x8  gen()  3908 MB/s
     raid6: int64x4  gen()  4939 MB/s
     raid6: int64x2  gen()  3960 MB/s
     raid6: int64x1  gen()  2906 MB/s
     raid6: using algorithm vpermxor8 gen() 23343 MB/s
     raid6: using intx1 recovery algorithm

Can somebody please post the benchmark results for POWER9 and Power10?


Kind regards,

Paul
_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
