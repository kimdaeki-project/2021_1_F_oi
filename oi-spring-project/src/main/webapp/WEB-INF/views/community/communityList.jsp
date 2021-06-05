<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

	.table-box {
		border: 1px solid black;
		width: 30%;
		height: auto;
		margin-left: 30%;
		margin-bottom: 2%;
		padding: 0 0 1.8% 0;
		color: black;
		font-size: 12pt;
	}
	
	ul {
  		list-style:none;
    }
    
    li {
    	padding-top: 2.5%;
    }
    
    .category-line{
    	background-color: #e2e2e2;
    	border-radius: 5px 5px 5px 5px;
    	border: 1px solid #e2e2e2;
    	text-align: center;
    	width: 30%;
    	height: auto;
    	padding: 0.5%;
    	font-size: 8pt;
    }
    
    a:link { 
    	color: black; 
    	text-decoration: none;
    }
    
    .div-size{
    	width: 100%;
    	font-size: 10pt;
    	color: gray;
    }
    
    .div-left{
    	width: 50%;
    	float: left;
    }
    
    .div-right{
    	width: 50%;
    	float: right;
    }
    
    .insert-button{
    	border: 1px solid black;
    	width: 5%;
    	height: auto;
    	margin-left: 55%; 
    	margin-bottom: 5%;
    }
    
	
</style>

</head>
<body>

	<h1>Community List</h1>
	
	<c:forEach items="${list}" var="vo" >
		<div class="table-box">
			<ul>
				<li>
					<div class="category-line">
						${vo.category}
					</div>
				</li>
				
				<li>
					<a href="./communitySelect?categoryNum=${vo.categoryNum}&&num=${vo.num}">
					${vo.contents}
					</a>
				</li>
				<li>
					<div class="div-size">
						<div class="div-left">${vo.writer} · ${vo.location}</div>
						<div class="div-right">${vo.regDate}</div>
					</div>
				</li>
			</ul>
		</div>
	</c:forEach>

	<div class="insert-button">
		<a href="./communityInsert">글 작성</a>
	</div>

</body>
</html>