package com.lee.query.service.run;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.lee.commons.utils.StartupUtil;

public class Startup {
    public static void main(String[] args) throws Exception {
    	Logger logger= LoggerFactory.getLogger(Startup.class);
    	
        StartupUtil.startApplication("query-service", args);
    }
}
