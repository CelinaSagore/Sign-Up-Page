<%@page import="java.util.*"%>
<html>
<head>
<style>
body {
    background: linear-gradient(to right, #f0f8ff, #e6e6fa);
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    justify-content: center;
    align-items: center;
    margin: 0;
}
h1 {
    color: #ff69b4;
    text-align: center;
        justify-content:center;
    margin-bottom: 40px;
    margin-top: 40px;
    font-size: 40px;
    font-weight: bold;
    display: flex;
}
div {
    justify-content:center;
    display: flex;
}
form {
    background-color: #ffffff;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    width: 350px;
    text-align: left;
}
input[type="radio"] {
    width: auto;
    margin-right: 10px;
}
input:focus, select:focus {
    border-color: #ff69b4;
    outline: none;
}
input, select {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 2px solid #ddd;
    border-radius: 10px;
    font-size: 18px;
    box-sizing: border-box;
    transition: border-color 0.3s;
}

button {
    width: 100%;
    font-size: 20px;
    background: #ff69b4;
    color: white;
    border: none;
    border-radius: 10px;
    padding: 10px;
    cursor: pointer;
    transition: background-color 0.3s;
}

button:hover {
    background-color: #ff85c1;
}
</style>
</head>
<body>
<h1>
Student Registration Form
</h1>
<div>
<form action="regForm" method="post">
Name:<input type="text" name="name" required /><br>
Email:<input type="email" name="email" required /><br>
Password:<input type="text" name="password" required /><br>
Gender:<input type="radio" name="gender" value="Female" required />Female
<input type="radio" name="gender" value="Male" required />Male<br>
City:<select name="city" required>
<option> Select City </option>
<option> Delhi </option>
<option> Mumbai </option>
<option> Pune </option>
<option> Banglore </option>
</select><br>
<button type="submit" value="Register">Register</button>
</form>

<a href="Display.jsp"> Display Details </a>
</div>
</body>
</html>