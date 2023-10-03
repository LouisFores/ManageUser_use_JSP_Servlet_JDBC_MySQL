package com.example.manage_user_use_jsp_servlet_jdbc_mysql.Service;

import com.example.manage_user_use_jsp_servlet_jdbc_mysql.Model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUser {
    public void insertUser(User user) throws SQLException;
    public User selectUser(int id);
    public List<User> selectAllUsers();
    public boolean deleteUser(int id) throws SQLException;
}
