<?php
require 'config.php';
$query = "SELECT posts.*, users.name AS author_name, COUNT(comments.id) AS comment_count
	FROM posts
	JOIN users ON posts.author_id = users.id
	LEFT OUTER JOIN comments ON posts.id = comments.post_id
	GROUP BY posts.id
	ORDER BY posts.created_at DESC";

$posts = $con->query($query);

while($obj = $posts->fetch_object()){
	echo "<div>".sprintf("<a href=\"post.php?id=%d\">%s</a>", $obj->id, $obj->title)."</div>";
	echo "<div>".$obj->author_name."</div>";
	echo "<div>".$obj->content."</div>";
}




// set and remove errors that persist between page calls

// set the error message
//$_SESSION['error'] = "AAAHHHH! THERE WERE ERRORS!"

// print the error message
//echo "<div>%s</div>", $_SESSION['error'];
//unset($_SESSION['error']);



//SELECT users.id FROM users WHERE email="%s" AND password="%s" 
//$_POST['email']
//$_POST['password']
//$_SESSION['current_user'] = $result->fetchthegoddamnedid;

//unset($_SESSION['current_user']);


?>