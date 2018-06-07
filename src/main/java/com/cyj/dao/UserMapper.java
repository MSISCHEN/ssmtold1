package com.cyj.dao;

import com.cyj.pojo.User;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2018/5/26.
 * @Description 普通用户dao接口
 */
//@Repository //注册为持久层的bean
public interface UserMapper {
    /*查询用户的信息
    @parm 用户的id
    @return 用户
    * */
    public User findUserById(int id) throws Exception;
}
