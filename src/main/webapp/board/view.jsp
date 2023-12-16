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

<%--<%--%>
<%--    PlayerDAO playerDAO = new PlayerDAO();--%>
<%--    String playerId = request.getParameter("playerId");--%>
<%--    PlayerVO u = null;--%>

<%--    // playerId가 null이 아닌 경우에만 데이터를 가져오도록 수정--%>
<%--    if (playerId != null && !playerId.isEmpty()) {--%>
<%--        u = playerDAO.getPlayer(Integer.parseInt(playerId));--%>
<%--    }--%>
<%--%>--%>

<h1>Edit Player</h1>
<form>
    <input type="hidden" name="playerId" value="${u.id}"/>
    <table>
        <tr>
            <td>Play Group:</td>
            <td><input type="text" name="playGroup" value="${u.playGroup}" disabled/></td>
        </tr>
        <tr>
            <td>Comment:</td>
            <td><input type="text" name="comment" value="${u.comment}" disabled/></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" value="${u.name}" disabled/></td>
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
            <td colspan="2">
                <input type="button" value="수정하기" onclick="editPlayer()"/>
                <input type="button" value="홈으로" onclick="history.back()"/>
            </td>
        </tr>
    </table>
</form>

<script>
    function editPlayer() {
        // 수정하기 버튼 클릭 시 동작할 코드 추가
        // 예: 폼을 서버로 제출하거나, 수정 가능하도록 input 태그의 disabled 속성을 해제하는 등의 동작
        alert("수정 기능을 구현해주세요.");
    }
</script>

</body>
</html>
