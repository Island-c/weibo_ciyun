package com.lc.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.lc.work.PathConfig;

public class IOUtil {
    static public void write(List<String> hot_list) {
    	try {
    		FileUtils.writeLines(new File(PathConfig.PYTHON_PATH+"resou.txt"), "UTF-8", hot_list, false);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    
    static public List<String> read_sentiment() {
    	File sentiment_file = new File(PathConfig.PYTHON_PATH+"sentiment.txt");
    	BufferedReader is=null;
    	//List<String> res= new ArrayList<String>();
    	List<String> res=null;
		try {
			res = FileUtils.readLines(sentiment_file, "UTF-8");		

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

    	return res;
    	
    }
    public static void main(String[] args) {
    	List<String> str =read_sentiment();
    	for(String s:str) {
    		System.out.println(s);
    	}
	}

}
