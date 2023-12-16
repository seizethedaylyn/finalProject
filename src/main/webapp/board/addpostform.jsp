<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Player</title>
</head>
<body>

<h1>Add New Player</h1>
<form action="addok" method="post">
    <table>
        <tr>
            <td>Play Group:</td>
            <td><input type="text" name="playGroup"/></td>
        </tr>
        <tr>
            <td>Comment:</td>
            <td><input type="text" name="comment"/></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name"/></td>
        </tr>
        <tr>
            <td>Team Name:</td>
            <td><input type="text" name="teamName"/></td>
        </tr>
        <tr>
            <td>Player Image:</td>
            <td><input type="text" name="playerImg"/></td>
        </tr>
        <tr>
            <td>Position:</td>
            <td><input type="text" name="position"/></td>
        </tr>
        <tr>
            <td>SNS ID:</td>
            <td><input type="text" name="snsId"/></td>
        </tr>
        <tr>
            <td>Height:</td>
            <td><input type="number" name="height"/></td>
        </tr>
        <tr>
            <td>Weight:</td>
            <td><input type="number" name="weight"/></td>
        </tr>
        <tr>
            <td>Song:</td>
            <td><input type="text" name="song"/></td>
        </tr>
        <tr>
            <td><a href="list">View All Players</a></td>
            <td align="right"><input type="submit" value="Add Player"/></td>
        </tr>
    </table>
</form>

</body>
</html>
