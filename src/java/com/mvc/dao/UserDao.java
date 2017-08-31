/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.dao;

import com.mvc.model.User;
import java.util.List;

/**
 *
 * @author ozaytunctan13
 */
public interface UserDao {
    public void insert(User user);
    public List<User> getAllUser();
    public void delete(User user);
    public void update(User user);
}
