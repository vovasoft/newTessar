package com.vova.tessarwebserver.dao;

import com.vova.tessarwebserver.domain.security.UserInfo;
import org.springframework.data.repository.CrudRepository;

public interface UserInfoDao extends CrudRepository<UserInfo,Long> {
    /**通过username查找用户信息;*/
    public UserInfo findByUsername(String username);
}