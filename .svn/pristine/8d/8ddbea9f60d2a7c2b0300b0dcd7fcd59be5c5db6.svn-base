package com.vova.tessarwebserver.conf;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.AbstractJsonpResponseBodyAdvice;

/**
 * @author: Vova
 * @create: date 20:03 2018/1/9
 */

@ControllerAdvice(basePackages = "com.vova.tessarwebserver.controler")//com.vova.tessarwebserver.controler
public class JsonpAdvice extends AbstractJsonpResponseBodyAdvice {

    public JsonpAdvice() {
        super("callback","jsonp");
    }
}