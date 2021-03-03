package com.main.cmmn.util;

import java.awt.Color;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Clob;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.text.StringCharacterIterator;
import java.util.ArrayList;
//import java.util.Base64;
//import java.util.Base64.Decoder;
//import java.util.Base64.Encoder;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.PostMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 * <pre>
 * Statements
 * 
 * <pre>
 * 
 * @ClassName   : commonUtil.java
 * @Description : �겢�옒�뒪 �꽕紐낆쓣 湲곗닠�빀�땲�떎.
 * @author Min KH
 * @since 2015. 5. 30.
 * @version 1.0
 * @see
 * @Modification Information
 * 
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2015. 5. 30.    Min KH     理쒖큹 �깮�꽦
 * </pre>
 */

public class CommonUtil {

	public CommonUtil() {
	}

	/**
	 * null �씠硫� "", �븘�땲硫� �엯�젰媛� 由ы꽩
	 * 
	 * @param str
	 * @return
	 */
	public static String nvl(Object str) {
		return nvl((String) str);
	}

	public static String nvl(String str) {
		CommonUtil.htmlToText(str);

		if ((str == null) || (str == "") || (str.equals("null"))
				|| (str.length() == 0)) {
			return "";
		} else {
			return new String(str);
		}
	}

	/**
	 * null �씠硫� returnValue, �븘�땲硫� �엯�젰媛� 由ы꽩
	 * 
	 * @param str
	 * @param returnValue
	 * @return
	 */
	public static String nvl(Object str, String returnValue) {
		return nvl((String) str, returnValue);
	}

	public static String nvl(String str, String returnValue) {
		if ((str == null) || (str == "") || (str.equals("null"))
				|| (str.length() == 0)) {
			return returnValue;
		} else {
			return new String(str);
		}
	}

	/**
	 * null �씠硫� returnValue, �븘�땲硫� �썝�옒 String�쓣 int濡� return
	 * 
	 * @param str
	 * @param returnValue
	 * @return
	 */
	public static int nvl(Object str, int returnValue) {
		return nvl((String) str, returnValue);
	}

	public static int nvl(String str, int returnValue) {
		if ((str == null) || (str == "") || (str.equals("null"))
				|| (str.length() == 0)) {
			return returnValue;
		} else {
			return Integer.parseInt(str);
		}
	}

	/**
	 * HTML �깭洹몃�� �듅�닔臾몄옄濡� 蹂��솚
	 * 
	 * @param pStr
	 * @return
	 */
	public static String htmlToText(String pStr) {
		if (pStr == null) {
			pStr = "";
		} else {
			pStr = pStr.trim();
			pStr = pStr.replaceAll("&", "&amp;");
			pStr = pStr.replaceAll("<", "&lt;");
			pStr = pStr.replaceAll(">", "&gt;");
			pStr = pStr.replaceAll("\"", "&quot;");
			pStr = pStr.replaceAll("/", "&frasl;");
			pStr = pStr.replaceAll("'", "&#39;");
			pStr = pStr.replaceAll("\"", "&#34;");
			pStr = pStr.replaceAll(" ", "&nbsp;");
		}

		return pStr;
	}

	/**
	 * HTML �깭洹몃�� �듅�닔臾몄옄濡� 蹂��솚
	 * 
	 * @param pStr
	 * @return
	 */
	public static String htmlToText3(String pStr) {
		if (pStr == null) {
			pStr = "";
		} else {
			pStr = pStr.trim();
			pStr = pStr.replaceAll("&", "&amp;");
			pStr = pStr.replaceAll("<", "&lt;");
			pStr = pStr.replaceAll(">", "&gt;");
			pStr = pStr.replaceAll("\"", "&quot;");
			pStr = pStr.replaceAll("/", "&frasl;");
			pStr = pStr.replaceAll("'", "&#39;");
			pStr = pStr.replaceAll("\"", "&#34;");
		}

		return pStr;
	}
	
	/**
	 * 蹂��닔�뿉 媛믪씠 �뾾�뒗吏� 泥댄겕
	 * 
	 * @param str
	 * @return
	 */
	public static boolean empty(String str) {
		if (str != null && str.trim().length() > 0)
			return false;
		else
			return true;
	}

	/**
	 * 蹂��닔�뿉 媛믪씠 �엳�뒗吏� 泥댄겕
	 * 
	 * @param str
	 * @return
	 */
	public static boolean emptyNot(String str) {
		if (str != null && str.trim().length() > 0)
			return true;
		else
			return false;
	}

	/**
	 * 湲��옄 �븵�뿉 吏��젙�븳 湲��옄濡� �옄由ъ닔 留욎텛湲� (�쇊履쎌뿉 遺숈씠湲�)
	 * 
	 * @param src
	 * @param cnt
	 * @param pad
	 * @return
	 */
	public String str_pad_left(String src, int cnt, String pad) {
		if (src.length() < cnt) {
			int c2 = cnt - src.length();
			String src2 = "";
			for (int i = 0; i < c2; i++) {
				src2 = src2 + pad;
			}
			return src2 + src;
		} else {
			return src;
		}
	}

	/**
	 * commas�� �븿猿� 諛섑솚
	 * 
	 * @param num
	 * @return
	 */
	public static String getStrWithCommas(int num) {
		DecimalFormat df = new DecimalFormat("#,##0");

		return df.format(num);
	}

	/**
	 * �쁽�옱 HttpServletRequest 諛섑솚
	 * 
	 * @return
	 */
	public static HttpServletRequest getRequest() {
		ServletRequestAttributes sra = (ServletRequestAttributes) RequestContextHolder
				.currentRequestAttributes();

		HttpServletRequest hsr = sra.getRequest();
		return hsr;
	}

	/**
	 * charSet �솗�씤
	 * 
	 * @param str_kr
	 * @throws UnsupportedEncodingException
	 */
	public static void charSet(String str_kr)
			throws UnsupportedEncodingException {
		String charset[] = { "euc-kr", "ksc5601", "iso-8859-1", "8859_1",
				"ascii", "UTF-8" };

		for (int i = 0; i < charset.length; i++) {
			for (int j = 0; j < charset.length; j++) {
				if (i == j)
					continue;

				System.out.println(charset[i] + " : " + charset[j] + " :"
						+ new String(str_kr.getBytes(charset[i]), charset[j]));
			}
		}
	}

	/**
	 * �씤肄붾뵫 蹂�寃� : 8859_1 to UTF-8
	 * 
	 * @param str
	 * @return
	 */
	public static String toHan(String str) {
		try {
			if (str == null) {
				return null;
			}
			return new String(str.getBytes("8859_1"), "UTF-8");
		} catch (UnsupportedEncodingException ex) {
			ex.printStackTrace();
			return "";
		}
	}

	/**
	 * �씤肄붾뵫 蹂�寃� : 8859_1 to EUC-KR
	 * 
	 * @param str
	 * @return
	 */
	public static String toHanEuckr(String str) {
		try {
			if (str == null) {
				return null;
			}
			return new String(str.getBytes("8859_1"), "euc-kr");
		} catch (UnsupportedEncodingException ex) {
			ex.printStackTrace();
			return "";
		}
	}
	
	/**
	 * KSC5601 �씤肄붾뵫�맂 臾몄옄�뿴�쓣 �엯�젰諛쏆븘 KSC5601 ���엯�쑝濡� �씤肄붾뵫�쓣 蹂��솚�븳�떎.
	 * @param value KSC5601濡� 濡� �씤肄붾뵫�맂 臾몄옄�뿴
	 * @return String ISO_8859_1濡� �씤肄붾뵫�맂 臾몄옄�뿴 
	 */
	public static String encodeUS7ASCII(String value) {
	    if(value == null) {
	        return "";
	    }
	    String str = "";
	    try {
	        str = new String(value.getBytes("KSC5601") ,"8859_1");
	    } catch (UnsupportedEncodingException e) {
	        e.printStackTrace();
	    } 
	    return str;
	}
	 
	/**
	 * ISO_8859_1濡� �씤肄붾뵫�맂 臾몄옄�뿴�쓣 �엯�젰諛쏆븘 KSC5601 ���엯�쑝濡� �씤肄붾뵫�쓣 蹂��솚�븳�떎.
	 * @param value ISO_8859_1 濡� �씤肄붾뵫�맂 臾몄옄�뿴
	 * @return String KSC5601濡� �씤肄붾뵫�맂 臾몄옄�뿴 
	 */
	public static String decodeUS7ASCII(String value) {
	    if(value== null) {
	        return "";
	    }
	    String str = "";
	    try {
	        str = new String(value.getBytes("8859_1"), "KSC5601");
	    } catch (UnsupportedEncodingException e) {
	    // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    return str;
	}	
	
	
	/**
	 * textarea�쓽 �궡�슜 異쒕젰�떆 �뿏�꽣瑜� <br/>
	 * 濡� 蹂�寃�
	 * 
	 * @param str
	 * @return
	 */
	public static String nl2br(String str) {
		if (str == null) {
			return new String("");
		}
		StringBuffer buff = new StringBuffer(1024);
		for (int k = 0; k < str.length(); k++) {
			char one = str.charAt(k);
			if ('\n' == one) {
				buff.append("<br/>");
			} else if (' ' == one) {
				buff.append("&nbsp;");
			} else {
				buff.append(one);
			}
		}
		return buff.toString();
	}

	/**
	 * @param str
	 *            �엯�젰媛�
	 * @param num
	 *            �뮘 紐뉗옄由� * �몴�떆
	 * @return
	 */
	public static String setStar(String str, int num) {
		if (str == null) {
			return new String("");
		}

		StringBuffer buf = new StringBuffer(1024);
		for (int i = 0; i < str.length(); i++) {
			char ch = str.charAt(i);
			if (str.length() - i <= num) {
				buf.append("*");
			} else {
				buf.append(ch);
			}
		}

		return buf.toString();
	}

	/**
	 * @param str
	 *            �엯�젰媛�
	 * @param num
	 *            �뮘 紐뉗옄由� * �몴�떆
	 * @return
	 */
	public static String setEmailStar(String str, int num) {
		if (str == null) {
			return new String("");
		}

		String[] result = str.split("@");
		StringBuffer buf = new StringBuffer(1024);
		for (int i = 0; i < result[0].length(); i++) {
			char ch = result[0].charAt(i);
			if (result[0].length() - i <= num) {
				buf.append("*");
			} else {
				buf.append(ch);
			}
		}

		return buf.toString() + "@" + result[1];
	}
	
	/**
	 * �삤�뒛�궇吏쒕��꽣 �엯�젰 諛쏆� Days �씠�썑 �궇吏� 諛섑솚
	 * @param addDays
	 * @return
	 */
	 public static String getAddDate(int addDays) {
			String sTt = "";
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.DATE, +addDays);
			String y_year = String.valueOf(cal.get(Calendar.YEAR));
			String y_month = String.valueOf(cal.get(Calendar.MONTH) + 1);
			String y_date = String.valueOf(cal.get(Calendar.DATE));

			if (y_month.length() == 1)
				y_month = "0" + y_month; // month 3 => 03
			if (y_date.length() == 1)
				y_date = "0" + y_date; // day 7=> 07

			sTt = y_year + "-" + y_month + "-" + y_date;
			return sTt;
	    }
	 
	/**
	 * �삤�뒛 �궇吏쒓� �븘�땶 �엯�젰 諛쏆� �궇吏쒕줈 媛꾧꺽
	 * 
	 * @param date
	 *            �엯�젰 : format 20080101
	 * @param period
	 *            1, 2 (�씪)
	 * @return
	 */
	public static boolean BetweenDay(String date, int period) {

		java.util.Date yymmdd = new java.util.Date();

		SimpleDateFormat myformat = new SimpleDateFormat("yyyyMMdd");
		SimpleDateFormat InputDateformat = new SimpleDateFormat("yyyyMMdd");

		try {

			String curdate = myformat.format(yymmdd);

			if (Integer.parseInt(curdate) >= Integer.parseInt(date) + period) {
				return true;
			}
		} catch (Exception e) {

		}

		return false;

	}

	/**
	 * �삤�뒛 湲곗� 1�뀈 �쟾 �궇吏� 媛��졇�삤湲�
	 * 
	 * @param date
	 * @param format
	 * @return
	 */
	public static String get1yearAgo() {
		String sTt = "";
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.YEAR, -1);
		String y_year = String.valueOf(cal.get(Calendar.YEAR));
		String y_month = String.valueOf(cal.get(Calendar.MONTH) + 1);
		String y_date = String.valueOf(cal.get(Calendar.DATE));

		if (y_month.length() == 1)
			y_month = "0" + y_month; // month 3 => 03
		if (y_date.length() == 1)
			y_date = "0" + y_date; // day 7=> 07

		sTt = y_year + "-" + y_month + "-" + y_date;
		return sTt;
	}

	/**
	 * �삤�뒛 湲곗� �쟾 �궇吏� 媛��졇�삤湲�
	 * 
	 * @param year
	 * @param month
	 * @param date
	 * @param format
	 * @return
	 */
	public static String getDateAgo(int year, int month, int date) {
		String sTt = "";
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.YEAR, year);
		cal.add(Calendar.MONTH, month);
		cal.add(Calendar.DATE, date);
		String y_year = String.valueOf(cal.get(Calendar.YEAR));
		String y_month = String.valueOf(cal.get(Calendar.MONTH) + 1);
		String y_date = String.valueOf(cal.get(Calendar.DATE));

		if (y_month.length() == 1)
			y_month = "0" + y_month; // month 3 => 03
		if (y_date.length() == 1)
			y_date = "0" + y_date; // day 7=> 07

		sTt = y_year + y_month + y_date;
		return sTt;
	}

	/**
	 * date瑜� String�쑝濡� 蹂��솚�븯�뿬 諛섑솚
	 * 
	 * @param date
	 * @param format
	 * @return
	 */
	public static String getConvertToString(Date date, String format) {
		SimpleDateFormat myformat = new SimpleDateFormat(format);
		String result = "";

		if (date != null) {
			result = myformat.format(date);
		}
		return result;
	}

	/**
	 * �궇吏쒕�� �엯�젰諛쏆븘 �룷硫� 蹂�寃쏀썑 由ы꽩 yyyy.MM.dd HH:mm:ss
	 * 
	 * @param date
	 * @param format
	 * @return
	 */
	public static String getDateByFormat(Date date, String format) {
		String dd = "";
		try {
			try {
				if (date == null)
					return "";
			} catch (Exception e) {
				return "";
			}

			try {
				if (format == null)
					format = "yyyyMMdd";
			} catch (Exception e) {
				format = "yyyy-MM-dd";
			}
			SimpleDateFormat myformat = new SimpleDateFormat(format);

			dd = myformat.format(date);

		} catch (Exception e) {
		}
		return dd;

	}

	/**
	 * �듅�닔�븳 寃쎌슦 00/00/00 �쑝濡� 由ы꽩 �뒪�듃留곹��엯
	 * 
	 * @param format
	 * @return
	 */
	public static String getStringDateFormat(String date) {
		String d = "";

		if (!CommonUtil.nvl(date, "").equals("")) {
			d = date;
			d = date.substring(2, d.length());
			d = d.replace("/", ".");
		}

		return d;

	}

	/**
	 * �엯�젰諛쏆� �룷硫� �삎�깭�쓽 �쁽�옱�떆媛� 媛��졇�삤湲� : yyyy MM dd HH mm ss SSS
	 * 
	 * @param format
	 * @return
	 */
	public static String getCurrentDT(String format) {
		String datetime = "";
		try {
			Calendar calendar = Calendar.getInstance();

			SimpleDateFormat sdf = new SimpleDateFormat(format);
			datetime = sdf.format(calendar.getTime());

		} catch (Exception e) {
		}
		return datetime;
	}

	/**
	 * �몢 �궇吏� �궗�씠�쓽 李⑥씠
	 * 
	 * @param startDate
	 *            �떆�옉 �궇吏�
	 * @param endDate
	 *            醫낅즺 �궇吏�
	 * @param format
	 *            �궇吏� �삎�떇
	 * @return long �궇吏� 李⑥씠
	 */
	public static long day2Day(String startDate, String endDate, String format)
			throws Exception {
		if (format == null)
			format = "yyyy-MM-dd HH:mm:ss.SSS";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		Date sDate;
		Date eDate;
		long day2day = 0;
		try {
			sDate = sdf.parse(startDate);
			eDate = sdf.parse(endDate);

			day2day = (eDate.getTime() - sDate.getTime())
					/ (1000 * 60 * 60 * 24);

		} catch (Exception e) {
			throw new Exception("wrong format string");
		}

		return day2day;
	}

	public static long day2Day(String endDate, String format) throws Exception {
		if (format == null)
			format = "yyyy-MM-dd HH:mm:ss.SSS";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		Date sDate;
		Date eDate;
		long day2day = 0;
		try {
			sDate = sdf.parse(getCurrentDT(format));
			eDate = sdf.parse(endDate);

			// 12408 4950 0000 / 12409 1376 0000

			day2day = (eDate.getTime() - sDate.getTime())
					/ (1000 * 60 * 60 * 24);

			// 1�씪 (1000 * 60 * 60 * 24)

		} catch (Exception e) {
			throw new Exception("wrong format string");
		}

		return day2day;
	}

	/**
	 * 紐� �떆媛꾩감�씠�씤吏�
	 * 
	 * @param endDate
	 * @param format
	 * @return
	 * @throws Exception
	 */
	public static long day2Dayhour(String endDate, String format)
			throws Exception {
		if (format == null)
			format = "yyyy-MM-dd HH:mm:ss.SSS";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		Date sDate;
		Date eDate;
		long day2day = 0;
		try {
			sDate = sdf.parse(getCurrentDT(format));
			eDate = sdf.parse(endDate);

			day2day = (eDate.getTime() - sDate.getTime()) / (1000 * 60 * 60);

		} catch (Exception e) {
			throw new Exception("wrong format string");
		}

		return day2day;
	}

	/**
	 * 紐� 遺꾩감�씠�씤吏�
	 * 
	 * @param endDate
	 * @param format
	 * @return
	 * @throws Exception
	 */
	public static long day2DayMinute(String endDate, String format)
			throws Exception {
		if (format == null)
			format = "yyyy-MM-dd HH:mm:ss.SSS";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		Date sDate;
		Date eDate;
		long day2day = 0;
		try {
			sDate = sdf.parse(getCurrentDT(format));
			eDate = sdf.parse(endDate);

			day2day = (eDate.getTime() - sDate.getTime()) / (1000 * 60);

		} catch (Exception e) {
			throw new Exception("wrong format string");
		}

		return day2day;
	}

	/**
	 * String to Date
	 * 
	 * @param str
	 * @param format
	 * @return
	 */
	public static Date stringToDate(String str, String format) {
		if (format == null)
			format = "yyyyMMddHHmmssSSS";

		DateFormat sdFormat = new SimpleDateFormat(format);
		Date dt = null;

		try {
			if (str == null)
				str = System.currentTimeMillis() + "";

			dt = sdFormat.parse(str);
		} catch (ParseException e) {
		}

		return dt;
	}

	/**
	 * String to Date
	 * 
	 * @param str
	 * @param format
	 * @return
	 */
	public static Calendar stringToDate2(String str) {
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		Calendar c = Calendar.getInstance();
		if (str == null) {
			str = "19800101010101";
		}
		try {
			c.setTime(df.parse(str));
		} catch (ParseException e) {
			e.printStackTrace();
		}

		return c;
	}

	public static Date getDateTime() {
		return new Date();
	}

	public static Long getTimeStamp() {
		String t = getDate("yyyy-MM-dd HH:mm:ss:SSS");

		SimpleDateFormat formatter = new SimpleDateFormat(
				"yyyy-mm-dd HH:mm:ss:SSS");
		Date userDate = null;
		try {
			userDate = formatter.parse(t);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		return userDate.getTime();
	}

	/**
	 * �뙆�씪 �솗�옣�옄援ы븯湲�
	 * 
	 * @param Name
	 * @return
	 */
	public static String getExt(String Name) {
		String ext = "";
		try {
			int dot = Name.lastIndexOf(".");
			ext = Name.substring(dot + 1);
		} catch (Exception e) {
		}
		return ext;
	}

	/**
	 * �뙆�씪 �궗�씠利덇뎄�븯湲�
	 * 
	 * @param fileName
	 *            - full directory name
	 * @return
	 */
	@SuppressWarnings("deprecation")
	public static long getFileSize(String dir, String fileName,
			HttpServletRequest request) {
		File realDir = new File(request.getSession().getServletContext()
				.getRealPath(dir));

		// System.out.println("realDir : " + realDir);

		// System.out.println("fileName : " + fileName);

		File f = new File(realDir, fileName);
		long size = 0;
		try {
			size = f.length();
		} catch (Exception e) {
			System.out.println(e);
		}

		return size;
	}

	/**
	 * �궇吏쒓��졇�삤湲�
	 * 
	 * @param inptFormat
	 *            yyyy-MM-dd HH:mm:ss:SS
	 * @return
	 */
	public static String getDate(String inptFormat) {
		String returnDate = "";
		try {
			long time = System.currentTimeMillis();
			java.util.Date today = new java.util.Date(time);
			if (inptFormat == null)
				inptFormat = "yyyy-MM-dd HH:mm:ss:SS";
			java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat(
					inptFormat);

			String newDay = formatter.format(today);

			returnDate = newDay;

		} catch (Exception e) {
		}

		return returnDate;
	}

	/**
	 * �몢 �궇吏� �궗�씠�쓽 媛쒖썡�닔 諛섑솚
	 * 
	 * @param startDate
	 * @param endDate
	 * @return
	 */
	public static int getMonthDiff(String startDate, String endDate) {
		int startYear = Integer.parseInt(startDate.replaceAll("-", "")
				.substring(0, 4));
		int startMonth = Integer.parseInt(startDate.replaceAll("-", "")
				.substring(4, 6));

		int endYear = Integer.parseInt(endDate.replaceAll("-", "").substring(0,
				4));
		int endMonth = Integer.parseInt(endDate.replaceAll("-", "").substring(
				4, 6));

		return (endYear - startYear) * 12 + (endMonth - startMonth);
	}

	/**
	 * yyyy-MM �삎�깭�쓽 �몢 �궇吏� �궗�씠�쓽 紐⑤뱺 �썡 List 諛섑솚
	 * 
	 * @param startYearMonth
	 * @param endYearMonth
	 * @return
	 */
	public static List getYearMonthList(String startYearMonth,
			String endYearMonth) {
		int monthDiff = getMonthDiff(startYearMonth, endYearMonth);

		List<Map<String, String>> yearMonthList = new ArrayList<Map<String, String>>();

		for (int i = Integer.parseInt(startYearMonth.replaceAll("-", "")
				.substring(4, 6)); i <= Integer.parseInt(startYearMonth
				.replaceAll("-", "").substring(4, 6)) + monthDiff; i++) {
			Map<String, String> data = new HashMap<String, String>();

			int month = i;

			int year = Integer.parseInt(startYearMonth.substring(0, 4))
					+ ((int) ((month - 1) / 12));

			if (i > 12) {
				month = i - (12 * (int) ((month - 1) / 12));
			}

			data.put("year", Integer.toString(year));
			data.put("month", CommonUtil.getStrRight("0" + month, 2));
			data.put("yearMonth",
					year + "-" + CommonUtil.getStrRight("0" + month, 2));

			yearMonthList.add(data);
		}

		return yearMonthList;
	}

	/**
	 * yyyy-MM �삎�깭�쓽 �떖�뿉 �빐�떦�븯�뒗 紐⑤뱺 �궇吏� List 諛섑솚.
	 * 
	 * @param startDate
	 * @param endDate
	 * @param yearMonth
	 * @return
	 */
	public static List getDateList(int startDate, int endDate, String yearMonth) {
		int year = Integer.parseInt(yearMonth.replaceAll("-", "").substring(0,
				4));
		int month = Integer.parseInt(yearMonth.replaceAll("-", "").substring(4,
				6));

		List<Map<String, String>> dateList = new ArrayList<Map<String, String>>();

		GregorianCalendar cal = new GregorianCalendar(year, month - 1, 1);

		if (Integer.parseInt(yearMonth.replaceAll("-", "")) < Integer
				.parseInt(getDate("yyyyMM"))) {
			endDate = cal.getActualMaximum(cal.DATE);
		}

		for (int i = startDate; i <= endDate; i++) {
			Map<String, String> data = new HashMap<String, String>();
			data.put("date", year + "-" + getStrRight(("0" + month), 2) + "-"
					+ getStrRight(("0" + i), 2));

			dateList.add(data);
		}

		return dateList;
	}

	public static float getGraph(int grd, int point) {

		float ProT = 0F;

		if (grd == 1) {
			ProT = (float) point;
		} else if (grd == 2) {
			ProT = ((float) (point - 100) / 400) * 100;
		} else if (grd == 3) {
			ProT = 100;
		}

		return ProT;
	}

	/**
	 * �뙆�씪紐낅�寃�
	 * 
	 * @param fileName
	 * @return
	 */
	public static String getNewFileName(String fileName) {

		String newName = "";
		try {
			String body = null;
			String ext = null;

			int dot = fileName.lastIndexOf(".");
			if (dot != -1) {
				body = fileName.substring(0, dot);
				ext = fileName.substring(dot); // includes "."
			} else {
				body = fileName;
				ext = "";
			}

			/*
			 * long time = System.currentTimeMillis(); java.util.Date today =
			 * new java.util.Date(time); java.text.SimpleDateFormat formatter =
			 * new java.text.SimpleDateFormat("yyyyMMddHHmmssSS"); newName =
			 * formatter.format(today);
			 */

			newName = System.currentTimeMillis() + Math.random() + ext;

		} catch (Exception e) {
		}

		return newName;

	}

	/**
	 * 寃��깋 寃곌낵 return
	 * 
	 * @param search
	 * @return
	 */
	public static String getSearchString(Map search) {
		String strSearch = "";
		Iterator entrys = search.entrySet().iterator();
		while (entrys.hasNext()) {
			Map.Entry mEntry = (Map.Entry) entrys.next();
			strSearch += "&" + mEntry.getKey() + "=" + mEntry.getValue();
		}

		return strSearch;

	}

	/**
	 * 臾몄옄�뿴 �옄瑜닿린
	 * 
	 * @param param
	 * @param len
	 * @param tail
	 * @return
	 */
	public static String getCutString(String param, int len, String tail) {
		if (param.length() <= len) {
			return param;
		}
		StringCharacterIterator sci = new StringCharacterIterator(param);
		StringBuffer buffer = new StringBuffer();

		buffer.append(sci.first());
		for (int i = 1; i < len; i++) {
			if (i < len - 1) {
				buffer.append(sci.next());
			} else {
				char c = sci.next();
				if (c != 32) {
					buffer.append(c);
				}
			}
		}
		buffer.append(tail);
		return buffer.toString();
	}

	/**
	 * String�쓣 吏��젙�맂 湲몄씠留뚰겮留� 異쒕젰�븷 �닔 �엳�룄濡� �븯硫�, 留뚯빟 �씪遺�遺꾨쭔�씠 異쒕젰�릺�뒗 寃쎌슦�뿉�뒗 吏��젙�맂 postfix 臾몄옄�뿴�쓣 �걹�뿉
	 * 異붽��븳�떎.
	 * 
	 * cutByte媛믪� 臾몄옄�뿴�쓽 byte 湲몄씠瑜� �쓽誘명븳�떎. �븳湲�怨� 媛숈씠 2byte character�뒗 2濡� 怨꾩궛�븯硫�, �쁺臾� 諛� 諛섍컖
	 * 湲고샇�뒗 1濡� 怨꾩궛�븳�떎.
	 * 
	 * @param strSource
	 *            蹂��솚�븯怨좎옄 �븯�뒗 �썝蹂� 臾몄옄�뿴. null�씤 寃쎌슦 怨듬갚臾몄옄�뿴�씠 諛섑솚�맂�떎.
	 * @param cutByte
	 *            蹂��솚�썑 珥� 湲몄씠(postfix 臾몄옄�뿴�쓽 湲몄씠 �룷�븿). 諛섎뱶�떆 strPostfix臾몄옄�뿴�쓽 byte�겕湲� �씠�긽�쓽
	 *            �닽�옄瑜� �엯�젰�빐�빞 �븳�떎. 洹몃젃吏� �븡�� 寃쎌슦 �썝蹂� 臾몄옄�뿴�쓣 洹몃�濡� 諛섑솚�븳�떎.
	 * @param bTrim
	 *            �썝蹂� 臾몄옄�뿴�쓽 �븵�뮘�뿉 怨듬갚臾몄옄媛� �엳�쓣寃쎌슦 trim�쓣 �닔�뻾�븷吏�瑜� 寃곗젙�븳�떎.
	 * @param strPostfix
	 *            臾몄옄�뿴�씠 �옒由닿꼍�슦 �씠瑜� �몴�쁽�븯湲� �쐞�븳 臾몄옄�뿴. null�씤 寃쎌슦 "..."�씠 異붽��맂�떎.
	 * @return 蹂��솚�맂 寃곌낵 臾몄옄�뿴�쓣 return �븳�떎. �떒, strSource媛� null�씤 寃쎌슦 怨듬갚臾몄옄�뿴�씠 諛섑솚�릺硫�
	 *         cutByte媛� strPostfix臾몄옄�뿴�쓽 byte�겕湲� 誘몃쭔�쓽 �닽�옄媛� �삤�뒗 寃쎌슦 �썝蹂� 臾몄옄�뿴�쓣 洹몃�濡� 諛섑솚�븳�떎.
	 */
	public static String cutBytes(String strSource, int cutByte, boolean bTrim,
			String strPostfix) {

		if (strSource == null)
			return "";

		strPostfix = (strPostfix == null) ? "..." : strPostfix;
		int postfixSize = 0;
		for (int i = 0; i < strPostfix.length(); i++) {
			if (strPostfix.charAt(i) < 256)
				postfixSize += 1;
			else
				postfixSize += 2;
		}

		if (postfixSize > cutByte)
			return strSource;

		if (bTrim)
			strSource = strSource.trim();
		char[] charArray = strSource.toCharArray();

		int strIndex = 0;
		int byteLength = 0;
		for (; strIndex < strSource.length(); strIndex++) {

			int byteSize = 0;
			if (charArray[strIndex] < 256) {
				// 1byte character �씠硫�
				byteSize = 1;
			} else {
				// 2byte character �씠硫�
				byteSize = 2;
			}

			if ((byteLength + byteSize) > cutByte - postfixSize) {
				break;
			}

			byteLength = byteLength += byteSize;
		}

		if (strIndex == strSource.length())
			strPostfix = "";
		else {
			if ((byteLength + postfixSize) < cutByte)
				strPostfix = " " + strPostfix;
		}

		return strSource.substring(0, strIndex) + strPostfix;
	}

	/**
	 * �깭洹� �젣嫄�
	 * 
	 * @param s
	 * @return
	 */
	public static String removeTag(String s) {
		final int NORMAL_STATE = 0;
		final int TAG_STATE = 1;
		final int START_TAG_STATE = 2;
		final int END_TAG_STATE = 3;
		final int SINGLE_QUOT_STATE = 4;
		final int DOUBLE_QUOT_STATE = 5;
		int state = NORMAL_STATE;
		int oldState = NORMAL_STATE;
		char[] chars = s.toCharArray();
		StringBuffer sb = new StringBuffer();
		char a;
		try {

			for (int i = 0; i < chars.length; i++) {
				a = chars[i];
				switch (state) {
				case NORMAL_STATE:
					if (a == '<')
						state = TAG_STATE;
					else
						sb.append(a);
					break;
				case TAG_STATE:
					if (a == '>')
						state = NORMAL_STATE;
					else if (a == '\"') {
						oldState = state;
						state = DOUBLE_QUOT_STATE;
					} else if (a == '\'') {
						oldState = state;
						state = SINGLE_QUOT_STATE;
					} else if (a == '/')
						state = END_TAG_STATE;
					else if (a != ' ' && a != '\t' && a != '\n' && a != '\r'
							&& a != '\f')
						state = START_TAG_STATE;
					break;
				case START_TAG_STATE:
				case END_TAG_STATE:
					if (a == '>')
						state = NORMAL_STATE;
					else if (a == '\"') {
						oldState = state;
						state = DOUBLE_QUOT_STATE;
					} else if (a == '\'') {
						oldState = state;
						state = SINGLE_QUOT_STATE;
					} else if (a == '\"')
						state = DOUBLE_QUOT_STATE;
					else if (a == '\'')
						state = SINGLE_QUOT_STATE;
					break;
				case DOUBLE_QUOT_STATE:
					if (a == '\"')
						state = oldState;
					break;
				case SINGLE_QUOT_STATE:
					if (a == '\'')
						state = oldState;
					break;
				}
			}
		} catch (Exception e) {

		}
		return sb.toString();
	}

	/**
	 * HTML �깭洹몃�� �듅�닔臾몄옄濡� 蹂��솚
	 * 
	 * @param pStr
	 * @return
	 */
	public static String htmlToText2(String pStr) {
		if (pStr == null) {
			pStr = "";
		} else {
			pStr = pStr.trim();

			pStr = pStr.replaceAll(
					"onload=\"javascript:resizeImgEditor(this, 500, 500);\"",
					"#resizeImgEditor#");

			pStr = CommonUtil.Replace2(pStr);
			pStr = CommonUtil.Replace3(pStr);

			pStr = CommonUtil.Replace(pStr, "target=_self", "target=_blank");
			pStr = CommonUtil.Replace(pStr, "<a href", "<a target=_blank href");
			pStr = CommonUtil.Replace(pStr, "<scri", "&lt;scri");
			pStr = CommonUtil.Replace(pStr, "<iframe", "&lt;iframe");
			pStr = pStr.replaceAll("#resizeImgEditor#",
					"onload=\"javascript:resizeImgEditor(this, 500, 500);\"");

		}

		return pStr;
	}

	public static String Replace(String src, String oldStr, String newStr) {
		if (src == null || oldStr == null)
			return (src);
		if (newStr == null)
			newStr = "";
		if (src.equals("") || oldStr.equals(""))
			return (src);
		int s = 0;
		int e = 0;
		StringBuffer result = new StringBuffer();
		while ((e = src.toLowerCase().indexOf(oldStr, s)) >= 0) {
			result.append(src.substring(s, e));
			result.append(newStr);
			s = e + oldStr.length();
		}
		result.append(src.substring(s));
		return result.toString();
	}

	public static String Replace2(String src) {
		if (src == null)
			return (src);
		if (src.equals(""))
			return (src);
		int s = 0;
		int e = 0;

		StringBuffer result = new StringBuffer();

		while ((e = src.toLowerCase().indexOf("<", s)) >= 0) {
			result.append(src.substring(s, e));

			int e2 = src.indexOf(">", e);

			if (e2 < 0) {
				e2 = src.length();
			}

			String temp_pStr = src.substring(e, e2);

			temp_pStr = CommonUtil.Replace(temp_pStr, "/*", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "*/", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "\\", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "\'+\'", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "+", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "alert", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "write", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "document", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "cookie", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "expressi", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "prompt", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "<script", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "javascript", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onmouseover", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onerror", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onmousewheel", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onerror", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onload", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#40", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#040", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#0040", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#00040", "");

			result.append(temp_pStr);

			s = e2;
		}

		result.append(src.substring(s));

		return result.toString();
	}

	public static String Replace3(String src) {
		if (src == null)
			return (src);
		if (src.equals(""))
			return (src);
		int s = 0;
		int e = 0;

		StringBuffer result = new StringBuffer();

		while ((e = src.toLowerCase().indexOf("{", s)) >= 0) {
			result.append(src.substring(s, e));

			int e2 = src.indexOf("}", e);
			if (e2 < 0) {
				e2 = src.length();
			}

			String temp_pStr = src.substring(e, e2);

			temp_pStr = CommonUtil.Replace(temp_pStr, "/*", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "*/", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "\\", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "\'+\'", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "+", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "alert", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "write", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "document", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "cookie", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "expressi", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "prompt", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "<script", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "javascript", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onmouseover", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onerror", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onmousewheel", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onerror", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onload", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#40", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#040", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#0040", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#00040", "");

			result.append(temp_pStr);

			s = e2;
		}

		result.append(src.substring(s));

		return result.toString();
	}

	public void getParameterNames(HttpServletRequest request) {
		Enumeration param = request.getParameterNames();
		while (param.hasMoreElements()) {
			String pname = (String) param.nextElement();
			System.out.println(pname + ": " + request.getParameter(pname)
					+ "<br>");
		}
	}

	/**
	 * �뙆�씪 �슜�웾 display 2009. 5. 27.
	 * 
	 * @param size
	 * @param type
	 *            GB, MB, KB
	 * @return
	 */
	public static String getByteCountToDisplaySize(long size, String type) {
		String displaySize;

		// if (size / 1073741824L > 0L)
		if ("GB".equals(type))
			displaySize = String.valueOf(size / 1073741824L) + " GB";

		// else if (size / 1048576L > 0L)
		else if ("MB".equals(type))
			displaySize = String.valueOf(size / 1048576L) + " MB";

		// else if (size / 1024L > 0L)
		else if ("KB".equals(type))
			displaySize = String.valueOf(size / 1024L) + " KB";
		else
			displaySize = String.valueOf(size) + " bytes";

		return displaySize;

	}

	/**
	 * size 留뚰겮 �삤瑜몄そ�뿉�꽌 str�쓣 �옒�씪�궡�뼱 由ы꽩
	 * 
	 * @param str
	 * @param size
	 * @return
	 */
	public static String getStrRight(String str, int size) {
		if (str == null || str.trim().length() == 0
				|| str.trim().length() < size) {
			return str;
		}

		int len = str.length();
		return str.substring(len - size, len);
	}

	/**
	 * cookieName�뿉 �빐�떦�븯�뒗 荑좏궎�쓽 Value 媛� 由ы꽩.
	 * 
	 * @param cookies
	 * @param cookieName
	 * @param defaultValue
	 * @return
	 */
	public static String getCookieValue(Cookie[] cookies, String cookieName,
			String defaultValue) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie cookie = cookies[i];

			if (cookieName.equals(cookie.getName())) {
				return (cookie.getValue());
			}
		}

		return (defaultValue);
	}

	/**
	 * 泥쒕떒�쐞 �냼�닔�젏 李띻린
	 * 
	 * @param number
	 * @return
	 */
	public static String getThousandsSeparators(int number) {
		DecimalFormat df = new DecimalFormat("#,##0");

		return df.format(number);
	}

	/**
	 * 泥쒕떒�쐞 �냼�닔�젏 李띻린(double)
	 * 
	 * @param number
	 * @return
	 */
	public static String getThousandsSeparatorsDouble(double number) {
		DecimalFormat df = new DecimalFormat("#,##0");

		return df.format(number);
	}

	/**
	 * �냼�닔�젏 �몮吏몄옄由ш퉴吏� �몴�쁽
	 * 
	 * @param number
	 * @return
	 */
	public static String getDecimalFormat(double number) {
		DecimalFormat df = new DecimalFormat("0.00");
		return df.format(number);
	}

	/**
	 * 10吏꾩닔源뚯� �몴�쁽
	 * 
	 * @param number
	 * @return
	 */
	public static String getDecimalInteger(double number) {
		DecimalFormat df = new DecimalFormat("#");
		return df.format(number);
	}

	/**
	 * �꽭�뀡 �븘�씠�뵒 諛섑솚
	 * 
	 * @param request
	 * @return
	 */
	public static String getSessionId(HttpServletRequest request) {
		return request.getSession().getId();
	}

	/**
	 * �씤利앸쾲�샇 �옖�뜡 �닽�옄 8�옄由�
	 * 
	 * @return
	 */
	public static String randomNum() {
		return randomNum(8);
	}

	/**
	 * count 湲몄씠�쓽 �옖�뜡 �닽�옄 諛섑솚
	 * 
	 * @param count
	 * @return
	 */
	public static String randomNum(int count) {
		Random r = new Random();
		String sum = "";
		for (int i = 0; i < count; i++) {
			int num = r.nextInt(10);
			sum += String.valueOf(num);
		}
		return sum;
	}

	/**
	 * count �뙣�뒪�썙�뱶 �떒諛⑺뼢 �븫�샇�솕 SHA-512
	 * 
	 * @param pw
	 * @return
	 */
	public static String encrypt(String pw) throws NoSuchAlgorithmException {
		String output = "";

		StringBuffer sb = new StringBuffer();
		MessageDigest md = MessageDigest.getInstance("SHA-512");

		md.update(pw.getBytes());
		byte[] msgb = md.digest();

		for (int i = 0; i < msgb.length; i++) {
			byte temp = msgb[i];
			String str = Integer.toHexString(temp & 0xFF);
			while (str.length() < 2) {
				str = "0" + str;
			}
			str = str.substring(str.length() - 2);
			sb.append(str);
		}

		output = sb.toString();
		return output;
	}

	public static String[] splitText(String input, String flag)
			throws Exception {
		String[] result = null;

		try {
			result = input.split(flag);
		} catch (Exception e) {
		}
		return result;

	}

	/**
	 * �옖�뜡  ��臾몄옄 & �닽�옄 議고빀 (荑좏룿 踰덊샇)
	 * 
	 * @return
	 */
	public static String randomCharNum(int i) {
		Random r = new Random();
		String str = "";
		int cnt = 0;

		while (cnt < i) // �옖�뜡�븯寃� 諛쒖깮�떆�궓 臾몄옄�뿴�쓽 湲몄씠留뚰겮 媛믪씠 �뱾�뼱�삱�븣源뚯� �떎�뻾
		{
			int num1 = (int) 48 + (int) (r.nextDouble() * 74); // �븣�뙆踰� �냼臾몄옄,
																// �듅�닔臾몄옄, �닽�옄踰붿쐞�쓽
																// �븘�뒪�궎媛믩컻�깮

			if ((num1 >= 48 && num1 <= 57) || (num1 >= 65 && num1 <= 90)) {
				str = str + (char) num1; // �븘�뒪�궎肄붾뱶媛믪쓣 char濡� �삎蹂��솚 �썑 ���옣
				cnt++;
			}
		}
		return str;
	}
	
	/**
	 * �엫�떆鍮꾨�踰덊샇(8�옄 :��臾몄옄, �냼臾몄옄, �닽�옄 議고빀 )
	 * 
	 * @return
	 */
	public static String randomCharNum() {
		Random r1 = new Random();
		Random r2 = new Random();

		String pw = "LQ";
		int cnt = 0;

		while (cnt < 8) // �옖�뜡�븯寃� 諛쒖깮�떆�궓 臾몄옄�뿴�쓽 湲몄씠留뚰겮 媛믪씠 �뱾�뼱�삱�븣源뚯� �떎�뻾
		{
			int num1 = (int) 48 + (int) (r2.nextDouble() * 74); // �븣�뙆踰� �냼臾몄옄,
																// �듅�닔臾몄옄, �닽�옄踰붿쐞�쓽
																// �븘�뒪�궎媛믩컻�깮

			if ((num1 >= 48 && num1 <= 57) || (num1 >= 65 && num1 <= 90)) {
				pw = pw + (char) num1; // �븘�뒪�궎肄붾뱶媛믪쓣 char濡� �삎蹂��솚 �썑 ���옣
				cnt++;
			}
		}
		return pw;
	}

	/*
	 * prifix �꽑�깮
	 */
	public static String prifix(HttpServletRequest request) {
		String prifix = "";
		String domain = "";

		String url = request.getRequestURL().toString();
		// �엫�떆 援ы쁽.. �젙�솗�븳 援ы쁽�� �룄硫붿씤�뿰寃고썑 泥댄겕
		String[] array = url.split("/");
		if (array[0].equals("maiim")) {
			domain = "/maiim";
		} else {
			domain = "/";
		}
		String lang = "/" + array[4].toLowerCase();
		return domain + lang;
	}

	static public int getByteLength(String str) {
		byte btString[] = str.getBytes();
		// for(int i=0;i<btString.length;i++){
		// }
		return btString.length;
	}

	static public int getByteLength(char chr) {
		String srTemp = new String(chr + "");
		byte bt[] = srTemp.getBytes();
		return bt.length;
	}

	/**
	 * insert '...' after cut the string by byte
	 * 
	 * @return if str is null return "";
	 */
	static public String cutByteString(String str, int maxlength, String ppp) {
		if (str == null)
			return "";

		char caTemp[] = str.toCharArray();
		StringBuffer bsString = new StringBuffer();

		int total_len = getByteLength(str);
		int ppp_len;

		if (ppp == null) {
			ppp_len = 0;
		} else {
			ppp_len = getByteLength(ppp);
		}

		if (total_len <= maxlength) { // less than maxlength
			return str;
		}

		int cut_len = maxlength - ppp_len;

		int len = 0;
		int tmpLen = 0;

		for (int i = 0; i < caTemp.length; i++) {
			tmpLen = getByteLength(caTemp[i]);
			len += tmpLen;
			if (cut_len >= len) {
				bsString.append(caTemp[i]);
			}
		}

		if (ppp != null) {
			bsString.append(ppp);
		}

		return bsString.toString();
	}

	static public String cutByteString(String str, int maxlength) {
		return cutByteString(str, maxlength, null);
	}

	/**
	 * Html tag �궘�젣
	 * 
	 * @return
	 */
	public static String removeHTML(String htmlString) {
		if (htmlString != null && !htmlString.equals("")) {
			htmlString = htmlString.replaceAll(
					"<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
		} else {
			htmlString = "";
		}
		return htmlString;
	}

	public static String getClientIP(HttpServletRequest request) {
		String ip = request.getHeader("X-FORWARDED-FOR");
		if (ip == null || ip.length() == 0) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0) {
			ip = request.getHeader("WL-Proxy-Client-IP"); // �쎒濡쒖쭅
		}
		if (ip == null || ip.length() == 0) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}



	/**
	 * �떒諛⑺뼢 �븫�샇�솕
	 * 
	 * @return String
	 */
	public static String encryptSHA256(String str) {
		String sha = "";
		String salt = "nadesicopwd";
		str = str + salt;

		try {

			MessageDigest sh = MessageDigest.getInstance("SHA-256");
			sh.update(str.getBytes());
			byte byteData[] = sh.digest();
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16)
						.substring(1));
			}

			sha = sb.toString();
		} catch (Exception e) {
			System.out.println("Encript Error:" + str);
		}

		return sha;

	}

	
	public static String naverclient(String access_key) {
		HttpClient client1 = new HttpClient();
		PostMethod method = new PostMethod(
				"https://apis.naver.com/nidlogin/nid/getUserProfile.xml");
		// method.setParameter(parameterName, parameterValue)
		method.addRequestHeader("Authorization", "Bearer " + access_key);

		client1.setTimeout(10000);
		int returnCode;
		String result = "";
		try {
			returnCode = client1.executeMethod(method);
			if (returnCode == HttpStatus.SC_NOT_IMPLEMENTED) {

			} else if (returnCode == HttpStatus.SC_OK) {
				result = method.getResponseBodyAsString();
			}

		} catch (HttpException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return result;

	}

	public static String getRandomString(int length) {
		StringBuffer buffer = new StringBuffer();
		Random random = new Random();

		String chars[] = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z"
				.split(",");

		for (int i = 0; i < length; i++) {
			buffer.append(chars[random.nextInt(chars.length)]);
		}
		return buffer.toString();
	}

	public static String getRandomPw(int length) {
		StringBuffer buffer = new StringBuffer();
		Random random = new Random();

		String chars[] = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,1,2,3,4,5,6,7,8,9,0,!,@,$,%,^"
				.split(",");

		for (int i = 0; i < length; i++) {
			buffer.append(chars[random.nextInt(chars.length)]);
		}
		return buffer.toString();
	}

	/*
	 * public static MemberVO getLoginMber(HttpSession session) { MemberVO mv =
	 * new MemberVO(); mv = (MemberVO) session.getAttribute("mLoginVO"); return
	 * mv; }
	 * 
	 * public static boolean booleanLogin(HttpSession session) { MemberVO mv =
	 * new MemberVO(); mv = (MemberVO) session.getAttribute("mLoginVO"); try {
	 * if(!mv.getMberId().equals("")){ return false; }else{ return true; } }
	 * catch (Exception e) { return true; } }
	 */
	
	/*
	* Clob 瑜� String �쑝濡� 蹂�寃�
	*/
	public static String clobToString(Clob clob) throws SQLException,IOException {
		
		if (clob == null) {
			return "";
		}
		
		StringBuffer strOut = new StringBuffer();
		String str = "";
		BufferedReader br = new BufferedReader(clob.getCharacterStream());
		while ((str = br.readLine()) != null) {
			strOut.append(str);
		}
			return strOut.toString();
	}
	
	/**
	 * RGB - HEX
	 */
	public static String getHexCode(String red, String green, String blue){
		
		int r= Integer.parseInt(red);
		int g= Integer.parseInt(green);
		int b= Integer.parseInt(blue);
		Color color = new Color(r,g,b);
		String hex = Integer.toHexString(color.getRGB() & 0xffffff);
		if (hex.length() < 6) {
		    hex = "0" + hex;
		}
		hex = "#" + hex;
		
		return hex.toString();
	}
	
	
	public static String decompose(String s) {
	    return java.text.Normalizer.normalize(s, java.text.Normalizer.Form.NFD).replaceAll("\\p{InCombiningDiacriticalMarks}+","");
		/*
		final String INPUT_ENC = "UTF-8";
	    final String OUTPUT_ENC = "UTF-8";
	    try {
	      BufferedReader r = new BufferedReader(
	          new InputStreamReader(System.in, INPUT_ENC));
	      PrintWriter w = new PrintWriter(
	          new OutputStreamWriter(System.out, OUTPUT_ENC), true);
	      while ((s = r.readLine()) != null) {
	        w.println(Normalizer.normalize(s, Form.NFC));
	      }
	    } 
	    catch (Exception ex) {
	      ex.printStackTrace();
	    }
		return OUTPUT_ENC;
		*/
	}
	
	public static String encodeUnicode(String str) {
		String resultStr = "";
		
        for(int i=0;i<str.length();i++){
            //System.out.println("jjiman ======================= : ["+str.charAt(i)+"]�쓽 10吏꾩닔 媛� : "+str.codePointAt(i));
            //System.out.println("jjiman ========================:  - 16吏꾩닔 媛� : "+Integer.toHexString(str.codePointAt(i)));
        	
        	if ( Integer.toHexString(str.codePointAt(i)).toUpperCase().length() == 4 ) {
        		resultStr += '\\' + Integer.toHexString(str.codePointAt(i)).toUpperCase();
        	}else{
        		resultStr += str.charAt(i);
        	}
        }        
        
		return resultStr;
	}
	
	 /**
     * <img /> �떕�뒗 �깭洹� 異붽�
     * @param String content
     * @return String period
     * */
    public static String makeShotingCloseTag(String content) {
        String returnContent = content;
        Pattern pattern  =  Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");
        
        // �궡�슜 以묒뿉�꽌 �씠誘몄� �깭洹몃�� 李얠븘�씪!
        Matcher match = pattern.matcher(content);
        List<String> imgTag = new ArrayList<String>();
        while(match.find()){ // 留ㅼ튂�릺�뒗 �씠誘몄�,
            imgTag.add( match.group(0) ); // 湲� �궡�슜 以묒뿉 泥ル쾲吏� �씠誘몄� �깭洹몃�� 戮묒븘�샂.
        }
          
        // 寃곌낵媛믪� name1.jpg
        StringBuffer strBuf = new StringBuffer();
        for(int i=0; i<imgTag.size(); i++){
            if( EasyString.right(imgTag.get(i), 2).equals("\">") || EasyString.right(imgTag.get(i), 2).equals(" >") || EasyString.right(imgTag.get(i), 2).equals("'>") ){
                
                strBuf.append( imgTag.get(i) );
                int strLastPosition = strBuf.lastIndexOf(">");
                strBuf.insert(strLastPosition, " /");
                
                returnContent = EasyString.replace(returnContent, imgTag.get(i), strBuf.toString());
                
                strBuf.delete(0, strBuf.length());
            }
        }        
        return returnContent;
    }

	/**
	 * �엫�떆鍮꾨�踰덊샇(8�옄 :��臾몄옄, �냼臾몄옄, �닽�옄 議고빀, �듅�닔臾몄옄 )
	 * 
	 * @return
	 */
	public static String randomCharNumSpecial() {

		String pswd = "LQ";

		StringBuffer sb = new StringBuffer();
		StringBuffer sc = new StringBuffer("!@#$%^&*"); // �듅�닔臾몄옄 紐⑥쓬, {}[] 媛숈� 鍮꾪샇媛먮Ц�옄�뒗 類�

		// ��臾몄옄 4媛쒕�� �엫�쓽 諛쒖깮
		sb.append((char) ((Math.random() * 26) + 65)); // 泥リ��옄�뒗 ��臾몄옄, 泥リ��옄遺��꽣 �듅�닔臾몄옄 �굹�삤硫� �븞 �씠�겏
		for (int i = 0; i < 3; i++) {
			sb.append((char) ((Math.random() * 26) + 65)); // �븘�뒪�궎踰덊샇 65(A) 遺��꽣 26湲��옄 以묒뿉�꽌 �깮�씪
		}
		// �냼臾몄옄 4媛쒕�� �엫�쓽諛쒖깮
		for (int i = 0; i < 4; i++) {
			sb.append((char) ((Math.random() * 26) + 97)); // �븘�뒪�궎踰덊샇 97(a) 遺��꽣 26湲��옄 以묒뿉�꽌 �깮�씪
		}
		// �닽�옄 2媛쒕�� �엫�쓽 諛쒖깮
		for (int i = 0; i < 2; i++) {
			sb.append((char) ((Math.random() * 10) + 48)); // �븘�뒪�궎踰덊샇 48(1) 遺��꽣 10湲��옄 以묒뿉�꽌 �깮�씪
		}

		// �듅�닔臾몄옄瑜� �몢媛� 諛쒖깮�떆耳� �옖�뜡�븯寃� 以묎컙�뿉 �겮�썙 �꽔�뒗�떎
		sb.setCharAt(((int) (Math.random() * 3) + 1), sc.charAt((int) (Math.random() * sc.length() - 1))); // ��臾몄옄 3媛� 以� �븯�굹
		sb.setCharAt(((int) (Math.random() * 4) + 4), sc.charAt((int) (Math.random() * sc.length() - 1))); // �냼臾몄옄 4媛� 以� �븯�굹
		
		pswd = sb.toString();
		
		return pswd;
	}

	/**
	 * �떒諛⑺뼢 �븫�샇�솕(kisa)
	 * 
	 * @return
	 */
    public static String shaEncdoing( String strPwd, HttpServletRequest request ) throws Exception {
    	boolean passYn = true;
    	String result = "";
    	KISA_SHA256 cncPass = new KISA_SHA256();    	
    	String userAgent = request.getHeader("User-Agent").toUpperCase();
    	
		//String strPwdDecoded = B64.decodeToString(strPwd);
		
		if (passYn == false) {
			result = "100";
		} else {
			result = cncPass.getEncCode(strPwd);
		}
//		if (userAgent.indexOf("7.0") != -1 || userAgent.indexOf("8.0") != -1
//				|| userAgent.indexOf("9.0") != -1
//				|| userAgent.indexOf("5.0") != -1) {
//			
//		}
		return result;
    }
    
    public static String getClientIp(HttpServletRequest request) {
    	String ip = "";
		ip = request.getHeader("X-Forwarded-For");
		
        if (ip ==  null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("Proxy-Client-IP"); 
        } 
        if (ip ==   null || ip.length() ==   0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("WL-Proxy-Client-IP"); 
        } 
        if (ip ==   null || ip.length() ==   0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("HTTP_CLIENT_IP"); 
        } 
        if (ip ==   null || ip.length() ==   0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("HTTP_X_FORWARDED_FOR"); 
        }
        if (ip ==   null || ip.length() ==   0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("X-Real-IP"); 
        }
        if (ip ==   null || ip.length() ==   0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("X-RealIP"); 
        }
        if (ip ==   null || ip.length() ==   0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("REMOTE_ADDR");
        }
        if (ip ==   null || ip.length() ==   0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getRemoteAddr(); 
        }
        
    	return ip;
    }
    
    static String charset = "utf-8";
    
    //public static byte pbUserKey[] =  hexStringToByteArray(stringToHex0x("gS9gz9OwcJ9lq9MC0dSfAg=="));
    public static byte pbUserKey[] =  {(byte)0x43,(byte)0x34,(byte)0x42,(byte)0x6F,(byte)0x79,(byte)0x37,(byte)0x4D,(byte)0x4C,(byte)0x6D,(byte)0x46,(byte)0x64,(byte)0x57,(byte)0x38,(byte)0x58,(byte)0x47,(byte)0x67,(byte)0x55,(byte)0x43,(byte)0x67,(byte)0x57,(byte)0x70,(byte)0x77,(byte)0x3D,(byte)0x3D};
    public static byte bszIV[] = {(byte)0x46,(byte)0x53,(byte)0x54,(byte)0x4C,(byte)0x32,(byte)0x2E,(byte)0x4E,(byte)0x45,(byte)0x58,(byte)0x4F,(byte)0x4E,(byte)0x2E,(byte)0x43,(byte)0x4F,(byte)0x4D,(byte)0x2E};

    public static byte[] cbcencrypt(String str) {
        byte[] enc = null;
        Decoder decoder = Base64.getDecoder();
        //System.out.println(stringToHex0x("FSTL2.NEXON.COM."));
        pbUserKey = decoder.decode("gS9gz9OwcJ9lq9MC0dSfAg==");
        try {
            //�븫�샇�솕 �븿�닔 �샇異�
            enc = KISA_SEED_CBC.SEED_CBC_Encrypt(pbUserKey, bszIV, str.getBytes(charset), 0, str.getBytes(charset).length);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
 
        Encoder encoder = Base64.getEncoder();
        byte[] encArray = encoder.encode(enc);
        /*try {
            System.out.println(new String(encArray, "utf-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }*/
        return encArray;
    }
    
    public static byte gamePbUserKey[] =  {(byte)0x43,(byte)0x34,(byte)0x42,(byte)0x6F,(byte)0x79,(byte)0x37,(byte)0x4D,(byte)0x4C,(byte)0x6D,(byte)0x46,(byte)0x64,(byte)0x57,(byte)0x38,(byte)0x58,(byte)0x47,(byte)0x67,(byte)0x55,(byte)0x43,(byte)0x67,(byte)0x57,(byte)0x70,(byte)0x77,(byte)0x3D,(byte)0x3D};
    public static byte gameBszIV[] = {(byte)0x46,(byte)0x53,(byte)0x54,(byte)0x4C,(byte)0x32,(byte)0x2E,(byte)0x4E,(byte)0x45,(byte)0x58,(byte)0x4F,(byte)0x4E,(byte)0x2E,(byte)0x43,(byte)0x4F,(byte)0x4D,(byte)0x2E};
    
    public static byte[] gameCbcencrypt(String memberId, String userId, String sessionGUID, String ip, String port, String publish) {
    	byte[] enc = null;
    	Decoder decoder = Base64.getDecoder();
    	System.out.println(stringToHex0x("7bbd7be54c9ea22965e9a26ba3e3fc63"));
    	System.out.println(stringToHex0x("ab39f2dafa2efe25734b2955d4dc6556"));
    	
    	try {
    		//�븫�샇�솕 �븿�닔 �샇異�
    		enc = KISA_SEED_CBC.SEED_CBC_Encrypt(pbUserKey, bszIV, "!!!".getBytes(charset), 0, "!!!".getBytes(charset).length);
    	} catch (UnsupportedEncodingException e) {
    		e.printStackTrace();
    	}
    	
    	Encoder encoder = Base64.getEncoder();
    	byte[] encArray = encoder.encode(enc);
    	/*try {
            System.out.println(new String(encArray, "utf-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }*/
    	return encArray;
    }
 
    public static byte[] hexStringToByteArray(String s) {
	    int len = s.length();
	    byte[] data = new byte[len / 2];
	    for (int i = 0; i < len; i += 2) {
	        data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4)
	                             + Character.digit(s.charAt(i+1), 16));
	    }
	    
	    return data;
	}
	
	
	public static String byteArrayToHexString(byte[] bytes){ 
		
		StringBuilder sb = new StringBuilder(); 
		
		for(byte b : bytes){ 
			
			sb.append(String.format("%02X", b&0xff)); 
		} 
		
		return sb.toString(); 
	} 

	
	public static String stringToHex(String s) {
	    String result = "";

	    for (int i = 0; i < s.length(); i++) {
	      result += String.format("%02X ", (int) s.charAt(i));
	    }

	    return result;
	  }


	// �뿥�궗 �젒�몢�궗 "0x" 遺숈씠�뒗 踰꾩쟾
	public static String stringToHex0x(String s) {
		String result = "";

		for (int i = 0; i < s.length(); i++) {
			result += String.format("0x%02X ", (int) s.charAt(i));
		}

		return result;
	}
	
	public static String getMD5(String str){

		String MD5 = ""; 

		try{

			MessageDigest md = MessageDigest.getInstance("MD5"); 

			md.update(str.getBytes()); 

			byte byteData[] = md.digest();

			StringBuffer sb = new StringBuffer(); 

			for(int i = 0 ; i < byteData.length ; i++){

				sb.append(Integer.toString((byteData[i]&0xff) + 0x100, 16).substring(1));

			}

			MD5 = sb.toString();

			

		}catch(NoSuchAlgorithmException e){

			e.printStackTrace(); 

			MD5 = null; 

		}

		return MD5;

	}
	
	public static String xssFilter(String str) {
		//String filstr = "<script>, %3Cscript, %3Ealert, ja%0Av%0Aa%0As%0Ac%0Aript, JaVaScRiPt, ScRiPt%20%0a%0d, JaVaScRiPt, ScRiPt%20%0a%0d, javascript, vbscript, expression,applet, meta, xml, blink, link, style, script, embed, object, iframe, frame, frameset, ilayer, layer, bgsound, title, base, eval, innerHTML, charset, document, string, create, append, binding, alert, msgbox, refresh, embed, ilayer, applet, cookie, void, href, nabort, @import, \\+ADw, \\+AD4, aim:, %0da=eval, allowscriptaccess, xmlns:html, <html xmlns, xmlns:html=, http-equiv=refresh, http-equiv=refresh, x-scriptlet, echo\\(, 0%0d%0a%00, moz-binding, res://, #exec, background=, &#x, %u0, string.fromcharcode, firefoxurl, <br size=, list-style-image, acunetix_wvs, wvs-xss, lowsrc, dynsrc, behavior, activexobject, microsoft.xmlhttp,  clsid:cafeefac-dec7-0000-0000-abcdeffedcba, application/npruntime-scriptable-plugin;deploymenttoolkit, onactivae, onactive, onafteripudate,onafterprint, onafterupdate, onbefore, onbeforeactivate, onbeforecopy, onbeforecut, onbeforedeactivate, onbeforeeditfocus, onbeforepaste, onbeforeprint, onbeforeunload, onbeforeupdate, onblur,  onbounce, oncellchange, onchange, onclick, oncontextmenu, oncontrolselect, oncopy, oncut, ondbclick,ondataavailable, ondatasetchanged, ondatasetcomplete, ondblclick, ondeactivate, ondrag, ondragend, ondragenter, ondragleave, ondragover, ondragstart, ondrop, onerror,  onerrorupdate, onfilterchange, onfinish, onfocus, onfocusin, onfocusout,onhelp, onkeydown, onkeypress, onkeyup, onlayoutcomplete, onload, onlosecapture, onmousedown, onmouseenter, onmouseleave, onmousemove, onmouseout, onmouseover, onmouseup, onmousewheel, onmove, onmoveend, onmovestart, onpaste, onpropertychange, onreadystatechange, onreset, onresize, onresizeend, onresizestart, onrowenter, onrowexit, onrowsdelete, onrowsinserted, onscroll, onselect, onselectionchange, onselectstart, onstart,onstop, onsubmit, onunload, cnbeforeprint, cnbeforepaste, onbeforeuload, oncontrolselected, onmouseend, onuload";
		//embed, iframe, frame, style, href, title, 
		String filstr = "<script>, %3Cscript, %3Ealert, ja%0Av%0Aa%0As%0Ac%0Aript, JaVaScRiPt, ScRiPt%20%0a%0d, JaVaScRiPt, ScRiPt%20%0a%0d, javascript, vbscript, "
				+ "expression,applet, meta, xml, blink, link, script,  object, frameset, ilayer, layer, bgsound, base, eval, innerHTML, charset, "
				+ "document, string, create, append, binding, alert, msgbox, refresh, ilayer, applet, cookie, void, nabort, @import, \\+ADw, \\+AD4, aim:, %0da=eval, "
				+ "allowscriptaccess, xmlns:html, <html xmlns, xmlns:html=, http-equiv=refresh, http-equiv=refresh, x-scriptlet, echo\\(, 0%0d%0a%00, moz-binding, res://, #exec, "
				+ "background=, &#x, %u0, string.fromcharcode, firefoxurl, <br size=, list-style-image, acunetix_wvs, wvs-xss, lowsrc, dynsrc, behavior, activexobject, microsoft.xmlhttp,  "
				+ "clsid:cafeefac-dec7-0000-0000-abcdeffedcba, application/npruntime-scriptable-plugin;deploymenttoolkit, onactivae, onactive, onafteripudate,onafterprint, onafterupdate, "
				+ "onbefore, onbeforeactivate, onbeforecopy, onbeforecut, onbeforedeactivate, onbeforeeditfocus, onbeforepaste, onbeforeprint, onbeforeunload, onbeforeupdate, onblur,  "
				+ "onbounce, oncellchange, onchange, onclick, oncontextmenu, oncontrolselect, oncopy, oncut, ondbclick,ondataavailable, ondatasetchanged, ondatasetcomplete, ondblclick, "
				+ "ondeactivate, ondrag, ondragend, ondragenter, ondragleave, ondragover, ondragstart, ondrop, onerror,  onerrorupdate, onfilterchange, onfinish, onfocus, onfocusin, onfocusout,"
				+ "onhelp, onkeydown, onkeypress, onkeyup, onlayoutcomplete, onload, onlosecapture, onmousedown, onmouseenter, onmouseleave, onmousemove, onmouseout, onmouseover, "
				+ "onmouseup, onmousewheel, onmove, onmoveend, onmovestart, onpaste, onpropertychange, onreadystatechange, onreset, onresize, onresizeend, onresizestart, onrowenter, "
				+ "onrowexit, onrowsdelete, onrowsinserted, onscroll, onselect, onpageshow, confirm, window, open"
				+ "	onselectionchange, onselectstart, onstart,onstop, onsubmit, onunload, cnbeforeprint, cnbeforepaste, onbeforeuload, oncontrolselected, onmouseend, onuload";
		
		try {
			if (!filstr.equals("")) { 
				filstr.replaceAll(" ",""); 
				String [] st = filstr.split(",");
				for( int x = 0; x < st.length; x++ ) { 
					str = str.replaceAll(st[x].replaceAll(" ",""), "&nbsp;"+st[x]+"&nbsp;"); 
				} 
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return str; 
	}

	   /**
	    * 臾몄옄�뿴 留덉뒪�궧 泥섎━
	    * @param str
	    * @param limit
	    * @return str
	    */
	   public static String setStringMasking(String str, int limit) {
		   if( str == null || str.equals("") ){
			   return "";
		   }
		   return str.replaceAll("(?<=.{" + limit + "})." , "*");
	   }
	   
	   /**
	    * �쑕���룿 踰덊샇 留덉뒪�궧 泥섎━ ( 010 - 11**-*111 )
	    * @param str
	    * @return
	    */
	   public static String setPhoneMasking(String str) {       
	       Pattern pattern = Pattern.compile("^(\\d{3})-?(\\d{1,2})\\d{2}-?\\d(\\d{3})$");
	       
	       //�엯�젰諛쏆� str�씠 null�씠嫄곕굹 怨듬갚�씪寃쎌슦 鍮� 臾몄옄("") 諛섑솚.
	       if (str == null || "".equals(str)) return "";
	       
	       Matcher matcher = pattern.matcher(str);
	       
	       if(matcher.find())  return matcher.replaceAll("$1-$2**-*$3"); //移섑솚
	       else                return "***";       
	   } 
	   
	   /**
	    * �씠硫붿씪 留덉뒪�궧 泥섎━ ( aaa***@naver.com )
	    * @param str
	    * @param limit
	    * @return
	    */
	   public static String setEmailMasking(String str, int limit ) {
		   if ( str.indexOf("@") > -1 ) {
			   int len = str.split("@")[0].length() - limit;
			   return str.replaceAll(".(?=.{0," + len + "}@)", "*");
		   }else{
			   return setStringMasking(str, limit);
		   }
	   }

}
