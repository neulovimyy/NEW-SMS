<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>
<%@page import java.sql.* %>
<%@page import java.io.FileOutputStream %>
<%@page import java.util.Date %>

<%@page import com.itextpdf.text.Anchor %>
<%@page import com.itextpdf.text.BadElementException %>
<%@page import com.itextpdf.text.Chapter %>
<%@page import com.itextpdf.text.Document %>
<%@page import com.itextpdf.text.DocumentException %>
<%@page import com.itextpdf.text.Element %>
<%@page import com.itextpdf.text.Font %>
<%@page import com.itextpdf.text.Paragraph %>
<%@page import com.itextpdf.text.Phrase %>
<%@page import com.itextpdf.text.Section %>
<%@page import com.itextpdf.text.pdf.PdfPCell %>
<%@page import com.itextpdf.text.pdf.PdfPTable %>
<%@page import com.itextpdf.text.pdf.PdfWriter %>
<%
try {
    Document document = new Document();
    PdfWriter.getInstance(document, new FileOutputStream("Generated Record.pdf"));
    document.open();
    
    PdfPTable records_table = new PdfPTable(9);
    
    PdfPCell table_cell;

    try {
   	 Class.forName ("com.mysql.jdbc.Driver"); 
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/smsdb", "root", "ROOT");
        Statement stmt = conn.createStatement();
        /* Define the SQL query */
        ResultSet query_set = stmt.executeQuery("SELECT stud_id,fname,mname,lname,age,contact_num,civil_status,birthdate,gender FROM studentdb");
    
    while (query_set.next()) {                
        String student_id = query_set.getString("stud_id");
        table_cell=new PdfPCell(new Phrase(student_id));
        records_table.addCell(table_cell);
        String first_name = query_set.getString("fname");
        table_cell=new PdfPCell(new Phrase(first_name));
        records_table.addCell(table_cell);
        String middle_name=query_set.getString("mname");
        table_cell=new PdfPCell(new Phrase(middle_name));
        records_table.addCell(table_cell);
        String last_name=query_set.getString("lname");
        table_cell=new PdfPCell(new Phrase(last_name));
        records_table.addCell(table_cell);
        String age=query_set.getString("age");
        table_cell=new PdfPCell(new Phrase(age));
        records_table.addCell(table_cell);
        String contact_no=query_set.getString("contact_num");
        table_cell=new PdfPCell(new Phrase(contact_no));
        records_table.addCell(table_cell);
        String civil_stat=query_set.getString("civil_status");
        table_cell=new PdfPCell(new Phrase(civil_stat));
        records_table.addCell(table_cell);
        String bday=query_set.getString("birthdate");
        table_cell=new PdfPCell(new Phrase(bday));
        records_table.addCell(table_cell);
        String gender=query_set.getString("gender");
        table_cell=new PdfPCell(new Phrase(gender));
        records_table.addCell(table_cell);
    }
    }

    catch(Exception e){
    	System.out.println("Exception is;"+e);}
    document.add(records_table);                       
    document.close();
}

 catch (Exception e) {
            e.printStackTrace();
        }

%>

<html>
<head>
		<spring:url value="/resources/css/res.css" var="resCss" />
		<spring:url value="/resources/js/res.js" var="resJs" /> 
		<spring:url value="/css/RecordAndReport/table.css" var="tableCss" />	
		<!-- <link href="${pageContext.request.contextPath}/theme1/themecss/res.css" rel="stylesheet" > -->
		<link href="${pageContext.request.contextPath}/theme1/themejs/res.js" rel="stylesheet" >
		<link href="${tableCss}" rel="stylesheet" >
</head>
<div class="container-fluid">
  Generate
</div> 
<body>
</body>

</html>
