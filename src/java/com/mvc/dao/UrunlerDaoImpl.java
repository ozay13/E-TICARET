/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.dao;

import com.mvc.model.Urunler;
import com.mvc.model.User;
import java.util.List;
import org.hibernate.SQLQuery;
import org.hibernate.Session;

/**
 *
 * @author ozaytunctan13
 */
public class UrunlerDaoImpl implements UrunlerDao {

    @Override
    public List<Urunler> findUrunName(String urunName) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
         String sql = "SELECT * FROM urunler";
        SQLQuery query = session.createSQLQuery(sql);
        query.addEntity(Urunler.class);
        List<Urunler> results =query.list();
        session.getTransaction().commit();
        return results;
    }

    @Override
    public List<Urunler> findUrunComment(String aciklama) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Urunler> urun = session.createSQLQuery("select * from urunler where  comment= " + aciklama).list();

        session.getTransaction().commit();
        return urun;
    }

    @Override
    public List<Urunler> getAllUrun() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
         String sql = "SELECT * FROM urunler";
        SQLQuery query = session.createSQLQuery(sql);
        query.addEntity(Urunler.class);
        List<Urunler> results =query.list();
        session.getTransaction().commit();
        return results;
    }

    @Override
    public void insert(Urunler urun) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(urun);
        session.getTransaction().commit();
    }

    @Override
    public void update(Urunler urun) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.saveOrUpdate(urun);
        session.getTransaction().commit();
    }

    @Override
    public void delete(Urunler urun) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.delete(urun);
        session.getTransaction().commit();
    }

}
