��    {      �  �   �      h
     i
     �
     �
     �
  d   �
  5   :     p     }     �  	  �     �     �  �   �     c     ~     �     �     �     �  �   �  �   �  u   '  �   �  �   8     �     �     �       	       "     (  F   ?     �     �     �  R   �  p     �   }  �   >  �   �  !   �     �     �                -     @     ^     r     w     {  t   �  �   �     �  }   �     T     Z      f  	   �     �     �     �     �     �  +   �  �     
   �     �     �       !     �   5  �     -    �   4     �     �  	     %        4     R     o     �     �     �  S   �     ;     C     Y     f     v     �     �     �  *   �  #   �  "         :   �   H      !  !   .!     P!     a!  (  i!  M  �"  �   �#  �   �$  �   c%  �   &    �&  �   �'  4   �(     �(     �(  3   )  G   P)  '   �)  �   �)     a*     y*     �*     �*  Q  �*  ,   �+     ),     H,  #   h,  �   �,  3   I-     }-     �-      �-  �  �-     >/      W/  �   x/  #   40     X0     e0     �0     �0  
   �0  2  �0  �   �1  �   �2  �   b3  �   "4     �4  $   �4     5     *5     I5  Y  [5  (   �6  _   �6  
   >7     I7  0   b7  j   �7  �   �7  �   �8  �   �9  Y  F:  =   �;     �;  #   �;      <     8<     I<  :   d<  '   �<     �<     �<     �<  �   �<  '  �=     �>  �   �>     �?     �?  )   �?     @  %   @      <@  	   ]@  )   g@     �@  ?   �@  �   �@     �A  )   �A     B     *B  4   GB  �   |B  P  hC  f  �D  �    F     G     ,G     ?G  9   KG  )   �G  5   �G     �G  (   H  "   +H  .   NH  �   }H     I     I     5I     FI     ^I     wI  $   �I     �I  3   �I  "   J  .   *J  '   YJ    �J     �K  %   �K  )   �K     �K  �  
L  �  �M  )  jO  	  �P    �Q    �R  �  �S  9  �U  B   �V     W  9   (W  9   bW  X   �W  G   �W  �   =X  %   Y     6Y     MY      aY        	   v   "            z   ?   C   F   \   n   L                  V   `   (   y   q   ,   Z   -       U   W       x          X                 =   d       O       %          i   G       ^       u   t   J           k   7   .   +   o   S   I   <          ]   r           /          6   R   N             b       3   s       D       c      E      a   _      f   l          #               @              Y   *      j       $   
   H       5   p   4       g   8   '      1   m                  2             :       0   >   {   A   &                 )   T       Q   e   M   w   P           !      [       B         ;   9       h   K        %s module needs configuration (un)check all <b>Error:</b> invalid password. <b>Error:</b> missing password. <b>Reminder</b>: Now check the permissions on config.php and make sure it is not globally writeable. An error occurred while upgrading Gallery Core Module Authenticate Authenticate Me Authentication successful! Before you upgrade, we <b>strongly recommend</b> that you make a backup of your database!  If you fail to make a backup and something goes wrong, there is a strong possibility that we will not be able to help you recover your data!  Refer to the following examples: Begin Upgrade Config.php upgrade Congratulations! Your Gallery 2 upgrade is complete!  To upgrade any additional Gallery 2 modules you may use the Site Administrator interface. Continue to Step %d&raquo; Current Currently installed Debug Output: Description Empty Cache Error: Gallery 2 requires PHP version 4.1.0 or newer or 5.0.4 or newer. You have PHP version %s installed. Contact your webserver administrator to request an upgrade, available at the %sPHP website%s. Error: Some files and or directories in your storage directory are not writeable by the webserver user. Run chown -R webserverUser %s OR run chmod -R 777 %s. Error: Your version of PHP is configured with safe mode enabled.  You must disable safe mode before Gallery will run. Error: your PHP __FILE__ directive is not functioning correctly. Please file a support request with your webserver administrator or in the Gallery forums. Even though there were errors, you can still continue.  Or, you can try deleting these directories yourself and then click the <b>Try Again</b> link below. FILE Directive FILE directive supported Failed File uploads allowed Finished! Gallery creates temporary copies of some of your data on your hard drive.  This helps it to run faster.  But when you upgrade, some of these files might be out of date so it's a good idea to get rid of them now.  Gallery will create them again as it needs them. Gallery file integrity Gallery: <strong>your photos</strong> on <strong>your website</strong> Go Go to my Gallery! Go to the Gallery 2 Installer If you actually want to run the Gallery 2 installer, please follow the link below. If you are using Apache, create a file named .htaccess in the main Gallery directory with the following content: If you want to upgrade from Gallery 1, you first need to install Gallery 2 and then use the import module to import your data from Gallery 1. Please follow the link below to install Gallery 2. If you've lost your config.php file when replacing the Gallery 2 files in the preparation for this upgrade, please restore it and try again. In order to proceed with the install, we have to verify that you are who you claim.  When you performed the install, you entered a password which went into your config.php.  Type that in now.  Refer to your config.php if you've forgotten what you entered. Manifest missing or inaccessible. Maximum POST size Maximum upload size Memory limit Missing Code Missing files (%d) Missing or invalid config.php Modified files (%d) Name New New version Note: You're running Gallery from CVS, so recently removed files may appear here.  It might be safe to ignore these. Note: You're running Gallery from CVS, so some modified files are to be expected.  You can probably ignore these, but to be safe you should make sure that you do <b>cvs update -Pd</b> before continuing. Old files (%d) Once the upgrade has begun, please be patient.  If you cancel or reload the page, you may interfere with the upgrade process. Other PHP Version PHP version >= 4.1.0 or >= 5.0.4 Password: Recheck config.php Redo this step Required Safe mode disabled Select Language: Skip Upgrade and Continue to Step %d&raquo; Something went wrong when we tried to upgrade the core module.  In the boxes below you can find some debug information.  Report this in the %sGallery Forums%s and we'll help you diagnose the problem. Start Over Storage Directory Permissions Success System Checks Test skipped due to other errors. The Gallery Core Module is the heart of the Gallery application.  You can upgrade most other modules using the Site Administration interface, but this module must be handled separately in order for the upgrade to go smoothly. The code for some plugins that were previously active can no longer be found. You must restore code for these plugins before this upgrade can continue. Code for the plugins must be the same version or newer than what was installed before. The following modules can be automatically upgraded for you.  If you choose not to upgrade them now, you may experience problems with your Gallery.   You can always upgrade or deactivate them on the Site Administration page, or return to this page later so any decision you make here is not permanent. The installed version is newer than the version you are trying to upgrade to. You cannot downgrade G2. Please replace the gallery2 files with files from the currently installed version or later. Theme Themes Try Again Unable to commit database transaction Unable to get the module list Unable to get the theme list Unable to load the %s module Unable to load the %s theme Unable to upgrade the %s module Unable to upgrade the %s theme Unable to write to config.php in your %s directory.  Please change its permissions. Unknown Upgrade %d%% complete Upgrade Core Upgrade Modules Upgrade More Modules Upgrade Other Modules Upgrade Selected Modules Upgrade Steps Upgraded Gallery Core Module successfully. Upgraded the %s module successfully Upgraded the %s theme successfully Upgrader Help Upgrading Gallery 2 requires %d steps. This upgrade tool will guide you through these steps and provide assistance along the way if additional steps are required. Please read the %sHelp File%s before proceeding. Upgrading modules Upgrading the Gallery Core Module Upgrading themes Warning Warning: The exec() function is disabled in your php by the <b>disabled_functions</b> parameter in php.ini. You won't be able to use modules that require external binaries (e.g. ImageMagick, NetPBM or Ffmpeg). This can only be set server-wide, so you will need to change it in the global php.ini. Warning: The set_time_limit() function is disabled in your php by the <b>disabled_functions</b> parameter in php.ini.  Gallery can function with this setting, but it will not operate reliably.  Any operation that takes longer than %d seconds will fail (and in some cases just return a blank page) possibly leading to data corruption. Warning: Your PHP is configured not to allow file uploads (<b>file_uploads</b> parameter in php.ini). You will need to enable this option if you want to upload files to your Gallery with a web browser. Warning: Your PHP is configured to limit the memory to %sb (<b>memory_limit</b> parameter in php.ini). You should raise this limit to at least <b>%sMB</b> for proper Gallery operation. Warning: Your PHP is configured to limit the post data to a maximum of %sb (<b>post_max_size</b> parameter in php.ini). You should raise this limit to allow uploading bigger files. Warning: Your PHP is configured to limit the size of file uploads to %sb (<b>upload_max_filesize</b> parameter in php.ini). You should rise this limit to allow uploading bigger files. Warning: Your PHP is configured with Zend ze1_compatibility_mode which can cause PHP to crash.  Click <a href="%s">here</a> to test your PHP.  If you see "SUCCESS" then your PHP is ok.  If you get an error then you must turn off ze1_compatibility_mode before proceeding. We were unable to clean the following cache directories.  This is probably ok, but if you notice any weird behaviour, you should try to delete these directories yourself.  It's perfectly safe to get rid of them at any time. We've successfully upgraded the Gallery Core Module. Welcome Welcome to the Gallery Upgrader You can do <i>chmod 666 config.php</i> to fix this. You tried to run the upgrade process but a valid config.php is missing. Your Gallery Core Module is up to date! Your config.php appears to use the old form of multisite support.  Please see the %sHelp File%s for instructions to update your configuration before proceeding. Zend compatibility mode exec() allowed no limit set_time_limit() allowed Project-Id-Version: Gallery: Upgrader 2.1
POT-Creation-Date: 2005-05-23 11:39-0400
PO-Revision-Date: 2005-08-29 15:17+0100
Last-Translator: Trung Dong Huynh <trungdong@donggiang.com>
Language-Team: Vietnamese <gallery-devel@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 Module %s cần được chỉnh cấu hình (bỏ) đánh dấu tất cả <b>Lỗi:</b> sai mật khẩu. <b>Lỗi:</b> thiếu mật khẩu. <b>Nhắc nhở</b>: Bây giờ bạn hãy kiểm tra lại quyền truy cập trên tập tin config.php và bảm đảm là người khác không thể ghi lên tập tin này được. Có lỗi khi nâng cấp module Lõi của Gallery Xác nhận Xác nhận tôi Đã xác nhận người dùng! Trước khi bạn nâng cấp, chúng tôi <b>đặc biệt khuyến cáo</b> bạn nên sao lưu cơ sở dữ liệu của Gallery lại. Nếu có lỗi trong quá trình nâng cấp mà bạn không sao lưu thì có nhiều khả năng là chúng tôi sẽ không thể giúp bạn khôi phục lại dữ liệu của bạn được! Hãy tham khảo các ví dụ dưới đây: Bắt đầu nâng cấp Nâng cấp tập tin config.php Chúc mừng bạn! Quá trình nâng cấp Gallery 2 của bạn đã hoàn tất. Để nâng cấp các module khác của Gallery 2, bạn hãy vào phần Quản trị của Gallery. Tiếp tục sang Bước %d&raquo; Hiện tại Đang được cài đặt Kết xuất debug: Mô tả Xóa cache Lỗi: Gallery 2 yêu cầu phải có PHP phiên bản 4.1.0 hoặc mới hơn, hay 5.0.4 hoặc mới hơn. Phiên bản PHP bạn đang dùng là %s. Hãy liên hệ với quản trị máy chủ của bạn để yêu cầu nâng cấp lên lên phiên bản PHP mới hơn có tại %strang web PHP%s. Lỗi: Một số tập tin và thư mục trong thư mục lưu trữ của bạn không thể ghi được dưới quyền người dùng webuser. Bạn hãy chạy lệnh chown -R webserverUser %s HOẶC lệnh chmod - R 777 %s. Lỗi: Phiên bản PHP bạn đang dùng được cấu hình chạy trong safe mode. Bạn phải tắt chế độ safe mode để chạy được Gallery. Lỗi: Chỉ thị PHP  __FILE__ không hoạt động đúng. Hãy gửi một yêu cầu trợ giúp đến quản trị máy chủ của bạn hoặc gửi lên diễn đàn của Gallery. Tuy có một số lỗi nhưng bạn vẫn có thể tiếp tục được. Hoặc bạn có thể thử tự xóa các thư mục này và ấn vào liên kết <b>Thử lại</b> dưới đây. Chỉ thị FILE Chỉ thị FILE được hỗ trợ Thất bại Cho phép tải tập tin lên Đã hoàn tất! Gallery tạo các phiên bản dữ liệu tạm trên ổ cứng để nó chạy nhanh hơn. Nhưng khi bạn nâng cấp, một số tập tin tạm này có thể sẽ trở nên không hợp lệ cho nên chúng ta nên xóa tất cả tập tin tạm ở bước này. Gallery sẽ tự động tạo lại các tập tin tạm khi cần. Tính toàn vẹn các tập tin Gallery Gallery: <strong>ảnh của bạn</strong> trên chính <strong>trang web của bạn</strong> Đi tiếp Vào Gallery của tôi! Đi đến Chương trình cài đặt Gallery 2 Nếu bạn muốn chạy chương trình cài đặt Gallery 2 thì hãy dùng liên kết dưới đây. Nếu bạn đang dùng Apache, hãy tạo tập tin có tên .htaccess trong thư mục chính của Gallery với nội dung dưới đây: Nếu bạn muốn nâng cấp từ Gallery 1, trước hết bạn phải cài Gallery 2 và sau đó dùng module import để chuyển dữ liệu từ Gallery 1 của bạn. Hãy dùng liên kết dưới đây để cài đặt Gallery 2. Nếu bạn mất tập tin config.php khi thay thế các tập tin của Gallery 2 trong lúc chuẩn bị nâng cấp thì bạn hãy khôi phục lại nó trước khi thử lại lần nữa. Để bắt đầu cài đặt, chúng tôi cần xác nhận bạn đúng là người chủ của Gallery này. Khi bạn cài Gallery, bạn đã nhập vào một mật khẩu, và mật khẩu này được lưu trong tập tin config.php. Bạn hãy điền mật khẩu này vào đây. Tham khảo tập tin config.php nếu bạn quên. Thiếu tập tin Manifest hoặc không truy cập được. Kích thước POST tối đa Kích thước tải lên tối đa Giới hạn bộ nhớ Mã bị thiếu Các tập tin thiếu(%d) Tập tin config.php bị thiếu hoặc không hợp lệ Các tập tin bị hiệu chỉnh (%d) Tên Mới Phiên bản mới Lưu ý: Bạn đang dùng phiên bản Gallery từ CVS và một số tập tin mới bị xóa gần đây được liệt kê dưới đây. Tuy nhiên, thường bạn có thể bỏ qua các cảnh báo này. Lưu ý: Bạn đang dùng phiên bản Gallery từ CVS và một số tập tin mới được hiệu chỉnh được liệt kê dưới đây. Tuy bạn có thể bỏ qua các cảnh báo này, nhưng để an toàn, bạn nên chạy lệnh <b>cvs update -Pd</b> trước khi tiếp tục. Các tập tin cũ (%d) Một khi quá trình nâng cấp được thực hiện, xin bạn hãy kiên nhẫn. Nếu bạn dừng hoặc nạp lại trang web thì có thể sẽ làm quá trình nâng cấp bị thất bại. Khác Phiên bản PHP Phiên bản PHP >= 4.1.0 hoặc >= 5.0.4 Mật khẩu: Kiểm tra lại tập tin config.php Thực hiện lại bước này Cần có Chế độ safe mode đã được tắt Chọn ngôn ngữ: Bỏ qua nâng cấp và thực hiện tiếp bước %d&raquo; Có lỗi khi nâng cấp module lõi. Bạn có thể đọc thông tin debug trong hộp ở dưới đây. Hãy báo lại lỗi này trong %sDiễn đàn Gallery%s và chúng tôi sẽ giúp bạn tìm hiểu chẩn đoán lỗi này. Bắt đầu lại từ đầu Quyền hạn trong thư mục lưu trữ Thành công Các kiểm tra hệ thống Kiểm tra bị bỏ qua vì một số lỗi khác. Module Lõi của Gallery là trái tim của ứng dụng Galley. Bạn có thể nâng cấp hầu hết các module khác thông qua giao diện trong phần Quản trị, nhưng riêng module này cần được nâng cấp riêng. Mã chương trình của một số plugin đang hoạt động trước đây không tìm thấy. Bạn cần phải khôi phục lại mã của các plugin này trước khi tiếp tục nâng cấp. Mã chương trình cho các plugin này phải cùng phiên bản hoặc mới hơn phiên bản đã được cài trước đây. Các module dưới đây sẽ được tự động nâng cấp. Nếu bạn chọn không nâng cấp ngay bây giờ thì Gallery của bạn có thể sẽ có trục trặc khi hoạt động. Bạn lúc nào cũng có thể nâng cấp hoặc bỏ kích hoạt chúng trong trang Quản trị, hoặc quay lại trang này sau để nâng cấp chúng. Phiên bản đang cài mới hơn phiên bản bạn đang định nâng cấp. Bạn không thể giảm cấp G2. Bạn hãy thay thế các tập tin của gallery2 bằng các tập tin của phiên bản đang được cài hoặc mới hơn. Kiểu trình bày Kiểu trình bày Thử lại Không thể thực hiện thao tác cơ sở dữ liệu Không thể nạp danh sách các module Không thể nạp danh sách các kiểu trình bày Không thể nạp module %s Không thể nạp kiểu trình bày %s Không thể nâng cấp module %s Không thể nâng cấp kiểu trình bày %s Không thể ghi và tập tin config.php trong thư mục %s của bạn. Hãy chỉnh lại quyền truy cập của tập tin này. Không xác định Nâng cấp hoàn tất %d%% Nâng cấp Lõi Nâng cấp các module Nâng cấp thêm module Nâng cấp các module khác Nâng cấp các module đang chọn Các bước nâng cấp Nâng cấp module Lõi của Gallery thành công. Nâng cấp module %s thành công Nâng cấp kiểu trình bày %s thành công Trợ giúp chương trình nâng cấp Nâng cấp Gallery 2 cần phải qua %d bước. Công cụ nâng cấp này sẽ hướng dẫn bạn qua những bước này và hỗ trợ bạn nếu cần thực hiện thêm một số bước khác. Xin hãy đọc %sHướng dẫn%s trước khi tiếp tục. Đang nâng cấp các module Nâng cấp module Lõi của Gallery Đang nâng cấp các kiểu trình bày Cảnh báo Cảnh báo: Hàm exec() đang bị tắt trong chương trình PHP bằng thông số <b>disabled_functions</b> trong tập tin php.ini. Bạn sẽ không thể sử dụng các module cần dùng các chương trình ngoài (ví dụ như ImageMagick, NetPBM hay Ffmpeg). Thông số này chỉ có thể được đặt cho cả máy chủ nên bạn phải thay đổi thông số này trong tập tin php.ini toàn cục. Cảnh báo: Hàm set_time_limit() đang bị tắt trong chương trình PHP bằng thông số <b>disabled_functions</b> trong tập tin php.ini. Gallery tuy vẫn có thể hoạt động nhưng có thể sẽ không ổn định. Bất kỳ thao tác nào cần chạy lâu hơn %d giây sẽ thất bại (trong một số trường hợp chỉ hiển thị một trang trắng) và có khả năng dẫn đến hỏng dữ liệu. Cảnh báo: Chương trình PHP của bạn được cài đặt cấm tải tập tin lên (bằng thông số <b>file_uploads</b> trong tập tin php.ini). Bạn cần phải thay đổi cài đặt này nếu bạn muốn tải tập tin vào Gallery của bạn thông qua trình duyệt web. Cảnh báo: Chương trình PHP của bạn đặt giới hạn bộ nhớ là %sb (trong thông số <b>memory_limit</b> ở tập tin php.ini. Bạn nên nâng giới hạn này lên ít nhất là <b>%sMB</b> để Gallery có thể hoạt động ổn định. Cảnh báo: Chương trình PHP của bạn đặt giới hạn dữ liệu gửi lên tối đã là %sb (trong thông số <b>post_max_size</b> ở tập tin php.ini). Bạn nên nâng giới hạn này lên để cho phép tải các tập tin có kích thước lớn hơn. Cảnh báo: Chương trình PHP của bạn đặt giới hạn kích thước tập tin tải lên là %sb (trong thông số <b>post_max_filesize</b> ở tập tin php.ini). Bạn nên nâng giới hạn này lên để cho phép tải các tập tin có kích thước lớn hơn. Cảnh báo: Chương trình PHP của bạn được cài đặt chế độ Zend ze1_compatibility_mode. Chế độ này có thể làm cho PHP bị ngưng hoạt động. Bạn hãy nhấp chuột vào <a href="%s">đây</a> để kiểm tra thử. Nếu kết quả là "SUCCESS" thì chương trình PHP của bạn không bị ảnh hưởng. Nếu bạn gặp lỗi thì bạn phải tắt chế độ ze1_compatibility_mode trước khi tiếp tục. Không thể xóa các thư mục cache sau đây. Đây không phải là một vấn đề nghiêm trọng nhưng nếu bạn thấy Gallery hoạt động không bình thường thì bạn nên thử tự xóa các thư mục này. Bạn có thể xóa các thư mục này bất cứ lúc nào cũng được. Module Lõi của Gallery đã được cập nhật thành công. Chào mừng Chào mừng bạn đến Công cụ cập nhật Gallery Bạn có thể dùng lệnh <i>chmod 666 config.php</i>. Bạn chạy chương trình nâng cấp nhưng thiếu tập tin config.php hợp lệ. Module Lõi của Gallery hiện đang dùng phiên bản mới nhất! Tập tin config.php của bạn đang dùng kiểu hỗ trợ nhiều trang Gallery cũ. Hãy xem %sHướng dẫn%s để biết cách cập nhật tập tin cấu hình của bạn trước khi tiếp tục. Chế độ tương thích với Zend cho phép dùng exec() không giới hạn cho phép dùng set_time_limit() 