
package com.lee.commons.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.ServerSocket;
import java.net.Socket;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class StartupUtil {
	
    public static final String SUCCESS_INFO = "Application[{}] start success!!";
    public static final String STOPPED_INFO = "Application[{}] stopped!!";
    public static final String FAILURE_INFO = "Application[{}] start failure!!";
    public static final String CONSOLE_INFO = ">>[console]: ";
	
    private static final Logger logger = LoggerFactory.getLogger(StartupUtil.class);
    private ServerSocket ss;
    private static final String DEFAULT_SPRING_CONFIG = "classpath*:META-INF/spring/**/*.xml";
    private String[] configLocations;
    private int port;
    private ClassPathXmlApplicationContext ctx;
    private String appname;


    public static void startApplication(String appname, String[] args) {
        StartupUtil su = getInstance(appname, args);
        su.loadxml();
        su.start();
    }


    public static StartupUtil getInstance(String appname, String[] args) {
        StartupUtil su = null;
        if (null == args || args.length <= 0) {
            su = new StartupUtil();
        } else {
            su = new StartupUtil(Integer.parseInt(args[0]));
        }
        su.setAppname(appname);
        return su;
    }


    public StartupUtil() {
    }


    public StartupUtil(int port) {
        this.port = port;
        try {
            ss = new ServerSocket(port);
        } catch (IOException e) {
            logger.error(e.getMessage(), e);
        }
    }


    public StartupUtil(int port, String... configLocations) {
        this.configLocations = configLocations;
        try {
            ss = new ServerSocket(port);
        } catch (IOException e) {
            logger.error(e.getMessage(), e);
        }
    }


    public void start() {
        try {
            if (0 == port) {
                System.in.read();
            } else {
                Socket s = ss.accept();
                BufferedReader reader = new BufferedReader(new InputStreamReader(s.getInputStream()));
                while (true) {
                    String str = reader.readLine();
                    if (null == str) {
                        continue;
                    } else if ("quit".equalsIgnoreCase(str)) {
                        ctx.stop();
                        reader.close();
                        s.close();
                        ss.close();
                        break;
                    } else {
                        //
                    }
                }
            }
        } catch (IOException e) {
            logger.error(FAILURE_INFO, appname, e);
        }
        logger.info(STOPPED_INFO, appname);
    }


    public void loadxml() {
        if (null == this.configLocations) {
            ctx = new ClassPathXmlApplicationContext(DEFAULT_SPRING_CONFIG);
        } else {
            ctx = new ClassPathXmlApplicationContext(this.configLocations);
        }
        ctx.start();

        logger.info(SUCCESS_INFO, appname);
        System.out.println(CONSOLE_INFO.concat(SUCCESS_INFO.replace("{}", appname)));
    }


    public void setAppname(String appname) {
        this.appname = appname;
    }


    public ClassPathXmlApplicationContext getCtx() {
        return ctx;
    }


    public void setConfigLocations(String[] configLocations) {
        this.configLocations = configLocations;
    }

}
