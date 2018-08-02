package cn.broccoli.blog.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import cn.broccoli.blog.mapper.UserMapper;
import cn.broccoli.blog.po.User;
import cn.broccoli.blog.service.UserService;

public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	@Override
	public User selectByPrimaryKey(Integer userId) throws Exception {
		
		return userMapper.selectByPrimaryKey(userId);
	}
	@Override
	public User login(String username) throws Exception{
		// TODO Auto-generated method stub
		return userMapper.login(username);
	}
	@Override
	public int countByTestUser(String username) throws Exception{
		// TODO Auto-generated method stub
		return userMapper.countByTestUser(username).intValue();
	}
	@Override
	public int countByTestEmail(String email) throws Exception{
		// TODO Auto-generated method stub
		return userMapper.countByTestEmail(email).intValue();
	}
	@Override
	public int countByTestID(String ID) throws Exception {
		// TODO Auto-generated method stub
		 return userMapper.countByTestID(ID).intValue();
	}
	@Override
	public int insertUser(User user) throws Exception{
		// TODO Auto-generated method stub
		return userMapper.insertUser(user);
	}
	@Override
	public int LoginByTestUser(String username) throws Exception {
		// TODO Auto-generated method stub
		return userMapper.LoginByTestUser(username);
	} 

}
