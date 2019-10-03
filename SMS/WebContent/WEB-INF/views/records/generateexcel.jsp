<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>
<%@
page import="java.io.*, com.itextpdf.text.*, com.itextpdf.text.pdf.*, java.sql.*, java.time.LocalDateTime, java.time.format.DateTimeFormatter,
org.apache.poi.xssf.usermodel.XSSFCell, org.apache.poi.xssf.usermodel.XSSFFont, org.apache.poi.xssf.usermodel.XSSFRow, org.apache.poi.xssf.usermodel.XSSFSheet, org.apache.poi.xssf.usermodel.XSSFWorkbook,
org.apache.poi.ss.usermodel.CellStyle, org.apache.poi.ss.usermodel.HorizontalAlignment"
%>
<%
DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MM/dd/yyyy hh:mm a");
LocalDateTime now = LocalDateTime.now();
XSSFWorkbook workbook = new XSSFWorkbook();
XSSFSheet sheet = workbook.createSheet("Students' List");

//CELL STYLE: CENTER-ALIGN
CellStyle center = workbook.createCellStyle();
center.setAlignment(HorizontalAlignment.CENTER);

//CELL STYLE: CENTER-ALIGN & BOLD
CellStyle cellStyle = workbook.createCellStyle();
cellStyle.setAlignment(HorizontalAlignment.CENTER);
XSSFFont font= workbook.createFont();
font.setBold(true);
cellStyle.setFont(font);

//TITLE
sheet.addMergedRegion(new CellRangeAddress(0,0,0,6));
XSSFRow rowTitle = sheet.createRow(0);
XSSFCell cellTitle = rowTitle.createCell(0);
cellTitle.setCellValue("Generated List");
cellTitle.setCellStyle(center);

//TIME, DATE GENERATED
sheet.addMergedRegion(new CellRangeAddress(1,1,0,6));
XSSFRow rowDetails = sheet.createRow(1);
XSSFCell cellDetails = rowDetails.createCell(0);
cellDetails.setCellValue("Student List (as of " + dtf.format(now) + ")");
cellDetails.setCellStyle(center);

//TABLE HEADERS
XSSFRow row = sheet.createRow(2);
XSSFCell cellHeader;
String[] headers = new String[]{"Student ID","Student Name","Age","Contact Number","Civil Status","Birth Date","Gender"};
int x = 0;
while(x < 7) {
	cellHeader = row.createCell(x);
	cellHeader.setCellValue(headers[x]);
	cellHeader.setCellStyle(cellStyle);
	x++;
}

//LAMAN NG TABLE
try {
    try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/smsdb", "root", "ROOT");
        Statement stmt = conn.createStatement();
        /* Define the SQL query  */
        ResultSet query_set = stmt.executeQuery("SELECT stud_id,fname,mname,lname,age,contact_num,civil_status,birthdate,gender FROM studentdb");    

        while(query_set.next()) {
        	int start = 3;
			XSSFRow rowAcco = sheet.createRow(start);
			XSSFCell cellAcco = rowAcco.createCell(0);
			sheet.setColumnWidth(0,5000);
			cellAcco.setCellValue(query_set.getString("stud_id"));
			cellAcco = rowAcco.createCell(1);
			sheet.setColumnWidth(1,5000);
			cellAcco.setCellValue(query_set.getString("fname") + " " + query_set.getString("mname") + " " + query_set.getString("lname"));
			cellAcco = rowAcco.createCell(2);
			sheet.setColumnWidth(2,5500);
			cellAcco.setCellValue(query_set.getString("age"));
			cellAcco = rowAcco.createCell(3);
			sheet.setColumnWidth(3,5000);
			cellAcco.setCellValue(query_set.getString("contact_num"));
			cellAcco = rowAcco.createCell(4);
			sheet.setColumnWidth(4,5000);
			cellAcco.setCellValue(query_set.getString("civil_status"));
			cellAcco = rowAcco.createCell(5);
			sheet.setColumnWidth(5,5000);
			cellAcco.setCellValue(query_set.getString("birthdate"));
			cellAcco = rowAcco.createCell(6);
			sheet.setColumnWidth(6,5000);
			cellAcco.setCellValue(query_set.getString("gender"));
			cellAcco = rowAcco.createCell(7);
			sheet.setColumnWidth(7,5000);
			start++;
		}
	    //query_set.close();
	    //stmt.close();
		workbook.write(new FileOutputStream("C:\\Users\\cedrick sestoso\\Desktop\\ClassList.xlsx"));
	    workbook.close();

	} catch (InstantiationException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IllegalAccessException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} 

/*		try (FileOutputStream outputStream = new FileOutputStream("C:\\Users\\Micha\\Desktop\\ClassList.xlsx")) {
	workbook.write(outputStream);
} */
%>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Generate Excel File Here</title>
</head>
<body>

</body>
</html>