
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
	var x=document.getElementById("username"),
		y=document.getElementById("password");
	</script>
</head>
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
  	//check user
$result = mysqli_query($con,"SELECT * FROM user where username='x' & password='y'");
while($row = mysqli_fetch_array($result)){
	echo "Hello"+x;
}
?>

</body>
</html>