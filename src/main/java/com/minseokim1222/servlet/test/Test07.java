package com.minseokim1222.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String pricestr = request.getParameter("price");
		
		int price = Integer.parseInt(pricestr);
		
		
		
		out.println(""
				+ "<html>\n"
				+ "<head><title>주소</title></head>\n"
				+ "<body>\n");
		
		if(address == null || !address.contains("서울시")) {
			out.println("<h3>배달 불가 지역입니다.</h3>"
					+ "</body><html>");
			return;
		}
		else if("신한카드".equals(card)) {
			out.println("<h3>결제 불가 카드입니다.</h3>"
					+ "</body><html>");
			return;
		}
		
		out.println(address + "\n"
				+"<hr>"
				+ "결제 금액 : " + price);
		
		out.println(""
				+ "</body>"
				+ "</html>");
	}
}
