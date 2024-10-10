package com.chat.util;

import org.junit.Test;

import java.math.BigDecimal;

public class TestUtil {
    @Test
    public void testA(){
        String s = Md5Util.StringInMd5("123456");
        System.out.println(s);
    }
}
