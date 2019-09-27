<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>

	<head>
		<spring:url value="/css/RecordAndReport/student_info.css" var="studentinfoCss" />
		<link href= "${studentinfoCss}" rel="stylesheet" />
		<script src=<c:url value="/js/Report/sample.js"/>></script>
	</head>

	<body>

        <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <br> <br>
        <a href="#">Home</a>
        <a href="#">Students</a>
        <a href="#">Sections</a>
        <a href="#">Subjects</a>
        <a href="#">Records</a>
        </div>

        <div id="main">
        <div class="header">
            <div class="row">
                <div class="col-sm-1 col-md-1 col-lg-1">
                    <spring:url value="/image" var="images" />
    				<img src="${images}/logo.png"/>
                </div>
                <div class="col-sm-11 col-md-11 col-lg-11">
                <br>
                <p> School Management System <br></p>
                </div>
            </div>
        </div>

        <div class="subheading">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12">
                <span onclick="openNav()"> &#9776; </span>
                <b> &nbsp; &nbsp; Records and Report Management</b>
                </div>
            </div>
        </div>
        <div class="content">
        	<div class="row">
        		<div class="col-sm-10 col-md-10 col-lg-10"><h4>Student Personal Information</h4></div>
        		<div class="col-sm-1 col-md-1 col-lg-1"><button><i class="glyphicon glyphicon-print"></i></button></div>
        		<div class="col-sm-1 col-md-1 col-lg-1"><div><button><a href="home.html"><i class="glyphicon glyphicon-remove"></i></a></button></div></div>
        		
        	</div>
        	<div class="box1">
        		<div class="row">
        			<div class="col-sm-4 col-md-4 col-lg-4">
						<spring:url value="/image" var="images" />
    					<img id="studImg" src="${images}/charlon.png"/>        			
        			</div>
        			<div class="col-sm-8 col-md-8 col-lg-8">
        				<div class="studInfo">
        					<div class="row">
        						<div class="col-sm-3 col-md-3 col-lg-3">Name:</div>
        						<div class="col-sm-9 col-md-9 col-lg-9">Charlon N. Cervas</div>
        						<div class="col-sm-3 col-md-3 col-lg-3">Sex:</div>
        						<div class="col-sm-9 col-md-9 col-lg-9">male</div>
        						<div class="col-sm-3 col-md-3 col-lg-3">Date of Birth:</div>
        						<div class="col-sm-9 col-md-9 col-lg-9">May 13, 1998</div>
        						<div class="col-sm-3 col-md-3 col-lg-3">Age:</div>
        						<div class="col-sm-9 col-md-9 col-lg-9">21</div>
        						<div class="col-sm-3 col-md-3 col-lg-3">Place of Birth:</div>
        						<div class="col-sm-9 col-md-9 col-lg-9">Marikina City</div>
        						<div class="col-sm-3 col-md-3 col-lg-3">Address:</div>
        						<div class="col-sm-9 col-md-9 col-lg-9">103 P.Burgos St. Brgy. St. Niño Marikina City</div>
        						<div class="col-sm-3 col-md-3 col-lg-3">Religion:</div>
        						<div class="col-sm-9 col-md-9 col-lg-9">Roman Catholic</div>
        						<div class="col-sm-3 col-md-3 col-lg-3">Contact Number:</div>
        						<div class="col-sm-9 col-md-9 col-lg-9">09198923571</div>
        						<div class="col-sm-3 col-md-3 col-lg-3">Email Address:</div>
        						<div class="col-sm-9 col-md-9 col-lg-9">charloncervas13@gmail.com</div>
        						<div class="col-sm-3 col-md-3 col-lg-3">Mothers name:</div>
        						<div class="col-sm-9 col-md-9 col-lg-9">Ma. Cecilla Cervas</div>
        						<div class="col-sm-3 col-md-3 col-lg-3">Fathers name:</div>
        						<div class="col-sm-9 col-md-9 col-lg-9">Charlie Cervas</div>
        						<div class="col-sm-3 col-md-3 col-lg-3">Fathers Occupation:</div>
        						<div class="col-sm-9 col-md-9 col-lg-9">Administratve Staff</div>
        					</div>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
        </div>

    </body>
    
    
    
    
    
    
    
    
    
    
    
</html>