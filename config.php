<?php
	$con = new mysqli('localhost', 'final', 'final', 'final');
	
	if ($con->connect_errno) {
	    printf("Connect failed: %s\n", $con->connect_error);
	    exit();
	}
?>