<%--
  Created by IntelliJ IDEA.
  User: 57877
  Date: 2023/3/23
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Beautiful HTML Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            color: #333333;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333333;
            color: #ffffff;
            padding: 20px;
            text-align: center;
        }
        h1 {
            tab-size: 30px;
            margin-top: 0;
        }
        section {
            padding: 20px;
            max-width: 800px;
            margin: 0 auto;
        }
        p {
            line-height: 1.5;
            font-size: 18px;
            margin-bottom: 20px;
        }
        a {
            color: #333333;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            color: #ff6600;
        }

        .slide-up {
            animation-name: slideUp;
            animation-duration: 1.2s;
        }
        @keyframes slideUp {
            from {
                transform: translateY(100%);
                opacity: 0;
            }

            to {
                transform: translateY(0);
                opacity:1;
            }
        }

        .fade-in {
            opacity: 0;
            animation: fadeIn ease-in-out 2s forwards;
        }
        @keyframes fadeIn {
            from {opacity:0;}
            to {opacity:1;}
        }

        .span1{
            margin-top: 50px;
            width: 600px;
            height: 10px;
            background-color: #004dcb;
        }

    </style>
</head>
<body>
<%--标题名--%>
</div><div class="span1"></div>
<header>
    <h1 class="fade-in" >${novelName}</h1>
</header>

<%--输出文本--%>
<section>
    <p class="slide-up">${text}</p>
</section>
</body>
</html>
