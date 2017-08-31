/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.dao;

import com.mvc.model.User;
import java.util.List;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author ozaytunctan13
 */
public class UserDaoImpl implements UserDao {

    private Session getSession() {
        Configuration cnf = new Configuration();
        cnf.configure("hibernate.cfg.xml");
        StandardServiceRegistryBuilder b = new StandardServiceRegistryBuilder().applySettings(cnf.getProperties());
        SessionFactory f = cnf.buildSessionFactory(b.build());
        Session session = f.openSession();
        return session;
    }

    @Override
    public void insert(User user) {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        sesion.beginTransaction();
        sesion.save(user);
        sesion.getTransaction().commit();
    }

    @Override
    public List<User> getAllUser() {
        Session sesion = HibernateUtil.getSessionFactory().getCurrentSession();
        sesion.beginTransaction();
        List<User> result = sesion.createQuery("from user").list();
        sesion.getTransaction().commit();
        return result;
    }

    @Override
    public void delete(User user) {
        Session sesion = HibernateUtil.getSessionFactory().getCurrentSession();
        sesion.beginTransaction();
        sesion.delete(user);
        sesion.getTransaction().commit();
    }

    @Override
    public void update(User user) {
        Session sesion = HibernateUtil.getSessionFactory().getCurrentSession();
        sesion.beginTransaction();
        sesion.update(user);
        sesion.getTransaction().commit();
    }

    public User findUser(String username) {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        sesion.beginTransaction();
        String sql = "SELECT * FROM User WHERE username = :username and password=:pass";
        SQLQuery query = sesion.createSQLQuery(sql);
        query.addEntity(User.class);
        query.setParameter("username",username);
        query.setParameter("pass", "1234");
       User results = (User) query.list().get(0);
//        User result = (User) sesion.createSQLQuery("select * from user where username=" + username).list().get(0);
//        System.out.println(result);
        sesion.getTransaction().commit();
        return results;
    }

    public User findUser(String uname, String pass) {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        sesion.beginTransaction();
        String sql = "SELECT * FROM User WHERE username = :username and password=:pass";
        SQLQuery query = sesion.createSQLQuery(sql);
        query.addEntity(User.class);
        query.setParameter("username",uname);
        query.setParameter("pass", pass);
        List results =query.list();
        User user=null;
        if(results.size()>0){
          user=(User)results.get(0);
        }
        else{
           user=null;
        }
        sesion.getTransaction().commit();
        return user;
    }
}
