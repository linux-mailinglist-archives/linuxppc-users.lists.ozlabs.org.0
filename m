Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D4536ECB
	for <lists+linuxppc-users@lfdr.de>; Thu,  6 Jun 2019 10:35:23 +0200 (CEST)
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 45KJrT3M0czDqcH
	for <lists+linuxppc-users@lfdr.de>; Thu,  6 Jun 2019 18:35:21 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=none (mailfrom) smtp.mailfrom=danny.cz
 (client-ip=88.101.155.72; helo=server.danny.cz; envelope-from=dan@danny.cz;
 receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=danny.cz
X-Greylist: delayed 305 seconds by postgrey-1.36 at bilbo;
 Thu, 06 Jun 2019 18:35:13 AEST
Received: from server.danny.cz (72.155.broadband6.iol.cz [88.101.155.72])
 by lists.ozlabs.org (Postfix) with ESMTP id 45KJrK3mxJzDqHf
 for <linuxppc-users@lists.ozlabs.org>; Thu,  6 Jun 2019 18:35:13 +1000 (AEST)
Received: from talos.danny.cz (unknown
 [IPv6:2001:470:5c11:160:2e09:4dff:fe00:160])
 by server.danny.cz (Postfix) with SMTP id 501D41EACE
 for <linuxppc-users@lists.ozlabs.org>; Thu,  6 Jun 2019 10:30:02 +0200 (CEST)
Date: Thu, 6 Jun 2019 10:30:02 +0200
From: Dan =?UTF-8?B?SG9yw6Fr?= <dan@danny.cz>
To: linuxppc-users@lists.ozlabs.org
Message-Id: <20190606103002.34a4cd7ffdf96d24bee8b0fc@danny.cz>
In-Reply-To: <AM6PR05MB4150FEB18E045FF54F7516A5AD170@AM6PR05MB4150.eurprd05.prod.outlook.com>
References: <AM6PR05MB4150FEB18E045FF54F7516A5AD170@AM6PR05MB4150.eurprd05.prod.outlook.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; powerpc64le-redhat-linux-gnu)
Mime-Version: 1.0
Subject: Re: [Linuxppc-users] Redhat 8 on Power9 certification - SAP HANA
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

On Thu, 6 Jun 2019 08:02:21 +0000
"GOSSELIN Sacha (renexter)" <sacha.gosselin-extern@renault.com> wrote:

> Hello,
> 
> I'm SAP HANA Technical Consultant and I'm looking for roadmap or
> information about Redhat8 certification on Power9.
> 
> Of course, it's in SAP HANA perimeter and I asked to SAP but they
> have no idea about the schedule or if it is scheduled.. I don't
> understand.
> 
> The problem is that no Redhat version is supported on Power9, only
> SLES.

hmm, you should be able get "Red Hat Enterprise Linux for Power LE
(POWER9)", which is RHEL-7


		Dan
_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
