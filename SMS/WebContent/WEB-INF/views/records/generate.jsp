<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>
<%@
page import="java.io.*, com.itextpdf.text.*, com.itextpdf.text.pdf.*, java.sql.*, com.itextpdf.text.Image"
%>
<%
	
    Document document=new Document(); 
    PdfWriter.getInstance(document,new FileOutputStream("C:\\Users\\Micha\\Desktop\\ClassList.pdf"));
    document.open();
    document.add(new Paragraph("TAENAAAAAAAAAAAAAAAAAAAA GUMANA KAAAAAAAAAA"));
    document.add(new Paragraph("NAIISTRESS NAKO MAMI HELP"));
    document.add(new Paragraph("BUTI PA GTREND DI SABAY SABAY SUMAYAW PERO KUMIKITA"));
    document.add(new Paragraph("US2 KO NALANG MAGING BATO"));
	
//    float[] columnWidths = {1, 1, 1, 1, 1, 2, 1, 1, 1}; //=15
    PdfPTable table = new PdfPTable(9);
    table.setWidthPercentage(100); //Width 100%
    table.setSpacingBefore(10f); //Space before table
    table.setSpacingAfter(10f); //Space after table
    //table.setWidths(new int[]{30,70, 30, 50, 50, 60, 60});
    
    //insert data (Table headers) into the cell
    PdfPCell cell1 = new PdfPCell(new Paragraph("STUDENT_ID"));
    PdfPCell cell2 = new PdfPCell(new Paragraph("STUDENT NAME"));
    cell2.setColspan(3);
   // PdfPCell cell3 = new PdfPCell(new Paragraph("MIDDLE NAME"));
   // PdfPCell cell4 = new PdfPCell(new Paragraph("LAST NAME"));
    PdfPCell cell5 = new PdfPCell(new Paragraph("AGE"));
    PdfPCell cell6 = new PdfPCell(new Paragraph("CONTACT NUMBER"));
    PdfPCell cell7 = new PdfPCell(new Paragraph("CIVIL STATUS"));
    PdfPCell cell8 = new PdfPCell(new Paragraph("BIRTHDAY"));
    PdfPCell cell9 = new PdfPCell(new Paragraph("GENDER"));
    
    table.addCell(cell1);
    table.addCell(cell2);
    //table.addCell(cell3);
    //table.addCell(cell4);
    table.addCell(cell5);
    table.addCell(cell6);
    table.addCell(cell7);
    table.addCell(cell8);
    table.addCell(cell9);
    
    try {
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/smsdb", "root", "ROOT");
    Statement stmt = conn.createStatement();
    /* Define the SQL query */
    ResultSet query_set = stmt.executeQuery("SELECT stud_id,fname,mname,lname,age,contact_num,civil_status,birthdate,gender FROM studentdb");    
    
    while(query_set.next()){
    String student_id = query_set.getString("stud_id");
    String first_name = query_set.getString("fname");
    String middle_name = query_set.getString("mname");
    String last_name = query_set.getString("lname");
    String age = query_set.getString("age");
    String contact = query_set.getString("contact_num");
    String civil_stat = query_set.getString("civil_status");
    String bdate = query_set.getString("birthdate");
    String gender = query_set.getString("gender");

    
    table.addCell(student_id);
    table.addCell(first_name);
    table.addCell(middle_name);
    table.addCell(last_name);
    table.addCell(age);
    table.addCell(contact);        
    table.addCell(civil_stat);
    table.addCell(bdate);
    table.addCell(gender);
     }
    query_set.close();
    stmt.close();
    document.add(table); 
//    document.add(Image.getInstance("\\image\\image.png"));
    document.close(); }
    
    catch(Exception e)
    {System.out.println("Exception is;"+e);} 

    //for watermark
    
    PdfReader Read_PDF_To_Watermark = new PdfReader("C:\\Users\\Micha\\Desktop\\ClassList.pdf");
    int number_of_pages = Read_PDF_To_Watermark.getNumberOfPages();
    PdfStamper stamp = new PdfStamper(Read_PDF_To_Watermark, new FileOutputStream("C:\\Users\\Micha\\Desktop\\Watermark.pdf"));
    int i = 0;
    Image watermark_image = Image.getInstance("C:\\Users\\Micha\\Desktop\\sms-logo.png");
    //watermark_image.setAbsolutePosition(1, 1);
    
    PdfContentByte add_watermark;            
    while (i < number_of_pages) {
      i++;
      add_watermark = stamp.getUnderContent(i);
      Rectangle  pagesize = Read_PDF_To_Watermark.getPageSize(i);
      int pageRotation = Read_PDF_To_Watermark.getPageRotation(i);
      float  x = (pagesize.getLeft() + pagesize.getRight()) / 2 ;
      float  y = (pagesize.getTop() + pagesize.getBottom()) / 2 ;
      if(pageRotation != 0){

           x = (pagesize.getHeight()) / 2;
           y = (pagesize.getWidth()) / 2;

           y = y - 25;

      }
      float w = watermark_image.getScaledWidth();
      float h = watermark_image.getScaledHeight();
      float scaleMultiplicationFactor = 1.00f;
      float image_width = (w * (scaleMultiplicationFactor));
      float image_height = (h * (scaleMultiplicationFactor));
      float x_co_ordinate = x - (image_width / 2 );
      float y_co_ordinate = y - (image_height / 2);
      add_watermark.addImage(watermark_image, w, 0, 0, h,  x_co_ordinate , y_co_ordinate);
    }
    stamp.close();

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
  The file is being generated. Check it out on the Desktop.
</div> 
<body>
</body>
</html>
