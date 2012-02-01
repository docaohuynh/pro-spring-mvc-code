<!DOCTYPE HTML>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<html>
<head>
    <meta charset="utf-8">
    <c:set var="title.key">
        <tiles:insertAttribute name="title" defaultValue="foo.bar"/>
    </c:set>
    <title>Bookstore | <spring:message code="${title.key}" text="Your Home in Books"/></title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" >
</head>
<body>
    <div id="wrap">
        <tiles:insertAttribute name="header"/>
       <div class="center_content">
        <div class="left_content">
            <h1><spring:message code="${title.key}" text="${title.key}" /></h1>
            <tiles:insertAttribute name="body" />
        </div><!--end of left content-->
        
        <div class="right_content">
         
             <div class="right_box">
             
                <div class="title"><span class="title_icon"><img src="<c:url value="/resources/images/bullet4.gif"/>" alt="" title="" /></span><spring:message code="main.title.randombooks"/></div> 
                    <c:forEach items="${randomBooks}" var="book">
                        <div class="new_prod_box">
                            <c:url value="/book/${book.id}" var="bookUrl" />
                            <a href="${bookUrl}">${book.title}</a>
                            <div class="new_prod_img">
                            <c:url value="/book/${book.isbn}/image" var="bookImage"/>
                            <a href="${bookUrl}"><img src="${bookImage}" alt="${book.title}" title="${book.title}" class="thumb" border="0" width="100px"/></a>
                            </div>           
                        </div>
                    </c:forEach>
             </div>
        
        </div><!--end of right content-->
        
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
       <tiles:insertAttribute name="footer" />       
    </div>
</body>
</html>

