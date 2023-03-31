
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
  <title>My Simple HTML Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }
    h1 {
      color: #181818;
      text-align: center;
      margin-top: 30px;
    }
    ul {
      list-style: none;
        background-color: #ffffff;
        padding: 0;
        height: fit-content;
        margin-top: 30px;
        text-align: center;
    }
    li {
      display: inline-block;
      margin: 10px;
    }
    a {
      display: block;
        width: 100px;
      padding: 10px 20px;
      background-color: #333;
      color: #fff;
      text-decoration: none;
      border-radius: 5px;
      transition: background-color 0.3s ease;
    }
    a:hover {
      background-color: #666;
    }

    /*从左边滑出*/
    .slide-right {
        animation-name: slideRight;
        animation-duration: 1.2s;
    }
    @keyframes slideRight {
        from {
            transform: translateX(-100%);
            opacity: 0;
        }

        to {
            transform: translateX(0);
            opacity:1;
        }
    }

    /*向上延迟滑出*/
    .slide-up-delay {
        animation-name: slideUpDelay;
        animation-duration: 1.2s;
        animation-delay: 0s; /* 延迟1秒 */
    }
    @keyframes slideUpDelay {
        from {
            transform: translateY(100%);
            opacity: 0;
        }

        to {
            transform: translateY(0);
            opacity:1;
        }
    }


    /*从右下滑出*/
    .slide-right-up-delay {
        animation-name: slideRightUpDelay;
        animation-duration: 1.2s;
        animation-delay: 0s; /* 延迟1秒 */
    }
    @keyframes slideRightUpDelay {
        from {
            transform: translateX(100%) translateY(100%);
            opacity: 0;
        }

        to {
            transform: translateX(0) translateY(0);
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
        width: 300px;
        height: 10px;
    }

    .title-p{
        tab-size: 30px;
    }


  </style>
</head>
<body>
<span class="span1"></span> <span class="span1"></span>
<h1 class="fade-in"><p class="title-p">三更灯火五更鸡，正是男儿读书时</p></h1>

<ul>
    <%-- 这里的href相当于get请求方式--%>
    <li class="slide-right"><a href="novel?name=novel1" >红楼梦</a></li>
    <li class="slide-up-delay"><a href="novel?name=novel2">三国演义</a></li>
    <li class="slide-right-up-delay"><a href="novel?name=novel3">西游记</a></li>
</ul>



</body>
</html>


