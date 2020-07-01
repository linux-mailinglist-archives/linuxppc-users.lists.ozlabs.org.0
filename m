Return-Path: <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>
X-Original-To: lists+linuxppc-users@lfdr.de
Delivered-To: lists+linuxppc-users@lfdr.de
Received: from lists.ozlabs.org (lists.ozlabs.org [203.11.71.2])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFFF211580
	for <lists+linuxppc-users@lfdr.de>; Wed,  1 Jul 2020 23:57:24 +0200 (CEST)
Received: from bilbo.ozlabs.org (lists.ozlabs.org [IPv6:2401:3900:2:1::3])
	by lists.ozlabs.org (Postfix) with ESMTP id 49xw7P74WFzDqmh
	for <lists+linuxppc-users@lfdr.de>; Thu,  2 Jul 2020 07:57:21 +1000 (AEST)
X-Original-To: linuxppc-users@lists.ozlabs.org
Delivered-To: linuxppc-users@lists.ozlabs.org
Authentication-Results: lists.ozlabs.org; spf=pass (sender SPF authorized)
 smtp.mailfrom=ascii.art.br (client-ip=23.83.212.18;
 helo=bisque.elm.relay.mailchannels.net; envelope-from=tuliom@ascii.art.br;
 receiver=<UNKNOWN>)
Authentication-Results: lists.ozlabs.org;
 dmarc=none (p=none dis=none) header.from=ascii.art.br
Authentication-Results: lists.ozlabs.org; dkim=pass (1024-bit key;
 unprotected) header.d=ascii.art.br header.i=@ascii.art.br header.a=rsa-sha1
 header.s=ascii.art.br header.b=JJ4QcaFM; 
 dkim-atps=neutral
Received: from bisque.elm.relay.mailchannels.net
 (bisque.elm.relay.mailchannels.net [23.83.212.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.ozlabs.org (Postfix) with ESMTPS id 49xw6t5gtKzDqLX
 for <linuxppc-users@lists.ozlabs.org>; Thu,  2 Jul 2020 07:56:52 +1000 (AEST)
X-Sender-Id: dreamhost|x-authsender|tuliom@ascii.art.br
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id 1C957361F18;
 Wed,  1 Jul 2020 21:41:26 +0000 (UTC)
Received: from pdx1-sub0-mail-a31.g.dreamhost.com
 (100-96-1-7.trex.outbound.svc.cluster.local [100.96.1.7])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id 3417A361EF4;
 Wed,  1 Jul 2020 21:41:25 +0000 (UTC)
X-Sender-Id: dreamhost|x-authsender|tuliom@ascii.art.br
Received: from pdx1-sub0-mail-a31.g.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
 by 0.0.0.0:2500 (trex/5.18.8); Wed, 01 Jul 2020 21:41:25 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|tuliom@ascii.art.br
X-MailChannels-Auth-Id: dreamhost
X-Spicy-Shoe: 526166ce7452ed17_1593639685677_380850414
X-MC-Loop-Signature: 1593639685677:1557677605
X-MC-Ingress-Time: 1593639685677
Received: from pdx1-sub0-mail-a31.g.dreamhost.com (localhost [127.0.0.1])
 by pdx1-sub0-mail-a31.g.dreamhost.com (Postfix) with ESMTP id DB80E7F60B;
 Wed,  1 Jul 2020 14:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=ascii.art.br; h=from:to:cc
 :subject:in-reply-to:references:date:message-id:mime-version
 :content-type:content-transfer-encoding; s=ascii.art.br; bh=ZduX
 xpzrJ9ZbZG6BINFP++prfZA=; b=JJ4QcaFMS4Jd+ZQP19LAWlWMz+RTu21l5ct0
 3HQeBs7G7rdnfVQIftZ7cvPR9mMXKR+Or00y6dkbnvNRXLxicjVKpZOmFbTkPh4L
 cIGogUubAbSH8Q55Bc0VQDxCBDCkZTgslnnXyAtjY7Qn1NCceIHo1BJagh0bbK1U
 yaHFOnA=
Received: from ascii.art.br (ip-187-17-242-233.isp.valenet.com.br
 [187.17.242.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: tuliom@ascii.art.br)
 by pdx1-sub0-mail-a31.g.dreamhost.com (Postfix) with ESMTPSA id 0DAE77F607;
 Wed,  1 Jul 2020 14:41:21 -0700 (PDT)
X-DH-BACKEND: pdx1-sub0-mail-a31
From: Tulio Magno Quites Machado Filho <tuliom@ascii.art.br>
To: Tommi Sihvo <Tommi.Sihvo@tietoevry.com>, Dan =?utf-8?Q?Hor=C3=A1k?=
 <dan@danny.cz>, "linuxppc-users\@lists.ozlabs.org"
 <linuxppc-users@lists.ozlabs.org>
In-Reply-To: <78D1486A-9D51-4522-BE18-F6948BDCA841@tieto.com>
References: <181BAE84-2F75-49AC-9F05-307D1423812A@tieto.com>
 <20200629172119.b9897a295a4490b81f43088b@danny.cz>
 <78D1486A-9D51-4522-BE18-F6948BDCA841@tieto.com>
User-Agent: Notmuch/0.29.1 (http://notmuchmail.org) Emacs/26.3
 (x86_64-redhat-linux-gnu)
Date: Wed, 01 Jul 2020 18:41:18 -0300
Message-ID: <871rlukj5t.fsf@linux.ibm.com>
MIME-Version: 1.0
X-VR-OUT-STATUS: OK
X-VR-OUT-SCORE: -100
X-VR-OUT-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrtdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuggftfghnshhusghstghrihgsvgdpffftgfetoffjqffuvfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvufgjfhgffffkgggtgfesthhqredttderjeenucfhrhhomhepvfhulhhiohcuofgrghhnohcusfhuihhtvghsucforggthhgrughoucfhihhlhhhouceothhulhhiohhmsegrshgtihhirdgrrhhtrdgsrheqnecuggftrfgrthhtvghrnhephfejueeffeefueefheehheehudehtdfhieeghedugfevlefgtdekhfeileevhfejnecuffhomhgrihhnpehfuhhnvghtrdhfihdpphihphhirdhorhhgpdhphihthhhonhhhohhsthgvugdrohhrghdpfhgvughorhgrphhrohhjvggtthdrohhrghenucfkphepudekjedrudejrddvgedvrddvfeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhppdhhvghloheprghstghiihdrrghrthdrsghrpdhinhgvthepudekjedrudejrddvgedvrddvfeefpdhrvghtuhhrnhdqphgrthhhpefvuhhlihhoucforghgnhhoucfsuhhithgvshcuofgrtghhrgguohcuhfhilhhhohcuoehtuhhlihhomhesrghstghiihdrrghrthdrsghrqedpmhgrihhlfhhrohhmpehtuhhlihhomhesrghstghiihdrrghrthdrsghrpdhnrhgtphhtthhopehlihhnuh
 igphhptgdquhhsvghrsheslhhishhtshdrohiilhgrsghsrdhorhhg
Subject: Re: [Linuxppc-users] EPEL repo updates for ppc64le ?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org
Sender: "Linuxppc-users"
 <linuxppc-users-bounces+lists+linuxppc-users=lfdr.de@lists.ozlabs.org>

SGkgVG9tbWksCgoiVG9tbWkgU2lodm8iIDxUb21taS5TaWh2b0B0aWV0b2V2cnkuY29tPiB3cml0
ZXM6Cgo+IE9uIHRoYXQgcHBjNjRsZSBlcGVsIHJlcG8sIGZvciBleGFtcGxlIHRoaXMgcGFja2Fn
ZSBpcyBvbiBxdWl0ZSBvbGQgbGV2ZWwgOgo+Cj4gYXNuMWNyeXB0byAoMC4yNC4wKSAoZnJvbSAz
LzIwMTkpOwoKQXMgRGFuIHNhaWQsIEVQRUwgaXMgYSBGZWRvcmEgcmVwb3NpdG9yeS4KSXQgaXNu
J3Qgc3BlY2lmaWMgdG8gcHBjNjRsZSwgZS5nLgpodHRwOi8vZnRwLmZ1bmV0LmZpL3B1Yi9saW51
eC9taXJyb3JzL3JlZGhhdC9lcGVsLzdTZXJ2ZXIveDg2XzY0L1BhY2thZ2VzL3AvcHl0aG9uMi1h
c24xY3J5cHRvLTAuMjQuMC03LmVsNy5ub2FyY2gucnBtCgo+IGNvbXBhcmVkIHRvIHNpbWlsYXIg
eDg2IHBhY2thZ2UgOiBodHRwczovL3B5cGkub3JnL3Byb2plY3QvYXNuMWNyeXB0by8pICgxLjMu
MCkKClB5cGkgaXMgbm90IHNwZWNpZmljIHRvIHg4NiBlaXRoZXIuICBZb3UgY2FuIGFsc28gaW5z
dGFsbCB0aGlzIHBhY2thZ2Ugb24KcHBjNjRsZToKCiQgcGlwMyBpbnN0YWxsIC0tdXNlciBhc24x
Y3J5cHRvCkNvbGxlY3RpbmcgYXNuMWNyeXB0bwogIERvd25sb2FkaW5nIGh0dHBzOi8vZmlsZXMu
cHl0aG9uaG9zdGVkLm9yZy9wYWNrYWdlcy9lOS81MS8xZGI0YTYwMDQ5ZmI3MzkwOTU5YmU1ODZi
NmViNzQzMDk4ZTZjZWEzZjZiMmQzZWQ5ZTE3ZmVjNjJiYTIvYXNuMWNyeXB0by0xLjMuMC1weTIu
cHkzLW5vbmUtYW55LndobCAoMTAza0IpCiAgICAxMDAlIHzilojilojilojilojilojilojiloji
lojilojilojilojilojilojilojilojilojilojilojilojilojilojilojilojilojilojiloji
lojilojilojilojilojiloh8IDExMmtCIDI1NWtCL3MgCkluc3RhbGxpbmcgY29sbGVjdGVkIHBh
Y2thZ2VzOiBhc24xY3J5cHRvClN1Y2Nlc3NmdWxseSBpbnN0YWxsZWQgYXNuMWNyeXB0by0xLjMu
MAokIHVuYW1lIC1tCnBwYzY0bGUKCj4gU28gd2FzIGp1c3Qgd29uZGVyaW5nIGlmIHRoZXJlIHdv
dWxkIGJlIHBvc3NpYmlsaXR5IHRvIGhhdmUgbmV3ZXIgdmVyc2lvbnMKPiBmb3IgcHBjNjRsZSBh
cyB3ZWxsIHNvbWVob3c/CgpJbiBvcmRlciB0byB1cGRhdGUgcGFja2FnZXMgbWFpbnRhaW5lZCBi
eSB0aGUgRmVkb3JhIGNvbW11bml0eSwgeW91IG5lZWQgdG8KY29udGFjdCB0aGUgbWFpbnRhaW5l
cnMuCkxldCBtZSBsaXN0IHdoZXJlIHlvdSBjYW4gZmluZCBtb3JlIGluZm9ybWF0aW9uIGFib3V0
IGEgZmV3IG9mIHRoZXNlIHBhY2thZ2VzCm9uIEVQRUw6Cgo+IFBhY2thZ2UgICAgICAgIFZlcnNp
b24KPgo+IC0tLS0tLS0tLS0tLS0tIC0tLS0tLS0tLS0KPgo+IGFzbjFjcnlwdG8gKDAuMjQuMCkK
Cmh0dHBzOi8vc3JjLmZlZG9yYXByb2plY3Qub3JnL3JwbXMvcHl0aG9uLWFzbjFjcnlwdG8KCj4g
YXR0cnMgKDE3LjQuMCkKCmh0dHBzOi8vc3JjLmZlZG9yYXByb2plY3Qub3JnL3JwbXMvcHl0aG9u
LWF0dHJzCgo+IGNlcnRpZmkgKDIwMTguMTAuMTUpCgpodHRwczovL3NyYy5mZWRvcmFwcm9qZWN0
Lm9yZy9ycG1zL3B5dGhvbi1jZXJ0aWZpCgoKLS0gClR1bGlvIE1hZ25vCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4cHBjLXVzZXJzIG1haWxpbmcg
bGlzdApMaW51eHBwYy11c2Vyc0BsaXN0cy5vemxhYnMub3JnCmh0dHBzOi8vbGlzdHMub3psYWJz
Lm9yZy9saXN0aW5mby9saW51eHBwYy11c2Vycwo=
