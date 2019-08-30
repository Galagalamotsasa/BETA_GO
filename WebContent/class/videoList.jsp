<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>비디오 리스트</title>
<style>
	section {
	   position: relative;
	   top: 70px;
	}
	
	.card {
	   box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	   trainsition: 0.3s;
	   width: 30%;
	   boarder-radius: 5px;
	   margin-right: 10px;
	   margin-botton: 10px;
	   float: left;
	}
	
	.card .container {
	   margin-top: 5px;
	}
</style>
</head>
<body>
	<section>
      <c:forEach items="${video }" var="video">
      	<a href="./watchVideo?video_no=${video.video_no }">
         <div class="card">
            <img src="${video.video_thumbnail }"
               width="100%" />
            <div class="container">
               <h6>
                  <b>${video.video_title }</b>
               </h6>
            </div>
         </div>
        </a>
      </c:forEach>
   </section>
   <div style="clear: both; disply: table; margin-bottom: 80px;"></div>
</body>
</html>