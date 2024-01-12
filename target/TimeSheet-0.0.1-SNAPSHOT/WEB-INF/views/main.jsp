<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Timesheet</title>
    <style>
   body {
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
.header{
    position: fixed;
    top:0;
    left: 0;
    width: 100%;
    padding: 20px 10%;
    display: flex;
    align-items: center;
    z-index: 100;
}
.logo{
    font-size: 32px;
    color: #fff;
    text-decoration: none;
    font-weight: 700;
    filter: drop-shadow(0 0 5px #90350b);
}
.navbar a{
    font-size: 18px;
    color: #fff;
    text-decoration: none;
    font-weight: 500;
    margin-left: 35px;
    transition: .5s;
}
.navbar a:hover,
.navbar a.active{
    color:#90350b; 
 }   
 section{
    min-height: 100vh;
    padding: 10rem 9% 2rem;
}
 .about{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    gap: 2rem;
    background:url("/TimeSheet/resources/images/dimg1.png") no-repeat;
    background-size: cover;
    background-position: center;
    height: 100vh;
    width: 100%;
    position: relative;
    padding-bottom: 6rem;
}
.heading{
    font-size: 5rem;
    margin-bottom: 3rem;
    text-align: center;
    color: #fff;
  
}
span{
    color: #fff;
    filter: drop-shadow(0 0 5px #90350b);
}

.about-content{
    text-align: center;
}
.about-content h3{
    font-size: 2.6rem;
    filter: drop-shadow(0 0 5px #90350b);
    color: #fff;    
}

.about-content p{
    font-size: 1.6rem;
    margin: 2rem 0 3rem;
    color: #90350b;
}
</style>

</head>
<body>

        <main class="main">
            <header class="header">
                <a href="#" class="logo">Time Sheet</a>
                <nav class="navbar">
                    <a href="home.html" class="active">Home</a>
                    <a href="#about">About</a>
                    <a href="home">Register</a>
                    <a href="test">Login</a>
                    <a href="#">Logout</a>
                </nav>
            </header>
        </main>
        <section>

        </section>
           <section class="about" id="about">
            
            <h2 class="heading"> About <span> Time Sheet</span></h2>
        
           
            <div class="about-content">

                <h3>It's Purpose</h3>
                
                <p>A timesheet is a document that records the time an employee has worked during a specific period. It can be used to track employee productivity as well.This Time Sheet allows us to record our day to day activities with date and time span and keep our record tracks safe and secure.</p>
                     
            </div>
           </section>     
</body>
</html>