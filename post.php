<?php
	require 'config.php';
	$query = sprintf("SELECT posts.*, users.name
				FROM posts
				JOIN users ON posts.author_id = users.id
				WHERE posts.id =%d
				LIMIT 1", $_GET['id']);
	$query2 = "SELECT *
			FROM comments
			WHERE posts_id = posts.id";
	$result = $con->query($query);
	if ($obj = $result->fetch_object()){
		echo $obj->title."<br/>";
		echo $obj->content;
	}
?>
<form method="POST" action="comment.php">
	<input type="hidden" value="1" name="author" />
	<input type="hidden" value="<?php echo $obj->id; ?>" name="post" />
	<textarea name="content"></textarea>
	<input type="submit" value="Submit"/>

</form>