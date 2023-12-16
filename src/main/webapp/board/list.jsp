<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO, java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Player List</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        #list tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #list tr:hover {
            background-color: #ddd;
        }

        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }

        a {
            text-decoration: none;
            color: black;
        }

        a:hover {
            color: yellow;
        }

        #button1 {
            width: 130px;
            height: 40px;
            border-radius: 15px;
            border: none;
            font-size: 1rem;
        }

        #button1:hover {
            background-color: #006bb3;
            color: white;
        }

        #myDiv {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
    </style>
    <script>
        function delete_ok(playerId) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deleteok/' + playerId;
        }
    </script>
</head>
<body>
<div id="myDiv">
    <h1>Player List</h1>
    <button onclick="location.href='add'" id="button1">Add New Player</button>
</div>
<table id="list" width="90%">
    <tr>
        <th>PlayerId</th>
        <th>Play Group</th>
        <th>Comment</th>
        <th>Name</th>
        <th>Team Name</th>
        <th>Player Image</th>
        <th>Position</th>
        <th>SNS ID</th>
        <th>Height</th>
        <th>Weight</th>
        <th>Song</th>
        <th>Details</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getId()}</td>
            <td>${u.getPlayGroup()}</td>
            <td>${u.getComment()}</td>
            <td>${u.getName()}</td>
            <td>${u.getTeamName()}</td>
            <td>${u.getPlayerImg()}</td>
            <td>${u.getPosition()}</td>
            <td>${u.getSnsId()}</td>
            <td>${u.getHeight()}</td>
            <td>${u.getWeight()}</td>
            <td>${u.getSong()}</td>
            <td><a href="view/${u.id}">⭐️</a></td>
            <td><a href="editform/${u.id}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.id}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
