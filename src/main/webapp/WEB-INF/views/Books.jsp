<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@page import="java.util.List" %>
<%@page import="com.example.librarymanage.entity.BooksEntity" %>


<html>
<head>
    <title>Book List</title>
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
        
        .head{
            margin-top:30px;        
        }
        
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 30px auto;
        }
        th, td {
            border: 5px solid #aaa;
            padding: 10px;
            text-align: center;
        }
        
        #button{
            display: inline-block;
            padding: 20px 30px;
            margin-bottom: 20px;
            background-color: #4a90e2;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;

        }
        
        #add{
           text-align:center;
        }
        
        .action{
             display: inline-block;
            padding: 10px 20px;
            margin-bottom: 20px;
            background-color: #4a90e2;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }
        
        .action1{
             display: inline-block;
            padding: 10px 20px;
            margin-bottom: 20px;
            background-color: red;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }
        
    </style>
</head>
<body>
    <h2 align="center" class = "head">Available Books</h2>
    <table>
        <tr>
            <th>S.NO</th>
            <th>Title</th>
            <th>Author</th>
            <th>Genre</th>
            <th>Year</th>
            <th>Actions</th>
        </tr>
        
        <%List<BooksEntity> books=(List<BooksEntity>)request.getAttribute("books");
     		 int sNo = 1;        	
             for(BooksEntity book: books){
        %>
        
            <tr>
                <td><%= sNo++ %></td>
                <td><%= book.getTitle() %></td>
                <td><%= book.getAuthor()%></td>
                <td><%= book.getGenre()%></td>
                <td><%= book.getYearPublished()%></td>
                <td>
                <a href="<%= request.getContextPath() %>/editbook/<%= book.getId() %>">
                 <button class = "action">Update</button>
                </a>
               
                <a href="<%= request.getContextPath() %>/deletebook/<%= book.getId() %>" 
                onclick="return confirm('Are you sure you want to delete this book?');">
               <button class = "action1">Delete</button>
</a>
                </td>

            </tr>
       <%} %>
    </table>
   <form id = "add" action = "addbooks" method = "get"> 
    <button id = "button"><h3>Add Books</h3></button>
   </form> 
</body>
</html>
