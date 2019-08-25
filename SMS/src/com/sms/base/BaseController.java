package com.sms.base;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.itextpdf.text.Font;
import com.itextpdf.text.pdf.BaseFont;
import com.sms.util.Config;
import com.sms.util.DateUtility;

@Controller
public class BaseController extends BasePDFGenUtil {
	
	Logger logger = Logger.getLogger(BaseController.class);
	protected SimpleDateFormat excelFmtMMddyyyy = new SimpleDateFormat("MM/dd/yyyy");
	protected SimpleDateFormat excelFmtTimestamp = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
	protected DecimalFormat fmtCurrency = new DecimalFormat("#,##0.00");
	protected static BaseFont courier;
	protected static final Font courierFontNormal = new Font(courier, 7.0F, 0);
	protected final Font courierFont14Normal = new Font(courier, 11.0F, 0);
	protected final Font courierFont11BOLD = new Font(courier, 11.0F, 1);
	protected final Font courierFont10Normal = new Font(courier, 10.0F, 0);
	protected final Font courierFont11 = new Font(courier, 11.0F, 0);
	protected static final Font courierFontBold = new Font(courier, 10.0F, 1);
	protected static final Font courierFontBoldTitle = new Font(courier, 14.0F, 1);
	protected final Font courierFontItalic = new Font(courier, 7.0F, 2);
	protected final Font courierFontNormalUnderlined = new Font(courier, 7.0F, 4);
	protected final Font courierFontBold10Underlined = new Font(courier, 10.0F, 5);
	protected final Font courierH1SizeUnderlined = new Font(courier, 16.0F, 4);
	protected static final String HEADER_IMG_SRC = "images/company_logo.png";
	protected static final String FAQ = "faq/ApolloMedicusFAQ.pdf";
	private String message;
	private String exceptionMessage;
	private String EXCEPTION_PAGE = "exceptionPage";
	protected final String DOWNLOAD_PAGE = "downloadPage";
	public String username;
	private Map<Integer, String> status;
//	private static final String BREAK = "\n\n\n";

	private Map<Integer, String> genderDesc;
	private Map<Integer, String> confidentialDesc;

	@ExceptionHandler({ Exception.class })
	public String handleException(Exception e) {
		e.printStackTrace();
		setExceptionMessage(e.toString());

		return this.EXCEPTION_PAGE;
	}

	@ModelAttribute("message")
	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getMessageValue(String key) {
		return com.sms.util.Config.getProperties(key);
	}

	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		CustomDateEditor editor = new CustomDateEditor(dateFormat, true);
		binder.registerCustomEditor(Date.class, editor);
	}

	public String setMessageRequired(String objectName) {
		return objectName + " is required.";
	}

	@ModelAttribute("exceptionMessage")
	public String getExceptionMessage() {
		return this.exceptionMessage;
	}

	public void setExceptionMessage(String exceptionMessage) {
		this.exceptionMessage = exceptionMessage;
	}

	protected void printParametersDebugging(HttpServletRequest request) {
		this.logger.info("FOR NAMES");
		Enumeration<String> names = request.getParameterNames();
		while (names.hasMoreElements()) {
			String name = (String) names.nextElement();
			this.logger.info("name: " + name + " |  value: " + request.getParameter(name));
		}
		this.logger.info("\n\n\n");
	}

	protected void printAttributesDebugging(HttpServletRequest request) {
		this.logger.info("FOR ATTRIBUTES");
		Enumeration<String> attrbs = request.getAttributeNames();
		while (attrbs.hasMoreElements()) {
			String name = (String) attrbs.nextElement();
			if (name != null) {
				this.logger.info("name: " + name + " |  value: " + ((request.getParameter(name) == null) || (request.getParameter(name).toString() == null) ? "BLANK" : request.getParameter(name).toString()));
			}
		}
		this.logger.info("\n\n\n");
	}

	@ModelAttribute("rootUrl")
	public String getRootURL(HttpServletRequest request) throws Exception {
		StringBuffer baseUrl = request.getRequestURL();
		String locationUrl = StringUtils.substringBefore(baseUrl.toString(), ":8080");
		return locationUrl;
	}

	public String getTimestamp() {
		return DateUtility.convertDateToStr(new Date(), "MMddyyyyhhmmss");
	}

	@ModelAttribute("launchWord")
	public String getOfficeWord() {
		return Config.getProperties("launch.word");
	}

	@ModelAttribute("launchExcel")
	public String getOfficeExcel() {
		return Config.getProperties("launch.excel");
	}

	@ModelAttribute("launchPowerpoint")
	public String getOfficePowerpoint() {
		return Config.getProperties("launch.powerpoint");
	}

	@ModelAttribute("launchVoiceToText")
	public String getVoiceToText() {
		return Config.getProperties("launch.voiceToText");
	}

	@ModelAttribute("appStatus")
	public String getAppStatus() {
		return Config.getProperties("app.status");
	}

	public String getSmsAppId() {
		return Config.getProperties("sms.app.id");
	}

	public String getSmsAppSecretId() {
		return Config.getProperties("sms.app.secretId");
	}

	public Integer getSmsPatientInterval() {
		return Integer.parseInt(Config.getProperties("sms.patient.interval.send"));
	}

	public Integer getSmsPatientDuration() {
		return Integer.parseInt(Config.getProperties("sms.patient.duration.send"));
	}

	public String getSenderAddress() {
		return Config.getProperties("sms.sender.address");
	}

	public String getPatientSmsBodyMessage() {
		return Config.getProperties("sms.patient.message.body");
	}

	public String getDoctorSmsBodyMessage() {
		return Config.getProperties("sms.doctor.message.body");
	}

	public String getCounryCode() {
		return Config.getProperties("sms.country.code");
	}

	public String getTimeToSendSMS() {
		return Config.getProperties("sms.doctor.time.send");
	}

	public String getDoctorAppointmentBodyMessage() {
		return Config.getProperties("sms.doctor.appointment.message.body");
	}

	public static String convertFirstLetterToUpperCase(String str) {

		// Create a char array of given String
		char ch[] = str.toLowerCase().toCharArray();
		for (int i = 0; i < str.length(); i++) {

			// If first character of a word is found
			if (i == 0 && ch[i] != ' ' || ch[i] != ' ' && ch[i - 1] == ' ') {

				// If it is in lower-case
				if (ch[i] >= 'a' && ch[i] <= 'z') {

					// Convert into Upper-case
					ch[i] = (char) (ch[i] - 'a' + 'A');
				}
			}

			// If apart from first character
			// Any one is in Upper-case
			else if (ch[i] >= 'A' && ch[i] <= 'Z')

				// Convert into Lower-Case
				ch[i] = (char) (ch[i] + 'a' - 'A');
		}

		// Convert the char array to equivalent String
		String st = new String(ch);
		return st;
	}

	/*@ModelAttribute("gender")
	public Map<Integer, String> genderDesc(ModelMap map) {
		if (InventoryUtility.isNull(this.genderDesc)) {
			this.genderDesc = new HashMap();
			GenderEnum[] arrayOfGenderEnum;
			int j = (arrayOfGenderEnum = GenderEnum.values()).length;
			for (int i = 0; i < j; i++) {
				GenderEnum value = arrayOfGenderEnum[i];
				this.genderDesc.put(value.getId(), value.getDescription());
			}
		}
		return this.genderDesc;
	}*/



	

}
