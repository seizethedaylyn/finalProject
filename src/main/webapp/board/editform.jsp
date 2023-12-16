<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.example.board.BoardDAO, com.example.board.BoardVO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form action="editok" method="post">
    <input type="hidden" name="playerId" value="${u.id}"/>
    <table>
        <tr>
            <td>Play Group:</td>
            <td><input type="text" name="playGroup" value="${u.playGroup}"/></td>
        </tr>
        <tr>
            <td>Comment:</td>
            <td><input type="text" name="comment" value="${u.comment}"/></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" value="${u.name}"/></td>
        </tr>
        <tr>
            <td>Team Name:</td>
            <td><input type="text" name="teamName" value="${u.teamName}"/></td>
        </tr>
        <tr>
            <td>Player Image:</td>
            <td><input type="text" name="playerImg" value="${u.playerImg}"/></td>
        </tr>
        <tr>
            <td>Position:</td>
            <td><input type="text" name="position" value="${u.position}"/></td>
        </tr>
        <tr>
            <td>SNS ID:</td>
            <td><input type="text" name="snsId" value="${u.snsId}"/></td>
        </tr>
        <tr>
            <td>Height:</td>
            <td><input type="number" name="height" value="${u.height}"/></td>
        </tr>
        <tr>
            <td>Weight:</td>
            <td><input type="number" name="weight" value="${u.weight}"/></td>
        </tr>
        <tr>
            <td>Song:</td>
            <td><input type="text" name="song" value="${u.song}"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Edit Player"/>
                <input type="button" value="Cancel" onclick="history.back()"/>
            </td>
        </tr>
    </table>
</form>

</body>
</html>
