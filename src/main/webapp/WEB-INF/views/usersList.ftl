<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Users list</title>
</head>
<body>
<h1>User lists</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Age</th>
        <th></th>
        <th></th>
    </tr>
<#list users as user>
    <tr>
        <td><a href="/users/${user.id}">${user.id}</a></td>
        <td>${user.name}</td>
        <td>${user.email}</td>
        <td>${user.age}</td>
        <td><a href="/update/${user.id}">Update</a></td>
        <td><a href="/delete/${user.id}">Delete</a></td>
    </tr>
</#list>
</table>
<br>
<a href="/addUser">Add user</a>
</body>
</html>