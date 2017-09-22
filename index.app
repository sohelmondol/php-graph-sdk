
4
5
6
7
8
9
<!DOCTYPE html>
<html>
<head>
<title>Login With Facebook</title>
</head>
<body>
  <a href="fblogin.php"><img src="login-button.png" alt="Facebook Login Button"></a>
</body>
</html>
<?php
session_start();
require_once( 'Facebook/autoload.php' );

$fb = new Facebook\Facebook([
  'app_id' => 'ENTER-YOUR-APP-ID',
  'app_secret' => 'ENTER-YOUR-APP-SECRET',
  'default_graph_version' => 'v2.5',
]);

$helper = $fb->getRedirectLoginHelper();

$permissions = ['email']; // Optional permissions for more permission you need to send your application for review
$loginUrl = $helper->getLoginUrl('http://demo.phpgang.com/facebook-login-sdk-v5/callback.php', $permissions);
header("location: ".$loginUrl);

?>
