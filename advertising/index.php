<?PHP
    function printForm($companyName, $first_name, $last_name, $email, $destinationURL, $userFile) {
       $title = "Advertising on JeepTech.com";
       $headerFilename = "/home/jeeptech/public_html/common/header.php";
       $trailerFilename = "/home/jeeptech/public_html/common/trailer.php";
       include($headerFilename);
echo <<<END
<p>
JeepTech.com is a truly unique site that has been around for nearly 10 years.
It offers unparalleled technical information about Jeeps and a format that
is ahead of its time.  Advertising with JeepTech.com is a great opportunity
to your message out to a very targeted audience.
</p>
<p>
To start advertising on the most unique Jeep web site on the web, fill
out this application.  Your application will be reviewed and if it is
accepted, your advertising campaign will begin in three to seven days.
We reserve the right to reject any application for any reason.
</p>
<p>
We offer one and only one simple service.  That service is banner
advertising for a low rate of $10 a month with a 2 month subscription
paid in advance.  Advertising is more effective if it stays fresh.
For these reasons, we sell advertising at a low rate and a low volume
per banner.  You will get an average of 400 impressions per day.
You will receive a weekly report detailing the number of impressions
and click throughs for each campaign.
</p>
<h3>Application for Advertising on JeepTech.com</h3>
<p>
<FORM ACTION="/advertising/index.php" METHOD="POST" enctype="multipart/form-data">
<input type="hidden" name="MAX_FILE_SIZE" value="2097152">
<table>
<tr><td>
Company Name
</td><td>
<input name="CompanyName" type=text size=25 value="$companyName">
</td></tr>
<tr><td>
Contact person first name
</td><td>
<input name="first_name" type=text size=25 value="$first_name">
</td></tr>
<tr><td>
Contact person last name
</td><td>
<input name="last_name" type=text size=25 value="$last_name">
</td></tr>
<tr><td>
Email Address
</td><td>
<input name="email" type=text size=25 value="$email">
</td></tr>
<tr><td>
Destination URL
</td><td>
<input name="DestinationURL" type=text size=25 value="$destinationURL">
</td></tr>
<tr><td>
Banner Ad
</td><td>
<input name="userFile" type="file" size="50" accept="image/gif,image/jpeg,image/bmp" value="$userFile">
</td></tr>
<tr><td>
</td><td>
<input value="Next" type=submit>
</td></tr>
</table>
</form>
</FORM>
</p>
</div><br clear=all>
END
;
       include($trailerFilename);
      return;
   }

   #
   # Get variables
   #
   $userFile = $_POST['userFile'];
   if ("$companyName" == "") $userFile = $_GET['userFile'];
   $companyName = $_POST['CompanyName'];
   if ("$companyName" == "") $companyName = $_GET['CompanyName'];
   $first_name = $_POST['first_name'];
   if ("$first_name" == "") $first_name = $_GET['first_name'];
   $last_name = $_POST['last_name'];
   if ("$last_name" == "") $last_name = $_GET['last_name'];
   $email = $_POST['email'];
   if ("$email" == "") $email = $_GET['email'];
   $destinationURL = $_POST['DestinationURL'];
   if ("$destinationURL" == "") $destinationURL = $_GET['DestinationURL'];

   #
   # See if they have posted
   #
   if ($_SERVER['REQUEST_METHOD'] == 'POST')
   {
      #
      # Look for file
      #
      switch($_FILES['userFile']['error'])
      {
      case 0:

         #
         # Set up other variables
         #
         $allCorrect = true;
         $fileType = $_FILES['userFile']['type'];
         $checksum = crc32("$companyName");
         $customerDirectory = sprintf("%u", $checksum);
         $destdir = '/home/jeeptech/public_html/applications/';
         $urlFile = '/applications/' . $customerDirectory . "/" . "banner.jpg";
         $orderUrl = 'http://www.jeeptech.com/applications/' . $customerDirectory . "/";
         $destdir = $destdir . $customerDirectory . "/";
         $destFile = $destdir . "banner.jpg";
         $indexFile = $destdir . "index.htm";

         #
         # Check size of file
         #
         $tmpfilename=$_FILES['userFile']['tmp_name'];
         if ("$tmpfilename" == "") {
            echo "<br><font color=red>You must enter a file name</font><br>";
            $allCorrect = false;
         }
         else {
            list($width, $height, $type, $attr) = getimagesize($tmpfilename);
            if (($type != 2) && ($type != 6) && ($type != 1)) {
               echo "<br><font color=red>We're sorry, but we only support jpg, gif, and bmp type advertisement banners.  Please save your image as one of those types and resubmit your banner</font><br>";
               $allCorrect = false;
            }
            else if (($width != 468) || ($height != 60)) {
               echo "<br><font color=red>We're sorry, but we only support standard 468x60 advertisement banners.  Please resize your image and resubmit your banner</font><br>";
               $allCorrect = false;
            }
         }
         if ("$companyName" == "") {
            echo "<br><font color=red>You must enter a company name</font><br>";
            $allCorrect = false;
         }
         if ("$first_name" == "") {
            echo "<br><font color=red>You must enter a first name</font><br>";
            $allCorrect = false;
         }
         if ("$last_name" == "") {
            echo "<br><font color=red>You must enter a last name</font><br>";
            $allCorrect = false;
         }
         if ("$email" == "") {
            echo "<br><font color=red>You must enter an email address</font><br>";
            $allCorrect = false;
         }
         if ("$destinationURL" == "") {
            echo "<br><font color=red>You must enter a destination URL</font><br>";
            $allCorrect = false;
         }

         if ($allCorrect != true) {
            printForm($companyName, $first_name, $last_name, $email, $destinationURL, $userFile);
            return;
         }

         #
         # Prepare
         #
         if (!file_exists($destdir))
         {
            mkdir($destdir);
         }
         chmod($destdir, 0777);
         if (file_exists($destFile))
         {
            unlink($destFile);
         }

         #
         # Move file over
         #
         if (! move_uploaded_file($_FILES['userFile']['tmp_name'], $destFile))
         {
            echo("<font color=red>There was an error uploading your file.</font><br>\n");
            if (file_exists($destFile))
            {
               unlink($destFile);
            }
            if (! file_exists($indexFile))
            {
               rmdir($destdir);
            }
            printForm($companyName, $first_name, $last_name, $email, $destinationURL, $userFile);
            return;
         }
         chmod($destFile, 0777);

         #
         # Generate file
         #
         $fhandle = fopen($indexFile, "w+t");
         if ( $fhandle )
         {
            chmod($indexFile, 0777);
            fwrite($fhandle, "<h2>Summary of Advertising Order</h2>\n");
            # fwrite($fhandle, "<br>Order Number = $customerDirectory\n");
            fwrite($fhandle, "<br>Company Name = $companyName\n");
            fwrite($fhandle, "<br>Contact first name = $first_name\n");
            fwrite($fhandle, "<br>Contact last name = $last_name\n");
            fwrite($fhandle, "<br>Email = <a href=\"mailto:$email\">$email</a>\n");
            fwrite($fhandle, "<br>Destination URL = <a href=\"$destinationURL\">$destinationURL</a>\n");
            fwrite($fhandle, "<br>Banner:<br>\n");
            fwrite($fhandle, "<img src=\"$urlFile\"><br>\n");
            fwrite($fhandle, "<h3>Click here to complete transaction:<h3>\n");
            fwrite($fhandle, "<form name=\"_xclick\" action=\"https://www.paypal.com/cgi-bin/webscr\" method=\"post\">\n");
            fwrite($fhandle, "<input type=\"hidden\" name=\"cmd\" value=\"_xclick-subscriptions\">\n");
            fwrite($fhandle, "<input type=\"hidden\" name=\"business\" value=\"sales@jeeptech.com\">\n");
            fwrite($fhandle, "<input type=\"hidden\" name=\"currency_code\" value=\"USD\">\n");
            fwrite($fhandle, "<input type=\"hidden\" name=\"no_shipping\" value=\"1\">\n");
            fwrite($fhandle, "<input type=\"image\" src=\"http://www.paypal.com/en_US/i/btn/x-click-but20.gif\" border=\"0\" name=\"submit\" alt=\"Make payments with PayPal - it's fast, free and secure!\">\n");
            fwrite($fhandle, "<input type=\"hidden\" name=\"a3\" value=\"20.00\">\n");
            fwrite($fhandle, "<input type=\"hidden\" name=\"p3\" value=\"2\">\n");
            fwrite($fhandle, "<input type=\"hidden\" name=\"t3\" value=\"M\">\n");
            fwrite($fhandle, "<input type=\"hidden\" name=\"src\" value=\"1\">\n");
            fwrite($fhandle, "<input type=\"hidden\" name=\"sra\" value=\"1\">\n");
            fwrite($fhandle, "<INPUT TYPE=\"hidden\" NAME=\"first_name\" VALUE=\"$first_name\">\n");
            fwrite($fhandle, "<INPUT TYPE=\"hidden\" NAME=\"last_name\" VALUE=\"$last_name\">\n");
            fwrite($fhandle, "<INPUT TYPE=\"hidden\" NAME=\"email\" VALUE=\"$email\">\n");
            fwrite($fhandle, "<INPUT TYPE=\"hidden\" NAME=\"item_name\" VALUE=\"2 Month Advertising Subscription to JeepTech.com\">\n");
            fwrite($fhandle, "</form>\n");
            fclose($fhandle);

            #
            # Cat the contents
            #
            $handle = fopen($indexFile, "r");
            $contents = fread($handle, filesize($indexFile));
            fclose($handle);
            echo($contents);
            mail("terry@jeeptech.com", "JeepTech.com Purchase Order", $orderUrl);
         }
         else {
            echo("<font color=red>There was an error processing your order.</font><br>\n");
            printForm($companyName, $first_name, $last_name, $email, $destinationURL, $userFile);
            break;
         }
         break;
      case 1:
      case 2:
         echo("<font color=red>Max Size Exceeded, Please Upload a smaller File.</font><br>\n");
         printForm($companyName, $first_name, $last_name, $email, $destinationURL, $userFile);
         break;
      case 3:
         echo("<font color=red>File Upload Incomplete! Please Try Again.</font><br>\n");
         printForm($companyName, $first_name, $last_name, $email, $destinationURL, $userFile);
         break;
      case 4:
         echo("<font color=red>No File Uploaded.</font><br>\n");
         printForm($companyName, $first_name, $last_name, $email, $destinationURL, $userFile);
      }
   }
   else {
      printForm($companyName, $first_name, $last_name, $email, $destinationURL, $userFile);
   }
?>
