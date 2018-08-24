<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.net.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="org.json.simple.JSONObject"%>

<% 

	List<Map> menuList = new ArrayList<Map>();
	
	BufferedReader br = null;
	try
	{
		File file= new File("D:\\java\\WPsave\\Memo");
		String[] fileNames = file.list();
		
		for(String name : fileNames){
			br = new BufferedReader(new FileReader(new File("D:\\java\\WPsave\\Memo\\"+name)));
			Map<String,String> map = new HashMap<String,String>();
			map.put("menu", br.readLine());
			map.put("price", br.readLine());
			map.put("imgs", br.readLine());
			map.put("loc", br.readLine());
			map.put("time", br.readLine());
			menuList.add(map);
		}
	
		JSONObject json = new JSONObject();
		json.put("menuList", menuList);
		
		out.print(json.toString());
		
	}catch(Exception e){
		
	}finally{
		if(br != null)	br.close();
	}

%>

