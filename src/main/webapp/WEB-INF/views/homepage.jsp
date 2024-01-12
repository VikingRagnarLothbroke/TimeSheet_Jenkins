<%@page import="com.twg.spring.TimeSheet.Entities.User" %>

<% User user2=(User)request.getAttribute("user1");%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
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

.navbar a{
    position: relative;
    font-size: 1.1em;
    color: dimgrey;
    text-decoration: none;
    background: transparent;
    font-weight: 500;
}
.navbar .btn{
    width: 130px;
    height: 50px;
    background: transparent;
    border: 2px solid #fff;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1.1em;
    color: #fff;
    font-weight: 500;
    margin-right:40px;
    margin-left: 40px;
    margin-top: 40px;
    transition: .5s;
}

.btn:active{
    transform: scale(0.98);
} 
.form{
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
header{
    margin-left: 180px;
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
    padding-top: 15px;
    padding-bottom: 15px;
   
}
.input-box label{
    width: 95%;
    margin: 10px 50px;
    font-size: 1em;
    color:rgb(231, 132, 11) ;
    font-weight: 500;
}
    </style>
    
   <script src="https://kit.fontawesome.com/958e1ca54e.js" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar">
        <button class="btn"><a href="timesheet">Time Sheet</a></button>
        <button class="btn"><a href="getworkupdates">Work Updates</a></button>
    </nav>
    <form action="" class="form">
        
        <div class="content">

       <header><img src="/TimeSheet/resources/images/user1.png" alt=""></header>

       <div class="input-box">
                    <label><a style="color:black;">Name:</a><%=user2.getUsername() %></label>
                </div>
                <div class="input-box">
                    <label>Email:<%=user2.getMail() %></label>
                </div>
                <div class="input-box">
                    <label>Role:<%=user2.getRole() %></label>
                </div>
                <div class="input-box">
                    <label>Location:<%=user2.getLocation() %></label>
                </div>
                <div class="input-box">
                    <label>Contact:<%=user2.getContact() %></label>
                </div>
                </div>
    </form>
</body>
</html>