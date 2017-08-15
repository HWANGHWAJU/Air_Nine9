<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>




<div id="wrap" class="myreservation">

	
	<div>
		<c:set var="res" value="${param.res }"/>
		<c:if test="${res == null }">
			<c:set var="res" value="viewReser_ReservationList.jsp"/>
		</c:if>
		<jsp:include page="${res }"/>
	</div>


</div>
