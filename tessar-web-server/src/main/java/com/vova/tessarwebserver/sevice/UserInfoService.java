package com.vova.tessarwebserver.sevice;


import com.vova.tessarwebserver.domain.security.UserInfo;

public interface UserInfoService {
    /**通过username查找用户信息;*/
    public UserInfo findByUsername(String username);
}