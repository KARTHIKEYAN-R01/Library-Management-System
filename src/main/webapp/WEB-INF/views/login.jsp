<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Library Management System</title> 
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: linear-gradient(to right, #4a90e2, #9013fe);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: white;
            padding: 50px 70px;
            border-radius: 15px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            width: 320px;
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 25px;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
        }

        

        button[type="submit"] {
            width: 108%;
            padding: 10px;
            background-color: #4a90e2;
            color:white;
            color: w.button-wrapper {
            text-align: center;
            margin-top: 10px;
            
        }hite;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }

        button[type="submit"]:hover {
            background-color: #357ab8;
        }

        .footer {
            margin-top: 20px;
            font-size: 12px;
            color: #999;
        }

        .error-message {
            color: red;
            margin-bottom: 15px;
            font-weight: bold;
        }
        
            .or-line {
      margin: 20px 0;
      text-align: center;
      position: relative;
    }

    .or-line::before,
    .or-line::after {
      content: '';
      height: 2px;
      width: 40%;
      background: #ccc;
      position: absolute;
      top: 50%;
    }

    .or-line::before {
      left: 1px;
    }

    .or-line::after {
      right: 1px;
    }

    .or-line span {
      background: white;
      padding: 10px 100px;
      color: black;
    }
        
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Library Login</h2>

        <!-- Show backend error if login fails -->
        <c:if test="${not empty errorMessage}">
            <div class="error-message">${errorMessage}</div>
        </c:if>

        <form action="login" method="post">
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" placeholder="Enter email" required />
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" placeholder="Enter password" required />
            </div>

            <div class="button-wrapper" >
                <button type="submit">Login</button>
            </div>
        </form>
        
       <div class="or-line"><span><b>OR</b></span></div>
   
        <form action="Signup" method="get">
            <button type="submit">Signup</button>
        </form>

        <p class="footer">© 2025 Library Management System</p>
    </div>
</body>
</html>
