<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.sql.ResultSet"%>
     <%@page import = "javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Score</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/score.css">
    </head>
    <body>
    
    <%
  
    String name = request.getParameter("name");
    ArrayList<String> answer_list = new ArrayList<String>();
    answer_list= (ArrayList<String>)session.getAttribute("list");
    int score = 0;
    int i = 1;
   for(String str:answer_list)
    {
    	
    		String sel_option = request.getParameter(Integer.toString(i));
    		
    		if(str.equals(sel_option))
    		{
    			score++;
    		}
    		i++;
    	
    }
 
    %>
        <main>
            <div class="boxcenter">
                <div class="result">
                    <h2>Thanks <%= name %> for using our platform</h2>
                    <h3>You have scored <%= score %> out of <%= answer_list.size() %> </h3>
                </div>
            </div>
        </main>
    </body>
</html>