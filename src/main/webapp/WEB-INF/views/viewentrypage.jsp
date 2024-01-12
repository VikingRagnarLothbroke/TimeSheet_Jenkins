<%@page import="com.twg.spring.TimeSheet.Entities.Entry" %>
<%@page import="com.twg.spring.TimeSheet.Entities.User" %>

<% Entry entry=(Entry)request.getAttribute("entry"); %>
<% User user=(User)session.getAttribute("user"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Work updates view page</title>
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
    .form-box h2{
        font-size: 2em;
        color: rgb(231, 132, 11);
        text-align: center;
        margin-bottom: 20px;
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
    </style>
</head>
<body>
     <div class="wrapper">
        <div class="form-box">
           <h2> View your Updates </h2>
           <form action="backtohome" method="post">
            <div class="content">
            <div class="input-box">
                <label>Date</label>
                <input type="date" value=<%= entry.getEntrydate() %> readonly>
            </div>
            <div class="input-box" >
                <label>Task </label>
                <textarea readonly><%= entry.getWorkupdates() %></textarea>
                <input type="hidden" name="id" value=<%=user.getId() %>>
            </div>
            <button type="submit" class="btn">Back</button>
            </div>
           </form>
        </div>
    </div>
    
    
</body>
</html>


 

