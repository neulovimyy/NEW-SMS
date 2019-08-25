package com.sms.base;

import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPageEventHelper;


public abstract class BasePDFGenUtil extends PdfPageEventHelper {
	public static SimpleDateFormat dateFormat = new SimpleDateFormat("MMMM dd, yyyy");
	public static SimpleDateFormat shortDateFormat = new SimpleDateFormat("dd-MMM-yyyy");
	public static SimpleDateFormat timeFormat = new SimpleDateFormat("hh:mm:ss a");
	public static DecimalFormat amountFormat =  new DecimalFormat(" #,##0.00; -#, ##0.00");
	public static DecimalFormat amtFmt_noCurrency = new DecimalFormat("#,##0.00");
	
	public static BaseFont courier;
	public static BaseFont courierBold;
	public static BaseFont courierBoldItalic;
	public static BaseFont helveticaNormal;
	public static BaseFont helveticaItalic;
	public static BaseFont helveticaBold;
	public static BaseFont helveticaBoldItalic;
	
	public static BaseFont arial;
	
	public static BaseFont robotoRegular;
	public static BaseFont robotoBold;
	
	public final static Font courierFontNormalUnderlined15 = new Font(courier, 15, Font.UNDERLINE);
	public final static Font courierFontBold14 = new Font(courier, 14, Font.BOLD);
	public final static Font courierFontNormal12 = new Font(courier, 12, Font.NORMAL);
	public final static Font courierFontNormalUnderLineItalic12 = new Font(courier, 12, Font.UNDERLINE| Font.ITALIC);
	public final static Font courierFontNormalUnderLine12 = new Font(courier, 12, Font.UNDERLINE);
	public final static Font courierFontItalic12 = new Font(courier, 12, Font.ITALIC);
	public final static Font courierFontItalic9 = new Font(courier, 5, Font.ITALIC);
	public static final Font BOLD_UNDERLINED_ITALIC12 = new Font(FontFamily.COURIER, 12, Font.BOLD | Font.UNDERLINE | Font.ITALIC);
	public final static Font courierFontNormalUnderlined14 = new Font(courier, 12, Font.UNDERLINE);
	public final static Font courierFontNormalUnderlined12 = new Font(courier, 12, Font.UNDERLINE);
	public final static Font courierFontItalic10 = new Font(courier, 11, Font.ITALIC);
	public final static Font courierFontNormal11 = new Font(courier, 11, Font.NORMAL);
	public final static Font courierFontBold10 = new Font(courier, 11, Font.BOLD);
	public final static Font courierFontNormal10 = new Font(courier, 11, Font.NORMAL);
	public final static Font courierFontBoldUnderLine10 = new Font(courierBold, 11, Font.UNDERLINE);
	public final static Font courierFontBoldItalic12 = new Font(courier, 12, Font.BOLDITALIC);
	public final static Font courierFontBoldItalicUnderline12 = new Font(courierBoldItalic, 12, Font.UNDERLINE);
	public final static Font courierFontBold12 = new Font(courier, 12, Font.BOLD);
	public final static Font courierFontNormal9 = new Font(courier, 9, Font.NORMAL);
	public final static Font courierFontNormal8 = new Font(courier, 8, Font.NORMAL);
	public final static Font courierFontBold9 = new Font(courier, 9, Font.BOLD);
	public final static Font courierFontBold8 = new Font(courier, 8, Font.BOLD);
	public final static Font courierFontNormalUnderlined11 = new Font(courier, 11, Font.UNDERLINE);
	public final static Font courierFontBoldItalicUnderline10 = new Font(courierBoldItalic, 10, Font.UNDERLINE);
	//by Karlo Carido -- 2/26/2013 for ID
	public final static Font courierFontNormal = new Font(courier, 7, Font.NORMAL);
	public final static Font courierFontSmall = new Font(courier, 4, Font.NORMAL);
	public final static Font courierFontSmallBold = new Font(courier, 4, Font.BOLD);
	public final static Font courierFontBold = new Font(courier, 7, Font.BOLD);
	public final static Font courierFontBoldUnderlined = new Font(courierBold, 7, Font.UNDERLINE);
	public final static Font courierFontNormalUnderlined7 = new Font(courier, 7, Font.UNDERLINE);
	public final static Font courierFontNormalUnderlined = new Font(courier, 9, Font.UNDERLINE);
	
	//original
	public final static Font courierFontNormal6 = new Font(courier, 6, Font.NORMAL);
	public final static Font courierFontBold6 = new Font(courier, 6, Font.BOLD);
//	public final static Font courierFontNormalUnderlined = new Font(courier, 8, Font.UNDERLINE);

	//by Karlo Carido -- 2/26/2013 assigned to BillingNotice
	public final static Font courierFont9 = new Font(courier, 9, Font.NORMAL);
	public final Font courierFont9NormalUnderlined = new Font(courier, 9, Font.UNDERLINE);
	public final static Font courierFont9Bold = new Font(courier, 9, Font.BOLD);
	public final Font courierFont9BoldItalic = new Font(courierBold, 9, Font.ITALIC);
	public final Font courierFont9Italic = new Font(courier, 9, Font.ITALIC);
	public final Font courierFont8 = new Font(courier, 8, Font.NORMAL);
	
	public final static Font courierFont14 = new Font(courier, 14, Font.NORMAL);
	public final static Font courierFont14Bold = new Font(courier, 14, Font.BOLD);
	public final static Font courierFont20Bold = new Font(courier, 20, Font.BOLD);
		
	public final static Font courierFont11 = new Font(courier, 11, Font.NORMAL);
	public final static Font courierFont11NormalUnderlined = new Font(courier, 11, Font.UNDERLINE);
	public final static Font courierFont11Bold = new Font(courier, 11, Font.BOLD);
	public final static Font courierFont11BoldItalic = new Font(courierBold, 11, Font.ITALIC);
	public final static Font courierFont11Italic = new Font(courier, 11, Font.ITALIC);
	
	public final static Font helvetica18Bold = new Font(helveticaNormal, 18, Font.BOLD);
	public final static Font helvetica16 = new Font(helveticaNormal, 16, Font.NORMAL);
	public final static Font helvetica14Bold = new Font(helveticaNormal, 14, Font.BOLD);
	
	public final static Font helvetica12 = new Font(helveticaNormal, 12, Font.NORMAL);
	public final static Font helvetica12Bold = new Font(helveticaNormal, 12, Font.BOLD);
	public final static Font helvetica12NormalUnderlined = new Font(helveticaNormal, 11, Font.UNDERLINE); 
	public final static Font helvetica12NormalBoldUnderlined = new Font(helveticaBold, 11, Font.UNDERLINE); 
	
	public final static Font helvetica11 = new Font(helveticaNormal, 11, Font.NORMAL);
	public final static Font helvetica11NormalUnderlined = new Font(helveticaNormal, 11, Font.UNDERLINE);
	public final static Font helvetica11Italic = new Font(helveticaNormal, 11, Font.ITALIC);
	public final static Font helvetica9Italics = new Font(helveticaNormal, 9, Font.ITALIC);
	public final static Font helvetica11Bold = new Font(helveticaNormal, 11, Font.BOLD);
	public final static Font helvetica11BoldItalic = new Font(helveticaBold, 11, Font.ITALIC);
	
	public final static Font helvetica10 = new Font(helveticaNormal, 10, Font.NORMAL);
	public final static Font helvetica10Italic = new Font(helveticaNormal, 10, Font.ITALIC);
	public final static Font helvetica10Bold = new Font(helveticaNormal, 11, Font.BOLD);
	public final static Font helvetica10NormalUnderlined = new Font(helveticaNormal, 10, Font.UNDERLINE);
	
	public final Font helvetica9 = new Font(helveticaNormal, 9, Font.NORMAL);
	public final Font helvetica9NormalUnderlined = new Font(helveticaNormal, 9, Font.UNDERLINE);
	public final Font helvetica9Bold = new Font(helveticaNormal, 9, Font.BOLD);
	public final Font helvetica9BoldItalic = new Font(helveticaBold, 9, Font.ITALIC);
	public final Font helvetica9Italic = new Font(helveticaNormal, 9, Font.ITALIC);

	public final static Font helvetica8 = new Font(helveticaNormal, 8, Font.NORMAL);
	public final static Font helvetica8Underline = new Font(helveticaNormal, 8, Font.UNDERLINE);
	public final static Font helvetica8Bold = new Font(helveticaNormal, 8, Font.BOLD);
	
	public final static Font helvetica7 = new Font(helveticaNormal, 8, Font.NORMAL);
	public final static Font helvetica7Bold = new Font(helveticaNormal, 8, Font.BOLD);
	public final static Font helvetica7Underline = new Font(helveticaNormal, 8, Font.UNDERLINE);
	
	public final static Font helvetica6 = new Font(helveticaNormal, 6, Font.NORMAL);
	public final static Font helvetica6Bold = new Font(helveticaNormal, 6, Font.BOLD);
		
	public final static Font courierH1SizeNormal = new Font(courier, 16, Font.NORMAL);
	public final static Font courierH1SizeUnderlined = new Font(courier, 16, Font.UNDERLINE);
	public final static Font courierH1SizeBold = new Font(courier, 16, Font.BOLD);
	public final static Font courierH1SizeItalic = new Font(courier, 16, Font.ITALIC);
	
	public static SimpleDateFormat sdf_ddMMMMyyyy = new SimpleDateFormat("dd MMMM yyyy");
	public static SimpleDateFormat sdf_MMMMddyyyy = new SimpleDateFormat("MMMM dd, yyyy");
	public static SimpleDateFormat sdf_MMddyyyy = new SimpleDateFormat("MM/dd/yyyy");
	public static SimpleDateFormat sdf_ddMMyyyy = new SimpleDateFormat("dd-MM-yyyy");
	
	public static BaseColor WHITE = BaseColor.WHITE;
	public static BaseColor BLACK = BaseColor.BLACK;
	public static BaseColor GRAY = BaseColor.GRAY;
	public static int ALIGN_LEFT = Element.ALIGN_LEFT;
	public static int ALIGN_RIGHT = Element.ALIGN_RIGHT;
	public static int ALIGN_CENTER = Element.ALIGN_CENTER;
	public static int ALIGN_JUSTIFIED = Element.ALIGN_JUSTIFIED;
	
	public static final int padding = 3;
	public static final int colPadding = 1;
	public static final int colspan = 2;
	public static final String empty = "";
	public static final String emptySpace = " ";
	
	public static Document initialize(Rectangle rec) throws DocumentException, IOException {
		courier =  BaseFont.createFont(BaseFont.COURIER, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
		
		return new Document(rec);
	}
	
	public static Document initialize(Float pageWidth, Float pageHeight) throws DocumentException, IOException {
		courier =  BaseFont.createFont(BaseFont.COURIER, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
		Rectangle pageSize = new Rectangle(pageWidth, pageHeight); 
		
		return new Document(pageSize);
	}
	
	public void initBaseFont(HttpServletRequest request) {
		try {
			robotoRegular = BaseFont.createFont(request.getSession().getServletContext().getRealPath("fonts/RobotoSlab-Regular.ttf"), BaseFont.WINANSI, BaseFont.EMBEDDED);
			robotoBold = BaseFont.createFont(request.getSession().getServletContext().getRealPath("fonts/RobotoSlab-Bold.ttf"), BaseFont.WINANSI, BaseFont.EMBEDDED);
			
			courier =  BaseFont.createFont(BaseFont.COURIER, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
			courierBold =  BaseFont.createFont(BaseFont.COURIER_BOLD, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
			courierBoldItalic =  BaseFont.createFont(BaseFont.COURIER_BOLDOBLIQUE, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
			helveticaNormal = BaseFont.createFont(BaseFont.HELVETICA, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
			helveticaItalic = BaseFont.createFont(BaseFont.HELVETICA_OBLIQUE, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
			helveticaBold = BaseFont.createFont(BaseFont.HELVETICA_BOLD, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
			helveticaBoldItalic = BaseFont.createFont(BaseFont.HELVETICA_BOLDOBLIQUE, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
		} catch (DocumentException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static BaseColor RED = BaseColor.RED;
	public final static Font helvetica8BoldWhite = new Font(helveticaNormal, 8, Font.BOLD, BaseColor.WHITE);
	public final static Font helvetica8Italic = new Font(helveticaNormal, 8, Font.ITALIC);
	public final static Font helvetica7BoldWhite = new Font(helveticaNormal, 7, Font.BOLD, BaseColor.WHITE);
	public final static Font helvetica9BoldWhite = new Font(helveticaNormal, 9, Font.BOLD, BaseColor.WHITE);
	public final static Font helvetica7Italic = new Font(helveticaNormal, 7, Font.ITALIC);

}