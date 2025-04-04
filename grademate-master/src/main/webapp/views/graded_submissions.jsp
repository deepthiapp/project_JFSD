<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GradeMate - Graded Submissions</title>
    <!-- Link to Google Fonts for Poppins -->
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
            font-size: 1.2em;
            font-weight: bold;
            margin-bottom: 30px;
            text-align: center;
            color: #ecf0f1;
            border-bottom: 2px solid #3d9f42; /* Accent color */
            padding-bottom: 10px;
            font-family: 'Georgia', serif;
        }

        .logo span {
            font-size: 1.8em;
            font-weight: bold;
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
            background-color: #3d9f42; /* Accent color */
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
            border-color: #3d9f42; /* Accent color */
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

        .content {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .content h3 {
            color: #2c3e50;
            margin-bottom: 10px;
        }

        .content ul {
            list-style: none;
            padding-left: 20px;
        }

        .content ul li {
            font-size: 1em;
            color: #7f8c8d;
            margin-bottom: 5px;
        }

        table {
            width: 100%;
            margin-top: 30px;
            border-collapse: collapse;
        }

        table th, table td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ccc;
        }

        table th {
            background-color: #2c3e50;
            color: white;
        }

        table td {
            background-color: #ffffff;
        }

        table td a {
            color: #3d9f42; /* Accent color */
            text-decoration: none;
        }

        table td a:hover {
            text-decoration: underline;
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
            <header>
                
               
            </header>

            <div class="content">
                <h1>Your Graded Submissions</h1>
                <table>
                    <tr>
                        <th>Assignment Title</th>
                        <th>Submission Date</th>
                        <th>Marks</th>
                        <th>Remarks</th>
                    </tr>
                    <c:forEach var="submission" items="${submissions}">
                        <tr>
                            <td>${submission.assignment.title}</td>
                            <td>${submission.submissionDate}</td>
                            <td>${submission.marks}</td>
                            <td>${submission.remarks}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</body>
</html>