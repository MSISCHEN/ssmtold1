package com.cyj.controller;

import com.cyj.pojo.User;
import com.cyj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**D:\IntelliJ IDEA 2017.1.1\ssmtold1\src\main\webapp\jsp\admin\index.jsp
 * Created by Administrator on 2018/5/27.
 */
@Controller
//@RequestMapping("/user")：为了对url进行分类管理，可以在这里定义根路径，最终访问url是根路径+子路径
//比如：用id查找用户：/user/findUserById.action
public class UserController {
    @Autowired
    private UserService userService;
    //根据id查找用户
    @RequestMapping("/findUserById/{id}")
    @ResponseBody
    public User findUserById(@PathVariable int id) throws Exception{
        return userService.findUserById(id);
    }
}
