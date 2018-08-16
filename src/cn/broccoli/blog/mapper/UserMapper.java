package cn.broccoli.blog.mapper;

import cn.broccoli.blog.po.User;
import cn.broccoli.blog.po.UserExample;
import cn.broccoli.blog.util.registUtil;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
	//返回用户数
    int countByExample(UserExample example);
    //
    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(Integer userId);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	User login(String username);
	//检测用户名是否存在
	Integer countByTestUser(String username);
	//检查登录方式是否存在
	Integer LoginByTestUser(String username);
	//查询邮箱是否存在
	Integer countByTestEmail(String email);
	//查询昵称是否存在
	Integer countByTestID(String nikename);
	//添加用户
	int insertUser(User user);
}