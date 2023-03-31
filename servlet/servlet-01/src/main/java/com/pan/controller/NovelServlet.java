package com.pan.controller;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;


@WebServlet("/novel")
public class NovelServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        //获取get请求里的参数
        String novelName = request.getParameter("name");
        String novelPath = getServletContext().getRealPath("novels/"+novelName + ".txt");
        BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(novelPath), "UTF-8"));

        String line = null;
        StringBuilder sb = new StringBuilder();
        while ((line = reader.readLine()) != null) {
            sb.append(line);
            sb.append("<br>");

        }
        reader.close();
        //判断文件名，改变标题
        if(novelName.equals("novel1")){
            request.setAttribute("novelName","《红楼梦》");
        } else if (novelName.equals("novel2")) {
            request.setAttribute("novelName","《三国演义》");
        } else if (novelName.equals("novel3")) {
            request.setAttribute("novelName","《西游记》");
        }
        //请求转发
        request.setAttribute("text",sb.toString());
        request.getRequestDispatcher("show.jsp").forward(request,response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
