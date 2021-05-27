<?php
session_start();
include("includes/config.php");
$_SESSION['login']=="";
date_default_timezone_set('Asia/Kolkata');
$ldate=date( 'd-m-Y h:i:s A', time () );
mysqli_query($con,"UPDATE userlog  SET logout = '$ldate' WHERE userEmail = '".$_SESSION['login']."' ORDER BY id DESC LIMIT 1");
$DATA = null;
if (isset($_SESSION['cart'])) {
	$DATA['cart'] = $_SESSION['cart'];
}
if (isset($_SESSION['qnty'])) {
	$DATA['qnty'] = $_SESSION['qnty'];
}
if (isset($_SESSION['tp'])) {
	$DATA['tp'] = $_SESSION['tp'];
}
session_unset();
if (isset($DATA['cart'])) {
	$_SESSION['cart'] = $DATA['cart'];
}
if (isset($DATA['qnty'])) {
	$_SESSION['qnty'] = $DATA['qnty'];
}
if (isset($DATA['tp'])) {
	$_SESSION['tp'] = $DATA['tp'];
}
$_SESSION['errmsg']="You have successfully logout";
?>
<script language="javascript">
document.location="index.php";
</script>
