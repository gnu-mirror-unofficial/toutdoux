%define prefix /usr

Summary: Project manager
Name: ToutDoux
Version: 1.2.6
Release: 1
Copyright: GPL
Packager: Philippe Roy <ph_roy@toutdoux.org>
Group: Applications/Productivity
Source: ToutDoux-1.2.6.tar.gz
URL: http://toutdoux.sourceforge.net/
BuildRoot: /var/tmp/toutdoux-1.2.6-root
Docdir: %{prefix}/doc

Requires: gnome-libs >= 1.0.0

%description
ToutDoux is a project manager which permits management with different views (based on plugins). 
For example, you can design a plan of actions using a tree structure.

%prep
%setup -q

%build
CFLAGS="$RPM_OPT_FLAGS" ./configure --prefix=%prefix
make

%install
make prefix=$RPM_BUILD_ROOT%{prefix} install

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-, root, root)
%doc AUTHORS THANKS ChangeLog NEWS README COPYING HACKING toutdoux.fsfdb 
%{prefix}/*


