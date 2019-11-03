package com.lc.work;

import java.io.IOException;
/**
 * 使用java生成词云， （效果太差 弃用
 */
public class ciyun {

	public static void general_ciyun() throws IOException {
		weibo.ciyun.get_ciyun(PathConfig.PYTHON_PATH);
	}
	public static void main(String[] args) throws IOException {
		general_ciyun();
	}
}
