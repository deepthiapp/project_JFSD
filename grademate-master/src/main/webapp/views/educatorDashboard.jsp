<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TaskMate Manager Dashboard</title>
    
    <!-- Google Fonts link for Poppins -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

    <style>
        /* General Reset and Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
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
            overflow-y: auto;
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

        .admin-info {
            margin-top: 40px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="logo">TaskMate</div>
            <nav>
                <ul>
                    <li><a href="edashboard">Dashboard</a></li>
                    <li><a href="addassignment">Add Tasks</a></li>
                    <li><a href="viewallassignments">View Tasks</a></li>
                    <li><a href="viewAssignments">View Submissions</a></li>
                </ul>
                <br>
                <ul>
                    <li><a href="elogin">Logout</a></li>
                    <li><a href="/profile">Profile</a></li>
                    <li><a href="/feedback">Feedback</a></li>
                </ul>
            </nav>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <header>
                <div class="profile">
                    <a href="/profile" target="_blank">
                        <img src="images/profile.png">
                    </a>
                </div>
            </header>

            <!-- Content Section -->
            <div class="sections">
                <div class="card" onclick="window.location.href='addtask?projectCode=22SDC301A'">
                    <h3>Y22 - Project Management</h3>
                    <p>Recent updates on your project management tasks.</p>
                </div>
                <div class="card" onclick="window.location.href='addtask?projectCode=22EP210A'">
                    <h3>Y22 - Enterprise Solutions</h3>
                    <p>View tasks and submissions related to Enterprise Solutions.</p>
                </div>
            </div>

            <!-- Manager Functionalities -->
            <div class="admin-info">
                <h2>Manager Functionalities</h2>
                <ul>
                    <li>Assign new tasks for projects and ensure deadlines are met.</li>
                    <li>View and manage all assigned tasks, including edits and deletions.</li>
                    <li>Monitor and evaluate employee submissions for each task.</li>
                    <li>Provide detailed feedback and grading for employee submissions.</li>
                    <li>Access and manage manager profile settings, including updating personal details.</li>
                    <li>Respond to employee queries and provide assistance via the messaging feature.</li>
                    <li>View analytics and insights related to employee performance and task trends.</li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>