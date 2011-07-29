Summary: membership server api for TVB.COM
Name: tvb_msapi_server
Version: 6.0.0.2
Release: 29
License: GPL
Group: Applications/TVB
URL: http://www.tvb.com
Distribution: CentOS
Vendor: N/A
Packager: Wonski Chan <wonski.chan@tvb.com>
AutoReqProv: no
BuildRoot: %{_builddir}/%{name}-%{version}
Requires: tvb_web_service_server_pear
Requires: tvb_account_intg_client >= 1.0.0-1

%define basedir %(pwd)
%define datadir /data/httpd
%define libdir /opt/php/lib/php/TVB/MSApi
%define baselibdir /opt/php/lib/php
%define confdir /data/msapi
%define webuser tvbweb
%define webgroup www
%define sysuser root
%define sysgroup root

%description

%prep

%build

%install
rm -rif $RPM_BUILD_ROOT
mkdir -p $RPM_BUILD_ROOT%{datadir}/htdocs/msapi.tvb.com
mkdir -p $RPM_BUILD_ROOT%{libdir}/Server/common/Captcha/fonts
mkdir -p $RPM_BUILD_ROOT%{libdir}/Server/common/Captcha/words
mkdir -p $RPM_BUILD_ROOT%{libdir}/Server/model
mkdir -p $RPM_BUILD_ROOT%{libdir}/Server/api
mkdir -p $RPM_BUILD_ROOT%{confdir}/bin
mkdir -p $RPM_BUILD_ROOT%{confdir}/email_template
mkdir -p $RPM_BUILD_ROOT%{confdir}/logs/msstat
mkdir -p $RPM_BUILD_ROOT%{confdir}/test/unitest

#lib
rsync -av --exclude ".svn" %{basedir}/pear/* $RPM_BUILD_ROOT%{libdir}/Server/

#frontend
rsync -av --exclude ".svn" %{basedir}/htdocs/msapi_ws_server.php $RPM_BUILD_ROOT%{datadir}/htdocs/msapi.tvb.com/

#email template
rsync -av --exclude ".svn" %{basedir}/email/* $RPM_BUILD_ROOT%{confdir}/email_template/

#bin
rsync -av --exclude ".svn" %{basedir}/bin/* $RPM_BUILD_ROOT%{confdir}/bin/

#unitest
rsync -av --exclude ".svn" %{basedir}/test/* $RPM_BUILD_ROOT%{confdir}/test/

%clean
[ "$RPM_BUILD_ROOT" != "/" ] && rm -rf $RPM_BUILD_ROOT

%pre

%post

%preun

%postun

%files
%defattr(-,%{sysuser},%{sysgroup})
%{libdir}
%{confdir}/test

%defattr(-,%{webuser},%{webgroup})
%{confdir}/bin
%{datadir}/htdocs/msapi.tvb.com

%defattr(755,%{sysuser},%{sysgroup})
%{confdir}/email_template

%defattr(777,%{sysuser},%{sysgroup})
%{confdir}/logs

%changelog
* Fri Jul 29 2011 Tom Wang <tom.wang@achievo.com> 6.0.0.2.29
* move facebook sdk to infrastructure