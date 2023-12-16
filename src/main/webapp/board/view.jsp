<jsp:useBean id="u" scope="request" type="com.example.board.BoardVO"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.example.board.BoardVO, com.example.board.BoardDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Player</title>
</head>
<body>
<h1>Edit Player</h1>
<form>
    <input type="hidden" name="id" value="${u.id}"/>
    <table>
        <tr>
            <td>Play Group:</td>
            <td><input type="text" name="playGroup" value="${u.playGroup}" disabled/></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" value="${u.name}" disabled/></td>
        </tr>
        <tr>
            <td>Birth:</td>
            <td><input type="text" name="birth" value="${u.birth}"disabled/></td>
        </tr>
        <tr>
            <td>Team Name:</td>
            <td><input type="text" name="teamName" value="${u.teamName}" disabled/></td>
        </tr>
        <tr>
            <td>Player Image:</td>
            <td><input type="text" name="playerImg" value="${u.playerImg}" disabled/></td>
        </tr>
        <tr>
            <td>Position:</td>
            <td><input type="text" name="position" value="${u.position}" disabled/></td>
        </tr>
        <tr>
            <td>SNS ID:</td>
            <td><input type="text" name="snsId" value="${u.snsId}" disabled/></td>
        </tr>
        <tr>
            <td>Height:</td>
            <td><input type="number" name="height" value="${u.height}" disabled/></td>
        </tr>
        <tr>
            <td>Weight:</td>
            <td><input type="number" name="weight" value="${u.weight}" disabled/></td>
        </tr>
        <tr>
            <td>Song:</td>
            <td><input type="text" name="song" value="${u.song}" disabled/></td>
        </tr>
        <tr>
            <td>Comment:</td>
            <td><textarea name="comment" disabled>${u.comment}</textarea></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="button" value="홈으로" onclick="history.back()"/>
            </td>
        </tr>
    </table>
</form>

</body>
</html>
