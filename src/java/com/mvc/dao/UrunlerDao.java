/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.dao;

import com.mvc.model.Urunler;
import java.util.List;

/**
 *
 * @author ozaytunctan13
 */
public interface UrunlerDao {
    public List<Urunler> findUrunName(String urunName);
     public List<Urunler> findUrunComment(String aciklama);
     public List<Urunler>getAllUrun();
      public void insert(Urunler urun);
      public void update(Urunler urun);
      public void delete(Urunler urun);
}
