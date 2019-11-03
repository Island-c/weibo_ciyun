package com.lc.utils;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;

import com.lc.work.PathConfig;

public class PythonInvoke {

    public static String invokePy(String para) throws IOException, InterruptedException {
		String cmd = "python "+PathConfig.PYTHON_PATH+para;
		//System.out.println("cmd:"+cmd);
		String msg=ReadCmdLine(cmd);
		return msg;
    }
    public static String ReadCmdLine(String command){
		StringBuilder result = new StringBuilder();
 
		Process process = null;
        BufferedReader bufrIn = null;
        BufferedReader bufrError = null;
        try {
			process = Runtime.getRuntime().exec(command);
			process.waitFor();
			 //获取执行结果
            bufrIn = new BufferedReader(new InputStreamReader(process.getInputStream(), "UTF-8"));
            bufrError = new BufferedReader(new InputStreamReader(process.getErrorStream(), "UTF-8"));
            String line = null;
            while ((line = bufrIn.readLine()) != null) {
                result.append(line).append('\n');
            }
            while ((line = bufrError.readLine()) != null) {
                result.append(line).append('\n');
            }
		} catch (Exception e) {
			System.out.println("执行命令失败，e:"+e);
		}finally {
            closeStream(bufrIn);
            closeStream(bufrError);
 
            // 销毁子进程
            if (process != null) {
                process.destroy();
            }
        }
        //replaceAll("\\\\x", "%"),解决返回结果编码问题
        return result.toString().replaceAll("\\\\x", "%");
	}
 
	private static void closeStream(Closeable stream) {
		if (stream != null) {
            try {
                stream.close();
            } catch (Exception e) {
                System.out.println("关闭连接失败，e"+e);
            }
        }
	}
}