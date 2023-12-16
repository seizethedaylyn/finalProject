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
    <input type="hidden" name="id" value="${u.id}"/>
    <table>
        <tr>
            <td>Play Group:</td>
            <td>
                <input type="radio" id="indomitable" name="playGroup" value="불굴의 의지" ${u.playGroup == '불굴의 의지' ? 'checked' : ''} />
                <label for="indomitable">불굴의 의지</label>

                <input type="radio" id="mvp" name="playGroup" value="최다 득표자" ${u.playGroup == '최다 득표자' ? 'checked' : ''} />
                <label for="mvp">최다 득표자</label>

                <input type="radio" id="legend" name="playGroup" value="왕년의 스타" ${u.playGroup == '왕년의 스타' ? 'checked' : ''} />
                <label for="legend">왕년의 스타</label>

                <input type="radio" id="starter" name="playGroup" value="최강 선발" ${u.playGroup == '최강 선발' ? 'checked' : ''} />
                <label for="starter">최강 선발</label>

                <input type="radio" id="sincerity" name="playGroup" value="성싱의 지존" ${u.playGroup == '성싱의 지존' ? 'checked' : ''} />
                <label for="sincerity">성실의 지존</label>

                <input type="radio" id="beast" name="playGroup" value="근성의 야수" ${u.playGroup == '근성의 야수' ? 'checked' : ''} />
                <label for="beast">근성의 야수</label>
            </td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" value="${u.name}"/></td>
        </tr>
        <tr>
            <td>Birth:</td>
            <td><input type="text" name="birth" value="${u.birth}"/></td>
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
            <td>
                <input type="checkbox" id="pitcher" name="position" value="투수" ${u.position == '투수' ? 'checked' : ''} />
                <label for="pitcher">투수</label>

                <input type="checkbox" id="batter" name="position" value="타자" ${u.position == '타자' ? 'checked' : ''} />
                <label for="batter">타자</label>

                <input type="checkbox" id="catcher" name="position" value="포수" ${u.position == '포수' ? 'checked' : ''} />
                <label for="catcher">포수</label>
            </td>
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
            <td>Awards:</td>
            <td><textarea name="awards">${u.awards}</textarea></td>
        </tr>
        <tr>
            <td>Comment:</td>
            <td><textarea name="comment">${u.comment}</textarea></td>
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
