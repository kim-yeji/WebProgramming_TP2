<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.File"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String menu = request.getParameter("menu");
	String price = request.getParameter("price");
	String imgs = request.getParameter("imgs");
	String loc = request.getParameter("loc");
	String time = request.getParameter("time");
	
	FileWriter fw = null;
	BufferedWriter bw = null;
	try
	{ 
		File file = new File("D:\\java\\WPsave\\Memo\\"+imgs.replace("/", "_")+".txt");
		fw = new FileWriter(file); 
		bw = new BufferedWriter(fw);

		bw.write(menu);
	  	bw.newLine(); // 줄바꿈
		bw.write(price);
	  	bw.newLine(); // 줄바꿈
		bw.write(imgs);
	  	bw.newLine(); // 줄바꿈
		bw.write(loc);
	  	bw.newLine(); // 줄바꿈
	  	bw.write(time);
	  	bw.newLine(); // 줄바꿈
	}
	catch (IOException e)
	{
		out.println(e); // 에러가 있다면 메시지 출력
		out.println("파일에 데이터를 쓸 수 없습니다.");
	}
	finally{
		if(bw != null)	bw.close();
	}
		
	
	%>
	
	
</body>
</html>