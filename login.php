<!DOCTYPE html>
<html>
<body>
<?php

	$con=mysqli_connect("mysql5.000webhost.com","a1460684_web","Zhangjie987","a1460684_web");
 
	// Check connection
	if (mysqli_connect_errno())
  	{
  		echo "Failed to connect to MySQL: " . mysqli_connect_error();
  	}
	else
  		echo "Connected!"."<br>";
 

	session_start();
	$_SESSION["username"] = $_POST['username'];
	$_SESSION["password"] = $_POST['password'];
	if(!empty($_SESSION["username"]) && !empty($_SESSION["password"]))
	{
    	$sql="select * from user where username='$_SESSION[username]' and  password='$_SESSION[password]'";
    	$query=mysql_query($sql);
    	if(mysql_fetch_array($query))
    	{
 			echo "login successfully";
 			exit;
 		}
 		else
 			echo "Please register first!";
	}else{
			echo "The user name and password can not be empty!";
	}

?>
</body>
</html>