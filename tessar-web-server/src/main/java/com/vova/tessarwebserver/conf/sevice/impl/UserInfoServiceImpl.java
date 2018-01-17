package com.vova.tessarwebserver.conf.sevice.impl;


import com.vova.tessarwebserver.conf.sevice.UserInfoService;
import com.vova.tessarwebserver.dao.UserInfoDao;
import com.vova.tessarwebserver.domain.security.UserInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserInfoServiceImpl implements UserInfoService {
    @Resource
    private UserInfoDao userInfoDao;
    @Override
    public UserInfo findByUsername(String username) {
        System.out.println("UserInfoServiceImpl.findByUsername()");
        return userInfoDao.findByUsername(username);
    }
}