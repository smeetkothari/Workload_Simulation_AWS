<%-- 
    Document   : registrationview
    Created on : Feb 17, 2016, 10:56:17 PM
    Author     : yash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration Form</title>
    </head>
    <script>
        var xmlHttp;
        function myFunction() {
            //alert("hello1");
            xmlHttp = GetXmlHttpObject();
            if (xmlHttp == null)
            {
                alert("Your browser does not support AJAX!");
                return;
            }
            var fileName = document.getElementById("fileName").value;
            var id = document.getElementById("id").value;
            
            var query = "action=upload&filename="+filename+"&id="+id;
            
            xmlHttp.onreadystatechange = stateChanged;
            xmlHttp.open("POST", "uploadform.htm", true);
            xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xmlHttp.send(query);
           // alert("hello3");
            return false;
          //  alert("hello4");
        }

        function stateChanged()
        {
            if (xmlHttp.readyState == 4)
            {
              // alert(xmlHttp.responseText);
                var json = JSON.parse(xmlHttp.responseText);
                //alert(json.successmsg);
                document.getElementById("success").innerHTML = json.successmsg;
            }
        }

        function GetXmlHttpObject()
        {
            var xmlHttp = null;
            try
            {
                // Firefox, Opera 8.0+, Safari
                xmlHttp = new XMLHttpRequest();
            } catch (e)
            {
                // Internet Explorer
                try
                {
                    xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
                } catch (e)
                {
                    xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
            }
            return xmlHttp;
        }
    </script>
    <body>
        <div id="success"></div>
        <spring:form commandName="userUpload" onsubmit="return myFunction();" method="POST" enctype="multipart/form-data">
            File Name : <spring:input path="fileName" id="fileName" type="text"/>
           
            
            ID : <spring:input path="id" id="id" value="${sessionScope.customerId}" type="text"/>
           
            
            Select File (Max Size: 5MB): <spring:input path="file" type="file"/>
            
            <input type="submit" name="Register User">
            
        </spring:form>
    </body>
</html>
