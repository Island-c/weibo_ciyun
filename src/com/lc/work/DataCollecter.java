package com.lc.work;

import java.util.ArrayList;
import java.util.List;

import com.lc.entity.HotSearch;
import com.lc.utils.HotSearchUtil;
import com.lc.utils.IOUtil;

public class DataCollecter {

	/**
	 * 获取微博热搜
	 * @return [description]
	 */
	public static List<String> get_data() {
		List<HotSearch> hot_list = HotSearchUtil.getResouList();
		System.out.println("获取数据");
		List<String> texts=new ArrayList<String>();

		for(HotSearch h:hot_list) {
			String text =h.getName();
			texts.add(text);
		}
		IOUtil.write(texts);

		fenci.cut_word(hot_list);
		System.out.println("分词");
		
		return texts;
		
	}
	
	public static void main(String[] args) {
		get_data();
	}
	
	
}
