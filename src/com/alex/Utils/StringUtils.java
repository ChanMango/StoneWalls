package com.alex.Utils;

import java.util.UUID;

public class StringUtils {
	public static String getUniqueId() {
		String str = UUID.randomUUID().toString().replace("-", "").substring(0, 8);
		return str;
	}
}
