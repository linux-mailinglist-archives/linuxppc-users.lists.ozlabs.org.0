Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [IPv6:2404:9400:2:0:216:3eff:fee1:b9f1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC70998982
	for <lists+linuxppc-users@lfdr.de>; Thu, 10 Oct 2024 16:28:48 +0200 (CEST)
Received: from boromir.ozlabs.org (localhost [IPv6:::1])
	by lists.ozlabs.org (Postfix) with ESMTP id 4XPXDs5kC2z3bxH
	for <lists+linuxppc-users@lfdr.de>; Fri, 11 Oct 2024 01:28:45 +1100 (AEDT)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org; arc=none smtp.remote-ip=213.209.10.33
ARC-Seal: i=1; a=rsa-sha256; d=lists.ozlabs.org; s=201707; t=1728570523;
	cv=none; b=kazQifyq6XvQ10ipkd8flMuG5MW8SQgCFJAfG9/ux8xzzu2gcOPfP3Hk+N0kpREOnKle8kdc6+ZESTUOls5Flg9iWSmZ4i9zTmweZSRP+MINVNAi2l9RhLwUvNz4tm8CL724cHXFo5fE7E1bNjTs/4uBR2ho6Hdxy7iOyuTdz58sxg2xRQjxWU6SLC5YXXa/fCA8CL5XAXZuWEVNsS4XnWbzxAHf5kk1eJUBY7JYjf+wYe0LUd/jOVsSM96F5OWmymvvbbH3lU3G5urVfmQ2Hgc+Z+rpVeFV57iuXYVPJHWX88PTyV3lqtLum0fZv7YNAawWb0cNpieKa3p3Ubc3jw==
ARC-Message-Signature: i=1; a=rsa-sha256; d=lists.ozlabs.org; s=201707;
	t=1728570523; c=relaxed/relaxed;
	bh=qWQAQ6hs+gdhrPTjO4tthpEw0kP/QQG2H8fGFP6YkHY=;
	h=From:To:Subject:Date:MIME-Version:Content-Type:
	 Content-Disposition:Message-Id; b=jZexBY1hKleChGPCgCJIfLdahImB9sj/mCKPucbMJAmG/QPMwFP8zBw8//kUGoGW+TQlJJx/F/zywL11RlEFJ5oJuDir8aEVStM9MQxmPOwPS9JZm/dVc5FWDwbwlTkbhTYIC7A5VVBqmZK1Tup/YVkRn7N2KslJBBKf88SX3R+VNfldRqOEnSdFuDcY8ptGiH6z2kj4/lFj1qfTNx6Y2AhEsjYnL8hZLqjyZ+Lwgz3e478oiL4OA245if42+Iaff5A6kmWX2jQtJh16e0X+Ns391dUMJHQ4m+bLicCVRQB1hf9/gxjEG8GNUIidJWne8rkTMJ863atfzTKwd1YsQQ==
ARC-Authentication-Results: i=1; lists.ozlabs.org; dmarc=pass (p=quarantine dis=none) header.from=libero.it; dkim=pass (2048-bit key; unprotected) header.d=libero.it header.i=@libero.it header.a=rsa-sha256 header.s=s2021 header.b=BR+GzxHA; dkim-atps=neutral; spf=pass (client-ip=213.209.10.33; helo=libero.it; envelope-from=sacarde@libero.it; receiver=lists.ozlabs.org) smtp.mailfrom=libero.it
Authentication-Results: lists.ozlabs.org; dmarc=pass (p=quarantine dis=none) header.from=libero.it
Authentication-Results: lists.ozlabs.org;
	dkim=pass (2048-bit key; unprotected) header.d=libero.it header.i=@libero.it header.a=rsa-sha256 header.s=s2021 header.b=BR+GzxHA;
	dkim-atps=neutral
Authentication-Results: lists.ozlabs.org; spf=pass (sender SPF authorized) smtp.mailfrom=libero.it (client-ip=213.209.10.33; helo=libero.it; envelope-from=sacarde@libero.it; receiver=lists.ozlabs.org)
X-Greylist: delayed 288 seconds by postgrey-1.37 at boromir; Fri, 11 Oct 2024 01:28:39 AEDT
Received: from libero.it (smtp-33.italiaonline.it [213.209.10.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lists.ozlabs.org (Postfix) with ESMTPS id 4XPXDl3YRlz3bgQ
	for <linuxppc-users@lists.ozlabs.org>; Fri, 11 Oct 2024 01:28:39 +1100 (AEDT)
Received: from sacarde-desktop ([151.40.155.75])
	by smtp-33.iol.local with ESMTPSA
	id yu2zsLcMU2zszyu30s6sea; Thu, 10 Oct 2024 16:21:46 +0200
x-libjamoibt: 1601
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=libero.it; s=s2021;
	t=1728570106; bh=qWQAQ6hs+gdhrPTjO4tthpEw0kP/QQG2H8fGFP6YkHY=;
	h=From;
	b=BR+GzxHA/voIfx8VmoJ1jQV5feiB77JfbSdQwhgjVi65YiAGP4T23zBKYJh2SvItt
	 Gf37x9faLOXVcZznhJSyzzeuMwMwK1IoXsox8o7tivq4MlERzRgiS6ig6fJDBqsFng
	 ZF9Gh9sHMMYhWsdl+GEAFGtsiUKpIQwBjBOI9unwKSmd0dAaf9Nh5Af/KVWWnw6r+F
	 yv3aiQf3cPUDycn1n/aTaSB24ajg4yoTw1LFfZAh4w+6HVi/QXxhbBTFRtmMUb8JfQ
	 pLror3M3wBo9un2QBAEYIeVJAffBp6s1skV25ghroYS0+pYqdyFy9YTyRBWPC+nhFQ
	 vk4emaFVsj5GA==
X-CNFS-Analysis: v=2.4 cv=ZtQmKM7G c=1 sm=1 tr=0 ts=6707e2fa cx=a_exe
 a=Q/6sRJRRLQxqRthaxo8CVw==:117 a=Q/6sRJRRLQxqRthaxo8CVw==:17
 a=kj9zAlcOel0A:10 a=7R64T7bDAAAA:8 a=QpFc9shXgXCiViVXE-YA:9 a=CjuIK1q_8ugA:10
 a=SHfIqf8G4jEA:10 a=d56d83uzKjQ6tSD3utYi:22 a=p2tsehRBjMnj6wN1BWbM:22
From: sacarde@libero.it
Organization: sacarde
To: linuxppc-users@lists.ozlabs.org
Date: Thu, 10 Oct 2024 16:21:24 +0200
User-Agent: KMail/1.9.10
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <202410101621.24271.sacarde@libero.it>
X-CMAE-Envelope: MS4xfE3K4SRgyTnoSRXKKGsh9iLoy36M3qLOarTdxZw7yPecDWXzSfIl1WWhUHYJ6gARRqrkStq27fxJ9BV568ldYEmGz2WJd+ACDJ3y4Hj7IIWeQpnrhqL4
 lUrDX3FH2rDhtCB9rHm2WDlyL+MaapkxeNz4Aw7bEg98PcYCPogFjf+oaGBj3+uc8mgNeO5GRUzFzEOoTpj8tlPsTbJuvgT73qw=
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS,SPF_PASS autolearn=disabled version=4.0.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on lists.ozlabs.org
Subject: [Linuxppc-users] boot from openfirmware
X-BeenThere: linuxppc-users@lists.ozlabs.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Practical discussions on Power systems and Linux SW <linuxppc-users.lists.ozlabs.org>
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
Sender: "Linuxppc-users" <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

hi,
   in my mac-mini-ppc I boot: macosx and some other linux
after an kernel upgrade, I lost the Linux loader

how can I boot linux systems?

the cdrom is not recognized, can I use openfirmware?
or what?




thanks

this is my yaboot.conf: https://nopaste.net/myUOfk4lhA


sacarde@libero.it
_______________________________________________
Linuxppc-users mailing list
Linuxppc-users@lists.ozlabs.org
https://lists.ozlabs.org/listinfo/linuxppc-users
