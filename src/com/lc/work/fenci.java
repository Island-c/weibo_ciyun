package com.lc.work;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.huaban.analysis.jieba.JiebaSegmenter;
import com.lc.entity.HotSearch;



public class fenci {
	private static Set<String> stop_word = new HashSet<String>();
	
	/**
	 * 初始化停用词
	 */
	private static void stop_word_set_init() {
		Reader reader =null;
		try {
			reader=new BufferedReader(new FileReader(new File(PathConfig.PYTHON_PATH+"stop_word\\stop_word.txt")));
            char[] flush = new char[64]; 
            int len=-1;
            while((len = reader.read(flush))!=-1) {
                 String str=new String(flush,0,len);
                 stop_word.add(str);
            } 
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
            try {
                if(reader != null)
                    reader.close();
            }catch(IOException e)
            {
                e.printStackTrace();
            }
        }
		System.out.println("处理"+stop_word.size()+"个停用词");
	}

	/**
	 * 分词
	 * @param  hot_list [description]
	 * @return          [description]
	 */
	public static String cut_word(List<HotSearch> hot_list) {
		stop_word_set_init();
		
	    JiebaSegmenter segmenter = new JiebaSegmenter();
	    Writer write=null;
	    try {
	    	write = new OutputStreamWriter(new FileOutputStream(PathConfig.PYTHON_PATH+"ciyun.txt"),"utf-8");
	    	 for(HotSearch hl: hot_list) {
	 	    	String sentences=hl.getName();
	 		    List<String> res = segmenter.sentenceProcess(sentences);
	 		    for(String r : res) {
	 		    	if(!stop_word.contains(r) &&r.length()>=2) {
	 		    		write.write(r);
	 		    		write.write("\n");
	 		    	}
	 		    }
	    	 }
	    	 write.flush();
	    }catch(IOException e) {
            e.printStackTrace();
        }finally {
            try {
                if(write != null)
                    write.close();
            }catch(IOException e) {
                e.printStackTrace();
            }
        }
	   
		    
	    

		return "分词成功";
	}

}
