<?php

/**
*Created by  : 
* Reg Number : 
*Department  : Year 2 in BIT (Business Information Technology)
*Project     : online_budgeting_training_platform (OBTP)
 
 */
// Database configuration
define('DB_SERVER', 'localhost');                          // Dabase location
define('DB_USERNAME', 'EMMANUEL');                             // User s
define('DB_PASSWORD', '222004496');                                 // Pasword
define('DB_NAME', 'online_budgeting_training_platform');   // Database name 
define('DB_PORT', '3306');                                 // Port used by mysql

// connect to the database
$conn = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME, DB_PORT);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
