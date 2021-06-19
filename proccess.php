<?php
$servername='localhost';
$username='root';
$password='';
$dbname = "grants";
$connection=mysqli_connect($servername,$username,$password,"$dbname");
if(!$connection){
	die('Could not connectionect My Sql:' .mysql_error());
}
$query = mysqli_query($connection,"SELECT AVG(rating) as AVGRATE from rating_data where status=1");
$row = mysqli_fetch_array($query);
$AVGRATE=$row['AVGRATE'];
$query = mysqli_query($connection,"SELECT count(rating) as Total from rating_data where status=1");
$row = mysqli_fetch_array($query);
$Total=$row['Total'];
$query = mysqli_query($connection,"SELECT count(remark) as Totalreview from  rating_data where status=1");
$row = mysqli_fetch_array($query);
$Total_review=$row['Totalreview'];
$review = mysqli_query($connection,"SELECT remark,rating,email from rating_data where status=1 order by date_time desc limit 4 ");
$rating = mysqli_query($connection,"SELECT count(*) as Total,rating from rating_data group by rating order by rating desc");
?>