package com.minseokim1222.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06 extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
       
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json");
       
        PrintWriter out = response.getWriter();
       
        String numberStr1 = request.getParameter("number1");
        String numberStr2 = request.getParameter("number2");
       
        int number1 = Integer.parseInt(numberStr1);
        int number2 = Integer.parseInt(numberStr2);
       
        // JSON 출력
        out.println("{\n"
        	    + "\t\"addition\": " + (number1 + number2) + ",\n"
        	    + "\t\"subtraction\": " + (number1 - number2) + ",\n"
        	    + "\t\"multiplication\": " + (number1 * number2) + ",\n"
        	    + "\t\"division\": " + (number2 != 0 ? (number1 / number2) : "\"undefined\"") + "\n"
        	    + "}");

    }
}
