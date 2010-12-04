<?PHP
echo <<<END
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"><head><title>$title</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta name="robots" content="index,follow">
<link rel="shortcut icon" href="/favicon.ico">
<script type="text/javascript" src="/wiki/stylesheets/wikibits.js"></script>
<style type='text/css'><!--
@import url("/wiki/stylesheets/wikistandard.css");
/*/*/
a.new, #quickbar a.new { color: #CC2200; }
#quickbar { position: absolute; top: 4px; left: 4px; border-right: 1px solid gray; }
#article { margin-left: 152px; margin-right: 4px; }
/* */
//--></style>
</head>

<body bgcolor='#FFFFFF' onload=''>

<div id='content'>
<div id='topbar'><table width='98%' border=0 cellspacing=0>
END;
if (@include(getenv('DOCUMENT_ROOT').'/phpAdsNew/phpadsnew.inc.php')) {
   if (!isset($phpAds_context)) $phpAds_context = array();
   $phpAds_raw = view_raw ('zone:1', 0, '_blank', 'JeepTech.com', '0', $phpAds_context);
   echo "\n";
   echo "<td></td><td align=\"left\" colspan=\"2\">";
   echo "\n";
   echo $phpAds_raw['html'];
   echo "\n";
   echo "\n<br clear=\"all\"></td></tr>";
}
echo <<<END
<tr><td width='152' rowspan='1'>&nbsp;</td><td class='top' align='left' valign='top'>
<a href="/wiki/index.php/Main" class='internal' title ="Main">Main</a> |
<a href="/wiki/index.php/Special:Recentchanges" class='internal' title ="Special:Recentchanges">Recent changes</a>
<p class='subtitle'><a href="/wiki/index.php/JeepTech:General_disclaimer" class='internal' title ="JeepTech:General disclaimer">Disclaimers</a></td>
<td class='top' valign='top' align='right' nowrap><a href="/wiki/index.php/User:Admin" class='internal' title ="User:Admin">Admin</a> (<a href="/wiki/index.php/User_talk:Admin" class='internal' title ="User talk:Admin">Talk</a>)<br><a href="/wiki/index.php?title=Special:Userlogout&amp;returnto=Main" class='internal' title ="Special:Userlogout">Log out</a> | <a href="/wiki/index.php/Special:Preferences" class='internal' title ="Special:Preferences">Preferences</a> | <a href="/wiki/index.php/JeepTech:Help" class='internal' title ="JeepTech:Help">Help</a>
<br><form name='search' class='inline' method=post action="/wiki/index.php"><input type=text name="search" size=19 value="">
<input type=submit name="go" value="Go">&nbsp;<input type=submit name="fulltext" value="Search"></form></td></tr></table>
</div>

<div id='article'>

<h1 class='pagetitle'>
$title
</h1>
<p class='subtitle'>From JeepTech, the Jeep knowledge base.

END
?>
