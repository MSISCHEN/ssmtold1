package com.cyj.service.impl;

import com.cyj.dao.UserMapper;
import com.cyj.pojo.User;
import com.cyj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Administrator on 2018/5/27.
 */
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;
    @Override
    public User findUserById(int id) throws Exception {
        //通过mapper查询数据库
        return userMapper.findUserById(id);
    }
}
