<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task Mate- Employee Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet"> <!-- Add Poppins font link -->
    <style>
        /* General Reset and Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif; /* Changed to Poppins font */
        }

        body {
            background-color: #f4f6f9;
            font-size: 16px;
            color: #333;
        }

        .container {
            display: flex;
            width: 100%;
            height: 100vh;
        }

        /* Sidebar Styling */
        .sidebar {
            width: 250px;
            background-color: #2c3e50;
            color: white;
            padding: 20px;
            box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1);
            height: 100%;
            transition: all 0.3s ease;
        }

        .logo {
            font-size: 1.6em;
            font-weight: 600;
            margin-bottom: 30px;
            text-align: center;
            color: #ecf0f1;
            border-bottom: 2px solid #59e4a8;
            padding-bottom: 10px;
        }

        nav ul {
            list-style-type: none;
            padding: 0;
        }

        nav ul li {
            padding: 15px;
            margin-bottom: 10px;
            border-radius: 5px;
            font-weight: 500;
            cursor: pointer;
            transition: background-color 0.3s, padding-left 0.3s;
        }

        nav ul li:hover {
            background-color: #59e4a8;
            padding-left: 20px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            display: block;
            width: 100%;
        }

        .main-content {
            flex: 1;
            padding: 30px;
            background-color: #ecf0f1;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            border-bottom: 2px solid #bdc3c7;
        }

        .search-bar {
            position: relative;
            width: 300px;
        }

        .search-bar input {
            width: 100%;
            padding: 10px 15px 10px 40px;
            border: 1px solid #ccc;
            border-radius: 25px;
            font-size: 1em;
            outline: none;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        .search-bar input:focus {
            border-color: #59e4a8;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.15);
        }

        .search-bar::before {
            content: '\1F50D';
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 1.2em;
            color: #7f8c8d;
        }

        .profile {
            display: flex;
            align-items: center;
            cursor: pointer;
        }

        .profile img {
            width: 35px;
            height: 35px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .sections {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }

        .card {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
            transition: transform 0.3s;
            border-left: 5px solid #59e4a8;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h3 {
            color: #2c3e50;
            font-size: 1.3em;
            margin-bottom: 10px;
            font-weight: 600;
        }

        .card p {
            font-size: 1em;
            color: #7f8c8d;
        }

    </style>
</head>
<body>
    <div class="container">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="logo">Task Mate</div>
            <nav>
                <ul>
                    <li><a href="sdashboard">Dashboard</a></li>
                    <li><a href="studentviewassignments">view Tasks</a></li>
                    <li><a href="viewGradedSubmissions">View Performance</a></li>
                    <li><a href="viewassignments">Submitted Tasks</a></li>
                </ul>
                <ul class="other">
                    <li><a href="slogin">Logout</a></li>
                    <li><a href="/profile">Profile</a></li>
                    <li><a href="feedback">FeedBack</a></li>
                </ul>
            </nav>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <!-- Header -->
            <header>
               
                <div class="profile">
    <a href="profile" target="_blank">
        <img src="images/profile.png" >
    </a>
    <span>${student.username}</span>
</div>
            </header>

            <!-- Content Section -->
            
                <div class="sections">
                <div class="card" onclick="window.location.href='viewTasks'">
                    <h3>Project A - Development</h3>
                    <p>Recent updates on your development tasks.</p>
                </div>
                <div class="card" onclick="window.location.href='viewTasks'">
                    <h3>Project B - Testing</h3>
                    <p>View and manage tasks related to software testing.</p>
                </div>
                <div class="card" onclick="window.location.href='performance'">
                    <h3>Performance Review</h3>
                    <p>Check your latest performance evaluations and feedback.</p>
                </div>
                <div class="card" onclick="window.location.href='submitReports'">
                    <h3>Submit Reports</h3>
                    <p>Upload your project status and weekly reports.</p>
                </div>
            </div>

<!-- New Features Section -->
<div class="sections">
                <div class="card">
                    <h3>Announcements</h3>
                    <p>Stay updated with the latest company news.</p>
                    <ul>
                        <li>Upcoming Town Hall Meeting - Apr 15</li>
                        <li>Performance bonus details released</li>
                        <li>Deadline for project submissions - Apr 20</li>
                    </ul>
                </div>
                <div class="card">
                    <h3>Upcoming Deadlines</h3>
                    <p>Track important deadlines for your tasks and projects.</p>
                    <ul>
                        <li>Project A - Module 3 Development - Apr 10</li>
                        <li>Testing Report Submission - Apr 12</li>
                        <li>Annual Performance Review - Apr 18</li>
                    </ul>
                </div>
                <div class="card">
                    <h3>Employee Resources</h3>
                    <p>Explore useful tools and materials for your work:</p>
                    <ul>
                        <li><a href="https://www.udemy.com" target="_blank">Skill Development Courses</a></li>
                        <li><a href="https://www.github.com" target="_blank">Project Repositories</a></li>
                        <li><a href="https://www.linkedin.com" target="_blank">Professional Networking</a></li>
                    </ul>
                </div>
            </div>
    </div>
</body>
</html>