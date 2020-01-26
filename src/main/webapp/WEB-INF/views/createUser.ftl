<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create user</title>
</head>
<body>
<h1>Create user</h1>
<form name="user" action="/addUser" method="post">
    <p>
    Name: <input title="Name" type="text" name="name" id="name">
    </p>
    <p>
    Email: <input title="Email" type="text" name="email" id="email">
    </p>
    <p>
    Age: <input title="Age" type="text" name="age" id="age">
    </p>
    <input type="submit" value="Add">
</form>
</body>
</html>