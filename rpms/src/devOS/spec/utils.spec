###############################################################################
# Spec file for Utils
################################################################################
# Configured to be built by user student or other non-root user
################################################################################
#
Summary: devOS mods
Name: devOS
Version: 0.0.4
Release: 1
License: GPL
URL: https://devOS.uid0.eu
Group: System
Packager: BB
Requires: bash
Requires: nano
BuildRoot: /root/rpmbuilds
# Build with the following syntax:
# rpmbuild --target noarch -bb utils.spec

%description
RPM to mod CentOS to devOS

%prep
################################################################################
# Create the build tree and copy the files from the development directories    #
# into the build tree.                                                         #
################################################################################
echo "BUILDROOT = $RPM_BUILD_ROOT"
mkdir -p $RPM_BUILD_ROOT/root

#mkdir -p $RPM_BUILD_ROOT/usr/local/share/utils
#/data/devOS/src/devOS/SRC
cp  ~/rpmbuild/src/root/* $RPM_BUILD_ROOT/root/

#cp -r ../SRC  $RPM_BUILD_ROOT/
#cp /home/student/development/scripts/* $RPM_BUILD_ROOT/root/binda
#cp /home/student/development/license/* $RPM_BUILD_ROOT/usr/local/share/utils
#cp /home/student/development/spec/* $RPM_BUILD_ROOT/usr/local/share/utils

#exit

%files
%attr(0744, root, root) /root/*
#%attr(0644, root, root) /usr/local/share/utils/*

%pre

%post
################################################################################
# Set up MOTD scripts                                                          #
################################################################################
#cd /etc
# Save the old MOTD if it exists
#if [ -e motd ]
#then
#   cp motd motd.orig
#fi
## If not there already, Add link to create_motd to cron.daily
#cd /etc/cron.daily
#if [ ! -e create_motd ]
#then
#   ln -s /usr/local/bin/create_motd
#fi
## create the MOTD for the first time
#/usr/local/bin/mymotd > /etc/motd
touch /root/mod_worked

%postun
# remove installed files and links
#rm /etc/cron.daily/create_motd

# Restore the original MOTD if it was backed up
#if [ -e /etc/motd.orig ]
#then
#   mv -f /etc/motd.orig /etc/motd
#fi

%clean
#rm -rf $RPM_BUILD_ROOT/usr/local/bin
#rm -rf $RPM_BUILD_ROOT/usr/local/share/utils

%changelog
* Tue May 31 2016 Adam Miller <maxamillion@fedoraproject.org> - 0.1-1
- First bello package
- Example second item in the changelog for version-release 0.1-1
