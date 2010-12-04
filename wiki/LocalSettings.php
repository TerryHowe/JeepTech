<?php

# This file was automatically generated. Don't touch unless you
# know what you're doing; see LocalSettings.sample for an edit-
# friendly file.

$IP = "/home/jeeptech/public_html/wiki";
ini_set( "include_path", "$IP/includes:$IP/languages:" . ini_get("include_path") );
include_once( "DefaultSettings.php" );

if( $wgCommandLineMode ) {
	die( "Can't use command-line utils with in-place install yet, sorry." );
} else {
	## Compress output if the browser supports it
	if( !ini_get( 'zlib.output_compression' ) ) ob_start( 'ob_gzhandler' );
}

$wgSitename         = "JeepTech";

$wgScriptPath	    = "/wiki";
$wgScript           = "$wgScriptPath/index.php";
$wgRedirectScript   = "$wgScriptPath/redirect.php";

$wgArticlePath      = "$wgScript/$1";

$wgStyleSheetPath   = "$wgScriptPath/stylesheets";
$wgStyleSheetDirectory = "$IP/stylesheets";

$wgUploadPath       = "$wgScriptPath/images";
$wgUploadDirectory	= "$IP/images";
$wgLogo				= "$wgUploadPath/wiki.png";

$wgEmergencyContact = "webmaster@jeeptech.com";
$wgPasswordSender	= "webmaster@jeeptech.com";

$wgDBserver         = "localhost";
$wgDBname           = "jeeptech_wikidb";
$wgDBuser           = "jeeptech_wiki";
$wgDBpassword       = "cd8937fm";
$wgDBsqluser        = "jeeptech_wiki";
$wgDBsqlpassword	= "cd8937fm";

$wgDBmysql4 = $wgEnablePersistentLC = true;

## To enable image uploads, make sure the 'images' directory
## is writable, then uncomment this:
$wgDisableUploads		= false;
$wgUseImageResize		= true;
$wgUseImageMagick = true;
$wgImageMagickConvertCommand = "/usr/bin/convert";

## If you have the appropriate support software installed
## you can enable inline LaTeX equations:
# $wgUseTeX			= true;
# $wgMathPath         = "{$wgUploadPath}/math";
# $wgMathDirectory    = "{$wgUploadDirectory}/math";
# $wgTmpDirectory     = "{$wgUploadDirectory}/tmp";

$wgLocalInterwiki   = $wgSitename;

$wgLanguageCode = "en";
$wgInputEncoding = $wgOutputEncoding = "UTF-8";


?>
