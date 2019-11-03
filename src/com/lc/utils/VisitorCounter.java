package com.lc.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;

import com.lc.work.PathConfig;

public class VisitorCounter {
	private static final long serialVersionUID = 1L;
	private static final String filename=PathConfig.PYTHON_PATH+"VisitorCount.txt";
    public VisitorCounter() {
        super();
    }

    public static void writeFile( int count) {
        try {
            PrintWriter out = new PrintWriter(new FileWriter(filename));
            out.println(count);
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static int readFile() {
        File f = new File(filename);
        int count = 0;
        if (!f.exists()) {
            writeFile(0);
        }
        BufferedReader in=null;
        try {
            in = new BufferedReader(new FileReader(f));
            try {
                count = Integer.parseInt(in.readLine());
            } catch (NumberFormatException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }finally {
        	try {
				in.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
        return count;
    }



}
