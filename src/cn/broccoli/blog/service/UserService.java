package cn.broccoli.blog.service;

import cn.broccoli.blog.po.User;

public interface UserService {
   
	//根据ID查找用户
	public User selectByPrimaryKey(Integer userId) throws Exception;
	//用户登录
	public User login (String username) throws Exception;
	//注册检查用户是否存在
	public int countByTestUser(String username) throws Exception;
	//注册检查邮箱是否存在
	public int countByTestEmail(String email) throws Exception;
	//注册检查昵称是否存在
	public int countByTestID(String ID) throws Exception;
	//登录检查是否存在
	public int LoginByTestUser(String username) throws Exception;
	//注册功能
	public int insertUser(User user) throws Exception;
	
	int updateUserImage(Integer uid,String userImage) throws Exception;
	
	int updateUserInfo(User user) throws Exception;
}
