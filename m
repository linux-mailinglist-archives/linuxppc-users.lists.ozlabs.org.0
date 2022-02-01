Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2404:9400:2:0:216:3eff:fee1:b9f1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AAC4A6036
	for <lists+linuxppc-users@lfdr.de>; Tue,  1 Feb 2022 16:34:18 +0100 (CET)
Received: from boromir.ozlabs.org (localhost [IPv6:::1])
	by lists.ozlabs.org (Postfix) with ESMTP id 4Jp89h4P0tz2xrm
	for <lists+linuxppc-users@lfdr.de>; Wed,  2 Feb 2022 02:34:16 +1100 (AEDT)
Authentication-Results: lists.ozlabs.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.a=rsa-sha256 header.s=susede2_rsa header.b=ocbO1/sR;
	dkim=fail reason="signature verification failed" header.d=suse.de header.i=@suse.de header.a=ed25519-sha256 header.s=susede2_ed25519 header.b=iLaTR1bI;
	dkim-atps=neutral
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org;
 spf=pass (sender SPF authorized) smtp.mailfrom=suse.de
 (client-ip=195.135.220.28; helo=smtp-out1.suse.de;
 envelope-from=dmueller@suse.de; receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org; dkim=pass (1024-bit key;
 unprotected) header.d=suse.de header.i=@suse.de header.a=rsa-sha256
 header.s=susede2_rsa header.b=ocbO1/sR; 
 dkim=pass header.d=suse.de header.i=@suse.de header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=iLaTR1bI; 
 dkim-atps=neutral
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 4Jp05V0gwQz2xsc
 for <linuxppc-users@lists.ozlabs.org>; Tue,  1 Feb 2022 20:30:05 +1100 (AEDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 2CAAC21114;
 Tue,  1 Feb 2022 09:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1643707801; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uzJ9IaZwktVODOrMTmYN4f2QjcibjowW5LwRCfHtnJs=;
 b=ocbO1/sRt2JfttmRSAK+QnNIhFQZnISwZ6cBR9M/GmeE2V6iTJ2Xgvl02j7xmK3Bh044M0
 zV3s4SNxn3sItM7YKhiahZFbPX3zKnRQx1dfLaY3cMEmR1sudJmDHocEBySC4HE+yAA055
 QTOjp2V2wQCPqOJBgCpjC6cSU0V+zik=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1643707801;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uzJ9IaZwktVODOrMTmYN4f2QjcibjowW5LwRCfHtnJs=;
 b=iLaTR1bIp9V7QZ0fcMGyFOqimwzXZnzgoIMHivQA4JzWxPBCWST9lMnCbj9MkrnTXk9emn
 dF5XQ2HrVdtz94DA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 1821813CF0;
 Tue,  1 Feb 2022 09:30:01 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id gdraBJn9+GGWcAAAMHmgww
 (envelope-from <dmueller@suse.de>); Tue, 01 Feb 2022 09:30:01 +0000
From: Dirk =?ISO-8859-1?Q?M=FCller?= <dmueller@suse.de>
To: linuxppc-users@lists.ozlabs.org, Paul Menzel <pmenzel@molgen.mpg.de>
Date: Tue, 01 Feb 2022 10:30:00 +0100
Message-ID: <2872057.ZOAX1rYKIr@magnolia>
Organization: SUSE Software Solutions Germany GmbH; GF: Ivo Totev;
 HRB 36809 (AG =?UTF-8?B?TsO8cm5iZXJnKQ==?=
In-Reply-To: <bcda57e8-50d2-c2be-de9d-8ed97effb783@molgen.mpg.de>
References: <bcda57e8-50d2-c2be-de9d-8ed97effb783@molgen.mpg.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 02 Feb 2022 02:34:07 +1100
Subject: Re: [Linuxppc-users] Linux: raid6 benchmark: using intx1 recovery
 algorithm
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

On Samstag, 29. Januar 2022 21:22:37 CET Paul Menzel wrote:

Hi Paul,

> [    1.381350] ebbd.molgen.mpg.de kernel: raid6: vpermxor8 gen() 23033 MB/s
> [    2.130343] ebbd.molgen.mpg.de kernel: raid6: using algorithm
> vpermxor8 gen() 23033 MB/s
> [    2.130418] ebbd.molgen.mpg.de kernel: raid6: using intx1 recovery
> algorithm

> For the recovery algorithm, it chooses intx1. Do you know why? 

There is no other implementation available on powerpc. the recovery algorithm 
is defined by raid6_recov_algos - it has no implementation for powerpc, so 
there is only one, and it picks that one.

for gen() there are multiple ones available, and it benchmarks the most 
performing one and picks that one. 

Greetings,
Dirk




_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
