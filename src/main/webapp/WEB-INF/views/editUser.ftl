<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit user</title>
</head>
<body>
<h1>Edit user</h1>
<form name="user" action="/updateUser" method="post">
    <p>
        Id: <input title="Id" type="text" name="id" id="id" value="${user.id}" readonly="readonly">
    </p>
    <p>
        Name: <input title="Name" type="text" name="name" id="name" value="${user.name}">
    </p>
    <p>
        Email: <input title="Email" type="text" name="email" id="email" value="${user.email}">
    </p>
    <p>
        Age: <input title="Age" type="text" name="age" id="age" value="${user.age}">
    </p>
    <input type="submit" value="Update">
</form>
</body>
</html>