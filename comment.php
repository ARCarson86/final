<?php
	require 'config.php';


	// TODO - cleanse the input


	$query = sprintf("INSERT INTO comments
				(content, author_id, post_id)
				VALUES (\"%s\", %d, %d)", $_POST['content'], $_POST['author'], $_POST['post']);
	$result = $con->query($query);
	header('Location: post.php?id='.$_POST['post']);

?>