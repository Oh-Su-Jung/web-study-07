<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL</title>
<style>
	@font-face {font-family: 'S-CoreDream-4Regular'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff') format('woff'); font-weight: normal; font-style: normal;}
            
	* {margin:0; padding:0; font-family:'S-CoreDream-4Regular'}
	h1 {text-align:center; font-size:40px; margin:60px 0;}
	ul {width:400px; margin:0 auto; text-align:center;}
	ul li {width:100%; overflow:hidden; margin-bottom:5px; text-align:left;}
	ul li > p:first-child {float:left; width:100px; line-height:35px;}
	ul li > p:last-child {float:left; width:300px; line-height:35px; border:1px solid #9c9c9c; box-sizing:border-box; padding:0 7px; background:#f7f7f7}
	.btn {display:block; width:180px; line-height:40px; border:0; background:#ff0000; text-align:center; color:#fff; margin:70px auto 0; text-decoration:none;}
</style>
</head>
<body>
	<h1>정보</h1>
	<ul>
		<li>
			<p>이름</p>
			<p>${member.name}</p>
		</li>
		<li>
			<p>아이디</p>
			<p>${member["userid"]}</p>
		</li>
	</ul>
</body>
</html>