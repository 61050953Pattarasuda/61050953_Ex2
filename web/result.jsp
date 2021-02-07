<%-- 
    Document   : result
    Created on : Feb 7, 2021, 8:59:29 PM
    Author     : pattarasuda953
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
    </head>
    <body>
        <h1>
         <%
            int number=Integer.parseInt(request.getParameter("number"));  
            int flag=0;
            for(int i=2 ; i< number ;i++)
            {  
               int result=number%i;
               if(result==0)  
                    {  
                       flag=1;  
                       break;  
                    }
              }  
            if(number==1){
                flag=1;
            }
            if(flag==0)    
                out.println(number+" is Prime");    
            else   
                out.println(number+" is not Prime");  
%>  
                
        </h1>
    </body>
</html>
