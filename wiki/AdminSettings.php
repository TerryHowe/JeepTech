<?php
# This file should be copied to AdminSettings.php, and modified
# to reflect local settings.  Unlike LocalSettings.php, it is
# not copied to the installation directory for security reasons;
# it is used by the install and maintenance scripts only. 
#
# Developers: Do not check AdminSettings.php into CVS!

# This data is used by all database maintenance scripts
# (see directory maintenance/). The SQL user DOES NOT NEED 
# TO EXIST. It is created by the installation script,
# which will prompt you for the MySQL root password.
#
# This is not to be confused with sysop accounts for the
# wiki.
#
$wgDBadminuser      = "wikiadmin";
$wgDBadminpassword  = "adminpass";

# Define these if you want the installed files to be owned
# by a specific user or group for ease of maintenance.  You
# must run the install script as root to change owners, or
# as a member of the group to change groups.
#
# $wgInstallOwner = "apache";
# $wgInstallGroup = "apache";

?>
