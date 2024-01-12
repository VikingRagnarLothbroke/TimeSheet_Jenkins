
<%@page import="com.twg.spring.TimeSheet.Entities.Entry" %>
<%@page import="com.twg.spring.TimeSheet.Entities.User" %>
<%@page import="java.util.List" %>

<% List<Entry> userentries=(List<Entry>)request.getAttribute("entries"); %>
<% User user=(User)session.getAttribute("user"); %>

<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Timesheet page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
  }
  body{
   background:url("/TimeSheet/resources/images/img1.png") no-repeat;
    background-size: cover;
    background-position: center;
    height: 100vh;
    width: 100%;
    position: relative;
  }
  .wrapper{
    position: relative;
    width: 500px;
    height: 500px;
    margin-left: 500px;
    margin-top: 50px;
    background: #fff;
    border:2px solid #fff;
    border-radius: 20px;
    backdrop-filter: blur(20px);
    box-shadow: 0 0 30px rgba(0 0 0 .5);
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .wrapper .form-box{
    width: 100%;
    padding: 40px;
  }
  
  .content{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    padding: 20px 0;
  }
  .input-box{
    display: flex;
    flex-wrap: wrap;
    position: relative;
    width:100%;
    padding-bottom: 15px;
  }
  .input-box label{
    width: 95%;
    margin: 5px 0;
    font-size: 1em;
    color:rgb(231, 132, 11) ;
    font-weight: 500;
    top: 50%;
    left: 5px;
    pointer-events: none;
  }
  .input-box input{
    width: 95%;
    height: 30px;
    background: transparent; 
    border: 1px solid rgb(231, 132, 11) ;
    border-radius: 5px;
    outline: none;
    padding: 0 10px;
  }
  .input-box textarea{
    width: 400px;
    height: 100px;
    border: 1px solid rgb(231, 132, 11) ;
  }
  .btn{
    width: 100%;
  height: 40px;
  background:rgba(231,132,11);
  border: none;
  outline: none;
  border-radius: 6px;
  cursor: pointer;
  font-size: 1em;
  font-weight: 500;
  margin-top: 20px;
  }
  .btn a{
  text-decoration: none;
  color: #fff;
  }

        
        table,
        td,
        th {
    
            padding: 20px;
        }
    </style>
  </head>
  <body style="text-align: center">
    Work updates HomePage
   <div class="wrapper">
      <div class="form-box">
        <table>
            <tr>
                <th>Date</th>
                <th colspan="3">Actions</th>
                </tr>
                <tr>
                <%if(userentries.size()==0) {%>
                <td colspan="4">No entries from user</td>
                <%} %>
                <%for(Entry entry:userentries) {%>
                 <td><% out.println(entry.getEntrydate());%></td>
                 <td><form action="viewupdates" ><button type="submit" class="btn" name="id" value=<%= entry.getId()%>>View</button></form></td>
                 <td><form action="update" ><button type="submit" class="btn" name="id" value=<%= entry.getId() %>>Update</button></form></td>
                <td><form action="delete" ><button type="submit" class="btn" name="id" value=<%= entry.getId() %>>Delete</button></form></td>
                 <tr></tr>
                 <%} %>
                </tr>
              </table>

      </div>
   </div>
  </body>
</html>