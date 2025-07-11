<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Library Home</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f4f4f4;
            color: #333;
        }

        header {
            background-color: #4a90e2;
            padding: 20px 0;
            color: white;
        }

        header .container {
            width: 90%;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav a {
            color: white;
            margin-left: 20px;
            text-decoration: none;
            font-weight: bold;
        }

        nav a:hover {
            text-decoration: underline;
        }

        main {
            padding: 60px 20px;
            text-align: center;
        }

        .welcome-box {
            background-color: white;
            padding: 40px;
            margin: 0 auto;
            width: 80%;
            max-width: 600px;
            border-radius: 12px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }

        .welcome-box h2 {
            margin-bottom: 15px;
            font-size: 28px;
        }

        .welcome-box p {
            margin-bottom: 30px;
            font-size: 16px;
        }

        .btn {
            background-color: #4a90e2;
            color: white;
            padding: 12px 24px;
            text-decoration: none;
            border-radius: 8px;
            font-size: 16px;
            transition: background 0.3s ease;
        }

        .btn:hover {
            background-color: #357ab8;
        }

        footer {
            margin-top: 40px;
            padding: 20px;
            text-align: center;
            background-color: #ddd;
            font-size: 14px;
            color: #555;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <h1>Library Management System</h1>
            <nav>
                <a href="home">Home</a>
                <a href="viewbooks">Books</a>
                <a href="students">Students</a>
                <a href="issued-books">Issued Books</a>
                <a href="signup">Logout</a>
            </nav>
        </div>
    </header>

    <main>
        <div class="welcome-box">
            <h2>Welcome to the Library!</h2>
            <p>Manage your books, students, and book issuance seamlessly.</p>
            <a class="btn" href="/viewbooks">View Books</a>
        </div>
    </main>

    <footer>
        <p>© 2025 Library Management System. All rights reserved.</p>
    </footer>
</body>
</html>
