<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
  <style >
  {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}
  body{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background:url("/TimeSheet/resources/images/img1.png") no-repeat;
    background-size: cover;
    background-position: center;
}
.wrapper{
    position: relative;
    width: 550px;
    height: 700px;
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
}
.input-box{
    position: relative;
    width:100%;
    height: 50px;
    border-bottom: 2px solid rgb(174, 104, 13);
    margin: 30px 0;
}
.input-box label{
    position: absolute;
    top: 50%;
    left: 5px;
    transform: translateY(-50%);
    font-size: 1em;
    color:rgb(231, 132, 11) ;
    font-weight: 500;
    pointer-events: none;
    transition: .5s;
}
.input-box input{
    width: 100%;
    height: 100%;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    font-weight: 600;
    padding: 0 35px 0 5px;
}
.input-box input:focus~label,
.input-box input:valid~label{
    top: -5px;
}
.R-F{
    font-size: .9em;
    color: rgb(231, 132, 11);
    font-weight: 500;
    margin: 25px 0 10px;
    display: flex;
    justify-content: space-between;
}
.R-F label input{
    accent-color:rgb(231, 132, 11) ;
    margin-right: 3px;

}

.btn{
    width: 100%;
    height: 45px;
    background:rgba(231,132,11);
    border: none;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1em;
    color: #fff;
    font-weight: 500;
}

.register{
    font-size: .9em;
    color: rgba(231,132,11);
    text-align: center;
    font-weight: 500;
    margin: 25px 0 10px;
}
.register p a{
    color: rgba(231,132,11);
    text-decoration: none;
    font-weight: 600;
}
.register p a:hover{
    text-decoration: underline;
}
.select{
    margin: 25px 0 10px;
}
option{
    font-weight: 600;
    color: rgba(231,132,11);
}

  </style>
</head>
<body>
    <div class="wrapper">
        <div class="form-box">
            <h2>Register</h2>
           <form action="registeruser" method="post">
            <div class="input-box">
                
                <input type="text" name="username" required>
                <label>Username</label>
            </div>
            <div class="input-box">
                
                <input type="text" name="mail" required>
                <label>Personal Email</label>
            </div>
            <div class="input-box">
                <input type="text" name="password"  required>
                <label>Password</label>
            </div>
         
            <div class="input-box">
                
                <input type="text" name="contact" required>
                <label>Contact</label>
            </div>
               <div class="input-box">
                
                <input type="text" name="role" required>
                <label>Role</label>
            </div>
               <div class="input-box">
                
                <input type="text"  name="location"  required>
                <label>Location</label>
            </div>
            <div class="R-F">
        
            </div>
            <button type="submit" class="btn">Register Now</button>
          
           </form>
        </div>
    </div>
    
</body>
</html>

</html>