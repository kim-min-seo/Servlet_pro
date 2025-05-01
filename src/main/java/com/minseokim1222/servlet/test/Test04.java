package com.minseokim1222.servlet.test;



import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;



@WebServlet("/servlet/test04")

public class Test04 extends HttpServlet {



    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html; charset=UTF-8");

        PrintWriter out = response.getWriter();



        out.println(

            "<html>\n"

            + "<head><title>리스트 출력</title></head>\n"

            + "<body>\n"

            + "<ul>\n"

            + getListItems()

            + "</ul>\n"

            + "</body>\n"

            + "</html>"

        );

    }



    private String getListItems() {

        String items = "";

        for (int i = 1; i <= 30; i++) {

            items += "<li>" + i + " 번째 리스트</li>\n";

        }

        return items;

    }
}

