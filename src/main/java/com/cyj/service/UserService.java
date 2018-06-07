package com.cyj.service;

import com.cyj.pojo.User;

/**
 * Created by Administrator on 2018/5/27.
 */
public interface UserService {
    //根据用户id查询用户
    public User findUserById(int id) throws Exception;
}
