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
            <td><input type="radio" id="indomitable" name="playGroup" value="불굴의 의지" />
                <label for="indomitable">불굴의 의지</label>

                <input type="radio" id="mvp" name="playGroup" value="최다 득표자" />
                <label for="mvp">최다 득표자</label>

                <input type="radio" id="legend" name="playGroup" value="왕년의 스타" />
                <label for="legend">왕년의 스타</label>

                <input type="radio" id="starter" name="playGroup" value="최강 선발"  />
                <label for="starter">최강 선발</label>

                <input type="radio" id="sincerity" name="playGroup" value="성싱의 지존" />
                <label for="sincerity">성실의 지존</label>

                <input type="radio" id="beast" name="playGroup" value="근성의 야수"/>
                <label for="beast">근성의 야수</label>

            </td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name"/></td>
        </tr>
        <tr>
            <td>Birth:</td>
            <td><input type="text" name="birth"/></td>
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
            <td>
                <input type="checkbox" id="pitcher" name="position" value="투수" />
                <label for="pitcher">투수</label>

                <input type="checkbox" id="batter" name="position" value="타자" />
                <label for="batter">타자</label>

                <input type="checkbox" id="catcher" name="position" value="포수" />
                <label for="catcher">포수</label>
            </td>
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
            <td>Awards:</td>
            <td><textarea name="awards"></textarea></td>
        </tr>
        <tr>
            <td>Comment:</td>
            <td><textarea name="comment"></textarea></td>
        </tr>
        <tr>
            <td><a href="list">View All Players</a></td>
            <td align="right"><input type="submit" value="Add Player"/></td>
        </tr>
    </table>
</form>

</body>
</html>
