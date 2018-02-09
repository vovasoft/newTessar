package vova.util;

import org.springframework.stereotype.Component;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

/**
 * @author: Vova
 * @create: date 19:04 2018/2/5
 */
@Component
public class Switch {
    @Value("${useSid}")
    private boolean useSid;

    public Switch() {
    }

    public boolean getUseSid() {
        return useSid;
    }

    public void setUseSid(boolean useSid) {
        this.useSid = useSid;
    }
}
