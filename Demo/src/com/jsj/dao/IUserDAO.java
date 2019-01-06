package com.jsj.dao;

import java.util.List;

import com.jsj.pojo.User;


public interface IUserDAO {
	// 增加
	public void add(User user);

	// 修改
	public void update(User user);

	// 删除
	public boolean delete(long id);

	// 根据id获取用户
	public User get(long id);

	// 获取用户列表
	public List<User> list();

	// 获取用户数量
	public int getTotal();

	// 登录验证
	public User login(String username, String password);

	// 通过用户名查找用户
	List<User> findUser(String username);

}
