Delivered-To: kishantongrao123@gmail.com
Received: by 2002:ab3:1a2e:0:0:0:0:0 with SMTP id g43csp659915ltg;
        Thu, 20 Feb 2020 03:46:40 -0800 (PST)
X-Received: by 2002:a05:6e02:5c3:: with SMTP id l3mr29893922ils.260.1582199200286;
        Thu, 20 Feb 2020 03:46:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582199200; cv=none;
        d=google.com; s=arc-20160816;
        b=Fq8V7okx8AIoCMYrto7nXEEN4LECOwGA8EiFFQgwSXXyRP1KNufr4YuGbM63dfQMHB
         mYlNXm2mPw7VziGy47uxPY9C+MzKwJDEYDK7Tb5P3CDYIX6GTR77lthguGAG7qJm6Axo
         mN52U9KRbAFCMUTNN4NpzgHn28iYXPPf3JEmlFJ/t36EXu0IhhKPI/HSoxg5Wf3wX1Ww
         o5SIhuf4CZxcT0UJvE7WhVY6kZdsCAm4gpmpi63HJrSuL4F5zJKaFekle0NwLnpnUmkE
         4Sn7eb+ZoMEspHlmkNjyoG8+7EO0+l9qD0fLub6WPDtNbKC2xoxkHcl6PQbsgVmagugh
         X9WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:feedback-id:date:mime-version
         :dkim-signature;
        bh=Ag/46yBp9tlHB3akiHtSpV9lt88os/33hMQ+Za/CDKQ=;
        b=qkcYURSlL+4QBnn23fHi0Ui8YiMWI8vknUAfFa3Q96QPlRwAbtg+Hv510sI+Lbv/8k
         B6L0JKFT29t+3gqM6cNmH8gXva903V1PSbG2SguA7yO1hy4e+lxTPJvpADcHSlYNLKRb
         lNsLYqGcShU9MZuejqY7D/VeXmLqXyb7NNVw1KNNoVq32mZSEcW2ZeGQIuzamIcPmcfr
         wqzkVH0VH1fyPHu62jMrsqRa6C9AGO0ZKZ8TFkbFp6T1WZTEEbdOc56L5K2z8xI8/rKT
         IYgO2imy2m43JL1yQkieVX0se8ywkCLXBlKD+r9CF8hPPUMUGzSJqvZzNgl9XC4wZwJc
         VkTg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@accounts.google.com header.s=20161025 header.b=HUH4cRXc;
       spf=pass (google.com: domain of 3n3foxggtalqhi-lyjfsuwwiohnm.aiiafy.wig@gaia.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3n3FOXggTALQhi-lYjfsUWWiohnm.aiiafY.Wig@gaia.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=accounts.google.com
Return-Path: <3n3FOXggTALQhi-lYjfsUWWiohnm.aiiafY.Wig@gaia.bounces.google.com>
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id u10sor4229224jah.14.2020.02.20.03.46.39
        for <kishantongrao123@gmail.com>
        (Google Transport Security);
        Thu, 20 Feb 2020 03:46:40 -0800 (PST)
Received-SPF: pass (google.com: domain of 3n3foxggtalqhi-lyjfsuwwiohnm.aiiafy.wig@gaia.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@accounts.google.com header.s=20161025 header.b=HUH4cRXc;
       spf=pass (google.com: domain of 3n3foxggtalqhi-lyjfsuwwiohnm.aiiafy.wig@gaia.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3n3FOXggTALQhi-lYjfsUWWiohnm.aiiafY.Wig@gaia.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=accounts.google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=accounts.google.com; s=20161025;
        h=mime-version:date:feedback-id:message-id:subject:from:to;
        bh=Ag/46yBp9tlHB3akiHtSpV9lt88os/33hMQ+Za/CDKQ=;
        b=HUH4cRXcaumcf+JYSY7vrb+Nb6I0oj4eMPX0UWufJr64dEr1IV/wg8qBVH0Fi1sEZz
         53MZt3cAqJea0plg+Mld7x1kQ9JhxfUVdij4h519l1Ba+LvwDQxpNUNyZS0KKVKFa/i7
         MLGvohMMXvZddsQelJqUHOsGpZvyrfFXPEpNasZEBGS9WGbwcpH1EbWCKp74aVJJDkup
         VhtYNxjblsQYmynC5PxXx+5Mm6hHv/2Qyu9YavdTDUe4ZCYyxRHv2qQICRaE/GAo8roH
         VpfZnElpcLmtknclPlLGMsosz0QsOJ+n9NMwEktGtBGQhZBHN+tkRl3jVBp33+CWzhwJ
         a32A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:feedback-id:message-id:subject
         :from:to;
        bh=Ag/46yBp9tlHB3akiHtSpV9lt88os/33hMQ+Za/CDKQ=;
        b=XFHY+jEtlqjV0lCq2KZOuWVIYiSlVTxcMGA0j5hIIA/6Bwy198fAo16c59zD/L1szL
         STRvX1pfjAcZoBVO8l1uze8BnNAJvBHLcYRG/CxtGpbWAHw1cwRPbfpzr7YtdgLDCif6
         5syphyOfJ4IApNXtEQAMDV9zO41+8hwv8ap9hTNY0cXvePxZlegrkKCE6Qi0wBPADsjt
         r766TrV8980m3ZaYtuNYtyffEgIpzZQx0pnbqnOL2UiYzTw0RTxDr2hq8cfoV0dQa+9M
         /sMrKmhyvcosgv0I8NcqhU7co8939i8w7Lj9kcp53pL5eSIuX0b3OoMFWuPrGS0+shVB
         MxyQ==
X-Gm-Message-State: APjAAAUxU/noN27DmIJLkurVdkpZ9aJa/vZHsX32v0DFyrAAWGIhpQaz
	RnrvJKUJVXA8oUb/imEchNbF/S/nctx2
X-Google-Smtp-Source: APXvYqwSv+vBKXEe9toiwy90ueTTbkSOUrDAHXMNieonnqLPNiZ5t4OWRlN+3qYQRe1MMSsdI3TSgxDOxhnpNzl1A5793g==
MIME-Version: 1.0
X-Received: by 2002:a02:c611:: with SMTP id i17mr25521892jan.28.1582199199835;
 Thu, 20 Feb 2020 03:46:39 -0800 (PST)
Date: Thu, 20 Feb 2020 01:43:09 +0000 (GMT)
X-Account-Notification-Type: 188-anexp#sapef-a9--saprfsm-const--saphpraf-f1
Feedback-ID: 188-anexp#sapef-a9--saprfsm-const--saphpraf-f1:account-notifier
X-Notifications: c133a0617b800000
Message-ID: <_41BjoiH4r_gebg3SUw-Dw.0@notifications.google.com>
Subject: Help us protect you: Security advice from Google
From: Google <no-reply@accounts.google.com>
To: kishantongrao123@gmail.com
Content-Type: multipart/alternative; boundary="00000000000045270b059f0075c8"

--00000000000045270b059f0075c8
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: base64

W2ltYWdlOiBHb29nbGVdDQoNCg0KDQpDb25maXJtIHlvdXIgcmVjb3ZlcnkgcGhvbmUNCg0KDQpr
aXNoYW50b25ncmFvMTIzQGdtYWlsLmNvbQ0KDQoNCg0KR29vZ2xlIGNhbiB1c2UgdGhpcyBwaG9u
ZSBudW1iZXIgdG8gbWFrZSBzdXJlIGl04oCZcyByZWFsbHkgeW91IGlmIHlvdSBnZXQNCmxvY2tl
ZCBvdXQgb2YgeW91ciBhY2NvdW50IG9yIGlmIHdlIG5vdGljZSBzdXNwaWNpb3VzIGFjdGl2aXR5
Lg0KQ29uZmlybSB5b3VyIHJlY292ZXJ5IHBob25lIG51bWJlciAwOTA0OTQgNTI5NDQgYW5kIHNl
ZSBvdGhlciBwZXJzb25hbGl6ZWQNCnNlY3VyaXR5IHJlY29tbWVuZGF0aW9ucyBpbiB0aGUgU2Vj
dXJpdHkgQ2hlY2t1cC4NClRha2UgYWN0aW9uDQo8aHR0cHM6Ly9hY2NvdW50cy5nb29nbGUuY29t
L0FjY291bnRDaG9vc2VyP0VtYWlsPWtpc2hhbnRvbmdyYW8xMjNAZ21haWwuY29tJmNvbnRpbnVl
PWh0dHBzOi8vbXlhY2NvdW50Lmdvb2dsZS5jb20vc2VjdXJpdHktY2hlY2t1cD91dG1fc291cmNl
JTNEZ29vZ2xlJTI2dXRtX21lZGl1bSUzRGVtYWlsJTI2dXRtX2NhbXBhaWduJTNEc2FwJTI2YW5l
aWQlM0QxMzk5NDM5NTU0MTg3NDcwODQ1JTI2c2VhJTNEMjQlMjZyZm4lM0QxNTgyMTYyOTg5ODA2
JTI2YW5leHAlM0RzYXBlZi1hOS0tc2FwcmZzbS1jb25zdC0tc2FwaHByYWYtZjE+DQpZb3UgY2Fu
IGFsc28gZ28gZGlyZWN0bHkgdG86DQpodHRwczovL215YWNjb3VudC5nb29nbGUuY29tL3NlY3Vy
aXR5LWNoZWNrdXANCllvdSByZWNlaXZlZCB0aGlzIGVtYWlsIHRvIGxldCB5b3Uga25vdyBhYm91
dCBpbXBvcnRhbnQgY2hhbmdlcyB0byB5b3VyDQpHb29nbGUgQWNjb3VudCBhbmQgc2VydmljZXMu
DQrCqSAyMDIwIEdvb2dsZSBMTEMsIDE2MDAgQW1waGl0aGVhdHJlIFBhcmt3YXksIE1vdW50YWlu
IFZpZXcsIENBIDk0MDQzLCBVU0ENCg==
--00000000000045270b059f0075c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html lang=3Den><head><meta name=3Dformat-detection content=
=3Demail=3Dno /><meta name=3Dformat-detection content=3Ddate=3Dno /><style =
nonce=3DWxhj5dW8DpYuWm4UbuOX2Q>.awl a {color: #FFFFFF; text-decoration: non=
e;} .abml a {color: #000000; font-family: Roboto-Medium,Helvetica,Arial,san=
s-serif; font-weight: bold; text-decoration: none;} .adgl a {color: rgba(0,=
 0, 0, 0.87); text-decoration: none;} .afal a {color: #b0b0b0; text-decorat=
ion: none;} @media screen and (min-width: 600px) {.v2sp {padding: 6px 30px =
0px;} .v2rsp {padding: 0px 10px;}} @media screen and (min-width: 600px) {.m=
dv2rw {padding: 40px 40px;}} </style><link href=3D//fonts.googleapis.com/cs=
s?family=3DGoogle+Sans rel=3Dstylesheet type=3Dtext/css /></head><body styl=
e=3D"margin: 0; padding: 0;" bgcolor=3D#FFFFFF><img src=3Dhttps://notificat=
ions.googleapis.com/email/t/AFG8qyWS2S1NSNiBIKH_wlWW3pIDmzVVuO2vfjVgskDO86J=
u_fddVG60uY7q3Usug_4Z9YEKdcJjZ-0og1Uz_A7wzN4t-6G_e-nEBkwAJANSqPKaEmPTz9ymgU=
AFHI3amVIMLxu7llksJMIuWXj0M0B9pD3_eF9aia4NBzFy-uk-B8EIqMOOpB0AEXSafjufN1VMt=
enaw9ZcrDX5kEh2XgpT_S1qMTqgT0uzo2RgNqVm5Q0pMyPCwF4tYbkxQQylrEEpR3YaAmg3Clge=
7gFZvIHLJQmuerOpJ4xanAb6n5ZbtGYSAzOu5Q/a.gif width=3D1 height=3D1><table wi=
dth=3D100% height=3D100% style=3D"min-width: 348px;" border=3D0 cellspacing=
=3D0 cellpadding=3D0 lang=3Den><tr height=3D32 style=3D"height: 32px;"><td>=
</td></tr><tr align=3Dcenter><td><div itemscope itemtype=3D//schema.org/Ema=
ilMessage><div itemprop=3Daction itemscope itemtype=3D//schema.org/ViewActi=
on><link itemprop=3Durl href=3Dhttps://accounts.google.com/AccountChooser?E=
mail=3Dkishantongrao123@gmail.com&amp;continue=3Dhttps://myaccount.google.c=
om/security-checkup?utm_source%3Dgoogle%26utm_medium%3Demail%26utm_campaign=
%3Dsap%26aneid%3D1399439554187470845%26sea%3D24%26rfn%3D1582162989806%26ane=
xp%3Dsapef-a9--saprfsm-const--saphpraf-f1 /><meta itemprop=3Dname content=
=3D"Review Activity" /></div></div><table border=3D0 cellspacing=3D0 cellpa=
dding=3D0 style=3D"padding-bottom: 20px; max-width: 516px; min-width: 220px=
;"><tr><td width=3D8 style=3D"width: 8px;"></td><td><div style=3D"border-st=
yle: solid; border-width: thin; border-color:#dadce0; border-radius: 8px; p=
adding: 40px 20px;" align=3Dcenter class=3Dmdv2rw><img src=3Dhttps://www.gs=
tatic.com/images/branding/googlelogo/2x/googlelogo_color_74x24dp.png width=
=3D74 height=3D24 aria-hidden=3Dtrue style=3D"margin-bottom: 16px;" alt=3DG=
oogle><div style=3D"font-family: &#39;Google Sans&#39;,Roboto,RobotoDraft,H=
elvetica,Arial,sans-serif;border-bottom: thin solid #dadce0; color: rgba(0,=
0,0,0.87); line-height: 32px; padding-bottom: 24px;padding-bottom: 32px;tex=
t-align: center; word-break: break-word;"><div style=3D"font-size: 24px;"><=
table style=3D"font-family: &#39;Google Sans&#39;,Roboto,RobotoDraft,Helvet=
ica,Arial,sans-serif;font-size: 24px; line-height: 28px; text-align: center=
; width: 100%;"><tr><td><a><img width=3D103 height=3D90 src=3Dhttps://www.g=
static.com/accountalerts/email/sa_shield_yellow_161017_103x90@2.png style=
=3D"width: 103px; height: 90px;" alt=3D"" /></a></td></tr><tr><td style=3D"=
font-family: inherit;">Confirm your recovery phone</td></tr></table></div><=
table align=3Dcenter style=3Dmargin-top:8px;><tr style=3D"line-height: norm=
al;"><td align=3Dright style=3Dpadding-right:8px;><img width=3D20 height=3D=
20 style=3D"width: 20px; height: 20px; vertical-align: sub; border-radius: =
50%;;" src=3Dhttps://lh3.googleusercontent.com/a-/AAuE7mDDD5N6c2AqIOWthQz9S=
Krt5WEFsN8iVKGCRaRRYQ=3Ds96 alt=3D""></td><td><a style=3D"font-family: &#39=
;Google Sans&#39;,Roboto,RobotoDraft,Helvetica,Arial,sans-serif;color: rgba=
(0,0,0,0.87); font-size: 14px; line-height: 20px;">kishantongrao123@gmail.c=
om</a></td></tr></table></div><div style=3D"font-family: Roboto-Regular,Hel=
vetica,Arial,sans-serif; font-size: 14px; color: rgba(0,0,0,0.87); line-hei=
ght: 20px;padding-top: 20px; text-align: left;"><table style=3D"font-size: =
14px; letter-spacing: 0.2; line-height: 20px; text-align: center;"><tr><td =
style=3D"padding-bottom: 24px; text-align: start;"><table jsname=3Dtip styl=
e=3D"margin-left: -20px;"><tr><td style=3D"vertical-align: top;"><img width=
=3D44 height=3D44 src=3Dhttps://www.gstatic.com/accountalerts/email/recover=
y_number_4x.png style=3D"width: 44px; height: 44px; margin-top: 2px;" /></t=
d><td style=3D"font-size: 14px; letter-spacing: 0.2; line-height: 20px;padd=
ing-left: 3%;;">Google can use this phone number to make sure it=E2=80=99s =
really you if you get locked out of your account or if we notice suspicious=
 activity.<div style=3D"height: 13px;"></div>Confirm your recovery phone nu=
mber 090494 52944 and see other personalized security recommendations in th=
e Security&nbsp;Checkup.</td></tr></table></td></tr><tr><td><a href=3Dhttps=
://accounts.google.com/AccountChooser?Email=3Dkishantongrao123@gmail.com&am=
p;continue=3Dhttps://myaccount.google.com/security-checkup?utm_source%3Dgoo=
gle%26utm_medium%3Demail%26utm_campaign%3Dsap%26aneid%3D1399439554187470845=
%26sea%3D24%26rfn%3D1582162989806%26anexp%3Dsapef-a9--saprfsm-const--saphpr=
af-f1 target=3D_blank data-meta-key=3Dgo-to-sa style=3D"font-family: &#39;G=
oogle Sans&#39;,Roboto,RobotoDraft,Helvetica,Arial,sans-serif; line-height:=
 16px; color: #ffffff; font-weight: 400; text-decoration: none;font-size: 1=
3px;display:inline-block;padding: 6px 24px;background-color: #4184F3; borde=
r-radius: 5px; min-width: 90px;">Take action</a></td></tr><tr style=3D"colo=
r: rgba(0, 0, 0, 0.54); font-size: 12px; line-height: 150%; text-align: cen=
ter;"><td style=3D"padding-top: 12px">You can also go directly to:<br><a cl=
ass=3Dadgl style=3D"color: rgba(0, 0, 0, 0.87);text-decoration: inherit;">h=
ttps://myaccount.google.com/security-checkup</a></td></tr></table></div></d=
iv><div style=3D"text-align: center;"><div style=3D"font-family: Roboto-Reg=
ular,Helvetica,Arial,sans-serif;color: rgba(0,0,0,0.54); font-size: 11px; l=
ine-height: 18px; padding-top: 12px; text-align: center;"><div>You received=
 this email to let you know about important changes to your Google Account =
and services.</div><div style=3D"direction: ltr;">&copy; 2020 Google LLC, <=
a class=3Dafal style=3D"font-family: Roboto-Regular,Helvetica,Arial,sans-se=
rif;color: rgba(0,0,0,0.54); font-size: 11px; line-height: 18px; padding-to=
p: 12px; text-align: center;">1600 Amphitheatre Parkway, Mountain View, CA =
94043, USA</a></div></div></div></td><td width=3D8 style=3D"width: 8px;"></=
td></tr></table></td></tr><tr height=3D32 style=3D"height: 32px;"><td></td>=
</tr></table></body></html>
--00000000000045270b059f0075c8--
