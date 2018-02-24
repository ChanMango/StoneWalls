package com.alex.Utils;

import java.text.SimpleDateFormat;
import java.util.Date;


public class DateUtils {
public static String changeFormatToStr(long time) {
	Date date=new Date(time);
	SimpleDateFormat format=new SimpleDateFormat("yyyy-mm-dd");
	String str=format.format(date);
	return str;
}
}
