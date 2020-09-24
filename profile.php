<?php 
require 'includes/header.php'
?>

<main>
<link rel="stylesheet" href="css/About.css">
	<div class="profile-section">
		<h1>Account profile</h1>	
	</div>

	


<?php
if (isset($_SESSION['uid'])) {
    include 'html/profile.html';   
}
else    {
    header("Location: login.php");
    exit();
}

?>        
      
</main>