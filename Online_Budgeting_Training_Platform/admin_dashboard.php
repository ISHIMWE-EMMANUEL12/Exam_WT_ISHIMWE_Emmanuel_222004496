<?php
// Include database connection file
require_once "config.php";

// Fetch total number of users from the database
$sql_users = "SELECT COUNT(*) AS total_users FROM users";
$result_users = $conn->query($sql_users);
$total_users = $result_users->fetch_assoc()['total_users'];

// Fetch total number of courses from the database
$sql_courses = "SELECT COUNT(DISTINCT CourseID) AS total_courses FROM courses";

$result_courses = $conn->query($sql_courses);
$total_courses = $result_courses->fetch_assoc()['total_courses'];

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: grey;
        }

        /* Sidebar Styles */
        .sidebar {
            height: 100%;
            width: 250px;
            align-items: center;
            top: 0;
            left: 0;
            background-color: #333;
            padding-top: 20px;
            
        }

        .sidebar h2 {
            font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
            font-size:40px;
            color: #fff;
            text-align: center;
            margin-bottom: 30px;
        }

        .sidebar ul {
            align-items: center;
            padding: 0;
            
        }

        .sidebar li {
            align-items: center;
            background-color:blue;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 20px;
            text-align: center;
            width: 200px;
        }

        .sidebar a {
            text-decoration: none;
            color: #fff;
            font-size: 18px;
            transition: all 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #555;
        }

        /* Main Content Styles */
        .content {
            margin-left: 250px;
            padding: 20px;
        }

        .content h2 {
            color: green;
            margin-bottom: 20px;
        }

        #section h2{
            color:red;
        }
        /* Add some color to sections */
        section {
            
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 60px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }

        /* Add hover effect to sections */
        section:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }
        h2 {
           text-align: center;
           font-size: 30px;
           font-family: "Arial", sans-serif; 
           font-style:bold;
           color: red; 
}
#overview h2 {
    text-align: center;
    font-size: 30px; 
    font-family: "Arial", sans-serif; 
    color: green;
}
#overview {
    background-color: #f9f9f9;
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

#overview h2 {
    text-align: center;
    font-size: 40px;
    color: #333;
    margin-bottom: 20px;
    font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
}

#overview p {
    text-align:center;
    font-size: 18px;
    color: black;
    margin-bottom: 10px;
}

#overview ul {
    list-style-type: none;
    padding: 28;
    
}

#overview li {
    text-align:center;
    font-size: 30px;
    color: green;
    margin-bottom: 5px;
}
footer{
    width:86%;
    margin-left:220px;
}



    </style>
</head>
<body>
    <!-- Sidebar navigation menu -->
    <div class="sidebar">
        <h2>ADMIN PANEL</h2>
        <ul>
            <li><a href="#overview">Dashboard Overview</a></li>
            <li><a href="#manage-users">Manage Users</a></li>
            <li><a href="#manage-courses">Manage Courses</a></li>
            <li><a href="#manage-enrollments">Manage Enrollments</a></li>
            <li><a href="#view-transactions">View Transactions</a></li>
            <li><a href="#manage-assessments">Manage Assessments</a></li>
            <li><a href="#settings-preferences">Settings & Preferences</a></li>
            <li><a href="logout.php">Logout</a></li>
        </ul>
    </div>

    <!-- Main content area -->
    <div class="content">
        <!-- Dashboard Overview -->
        <section id="overview">
            <h2>DASHBOARD OVERIEW</h2>
            <p>Welcome to the Dashboard Overview section. Here, you can find a summary of key metrics and statistics:</p>
            <ul>
                <li>Total number of users: <?php echo $total_users; ?></li>
                <li>Number of active courses: <?php echo $total_courses; ?></li>
                <li>Completion rate of courses</li>
                <li>Recent activity or updates</li>
            </ul>
        </section>

        <!-- Manage Users -->
        <section id="manage-users">
            <h2>MANAGE USERS</h2>
            <?php include "manage_users.php"; ?>
            <!-- Add user management functionality here -->
        </section>

        <!-- Manage Courses -->
        <section id="manage-courses">
            <h2>MANAGE COURSES</h2>
            <?php include "manage_courses.php"; ?>
            <!-- Add course management functionality here -->
        </section>

        <!-- Manage Enrollments -->
        <section id="manage-enrollments">
            <h2>MANAGE ENROLLMENTS</h2>
            <?php include "manage_enrollments.php"; ?>
            <!-- Add enrollment management functionality here -->
        </section>

        <!-- View Transactions -->
        <section id="view-transactions">
            <h2>VIEW TRANSACTIONS</h2>
            <?php include "manage_transactions.php"; ?>
            <!-- Add transaction viewing functionality here -->
        </section>

        <!-- Manage Assessments -->
        <section id="manage-assessments">
            <h2>MANAGE ASSESSMENTS</h2>
            <?php include "manage_assessments.php"; ?>
            <!-- Add assessment management functionality here -->
        </section>

        
    </div>

    <!-- Footer Section -->
    <footer class="footer">
      <div class="container2">
        <div class="left-part">
          <p class="mb-0">Designed by Budgeting Experts</p>
          <p class="mb-0">UR, RN1-HUYE</p>
          <p class="mb-0">contact@budgetingplatform.com</p>
          <p class="mb-0">+250 785 237 426</p>
        </div>
        <div class="right-part">
          <p class="mb-0">© 2024 Budgeting Platform. All rights reserved.</p>
          <p class="mb-0">Designed by: <a href="#" target="_blank" class="fw-bold">Emmanuel</a></p>
          <p class="mb-0">Distributed by: <a href="#" target="_blank" class="fw-bold">Emmanuel</a></p>
        </div>
      </div>
    </footer>
    
</body>
</html>
