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

        .player-container {
            border: 1px solid #ddd;
            padding: 10px;
            margin-bottom: 10px;
            width: 23%; /* Adjusted width for four items in a row */
            box-sizing: border-box;
            float: left;
            margin-right: 2%;
        }

        .player-container:hover {
            background-color: #f9f9f9;
        }

        .player-container h2 {
            margin-top: 0;
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

<c:forEach items="${list}" var="u" varStatus="status">
    <div class="player-container">
        <h2>${u.getName()}</h2>
        <p><strong>Play Group:</strong> ${u.getPlayGroup()}</p>
        <p><strong>Birth:</strong> ${u.getBirth()}</p>
        <p><strong>Team Name:</strong> ${u.getTeamName()}</p>
        <p><strong>Position:</strong> ${u.getPosition()}</p>

        <!-- 상세보기, 수정, 삭제 링크 추가 -->
        <p><a href="view/${u.id}">⭐️ Details</a></p>
        <p><a href="editform/${u.id}">Edit</a></p>
        <p><a href="javascript:delete_ok('${u.id}')">Delete</a></p>
    </div>
    <c:if test="${status.index % 4 == 3}">
        <div style="clear:both;"></div>
    </c:if>
</c:forEach>
</body>
</html>
