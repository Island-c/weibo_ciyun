package com.lc.work;

import java.io.IOException;

import com.lc.utils.PythonInvoke;
/**
 * python调用工厂
 */
public class Factory {
	/**
	 * 弃用，改由java实现
	 * @return [description]
	 * @throws IOException          [description]
	 * @throws InterruptedException [description]
	 */
	public static String analyse_data() throws IOException, InterruptedException {
		PythonInvoke.invokePy("data_analyse.py");
		return "完成数据分析";
	}

	/**
	 * 生成词云
	 * @return [description]
	 * @throws IOException          [description]
	 * @throws InterruptedException [description]
	 */
	public static String get_ciyun() throws IOException, InterruptedException {
		PythonInvoke.invokePy("ciyun.py "+PathConfig.PYTHON_PATH);
		System.out.println("词云生成");
		return "完成词云生成";
	}
	
	/**
	 * 情感分析
	 * @return [description]
	 * @throws IOException          [description]
	 * @throws InterruptedException [description]
	 */
	public static String sentiment() throws IOException, InterruptedException {
		String senti = PythonInvoke.invokePy("sentiment.py "+PathConfig.PYTHON_PATH);
		String senti_num=senti.split("=")[1];
		System.out.println("情感分析，情感倾向度为："+senti_num);
		return senti_num;
	}
	
	/**
	 * 测试
	 * @param  args                 [description]
	 * @throws IOException          [description]
	 * @throws InterruptedException [description]
	 */
	public static void main(String[] args) throws IOException, InterruptedException {
		sentiment();
	}
}
