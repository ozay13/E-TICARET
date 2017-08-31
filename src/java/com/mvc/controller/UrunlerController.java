/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.controller;

import com.mvc.dao.UrunlerDaoImpl;
import com.mvc.model.Urunler;
import java.util.List;
import javax.xml.ws.BindingType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author ozaytunctan13
 */
@Controller
public class UrunlerController {
    
    @RequestMapping(value = "/urunler")
    public ModelAndView showAllProduct() {
        
        ModelAndView mv = new ModelAndView("loginsucces");
        UrunlerDaoImpl urun = new UrunlerDaoImpl();
        List<Urunler> all = urun.getAllUrun();
        
        if (all.size() > 0) {
            mv.addObject("urun", all);
            mv.addObject("state", true);
           
            return mv;
        }
        return mv;
        
    }

    @RequestMapping(value = "/urunsat",method = RequestMethod.GET)
    public ModelAndView addProduct() {
        
        ModelAndView mv = new ModelAndView("newProduct");
        mv.addObject("product", false);
//        UrunlerDaoImpl urun = new UrunlerDaoImpl();
//        List<Urunler> all = urun.getAllUrun();
//       
//        if (all.size() > 0) {
//            mv.addObject("urun", all);
//            mv.addObject("state",true);
//            System.out.println(">>>>>>>>>>>>>>>Listeleniyor"+all.get(0).toString());
//            return mv;
//        }
        return mv;
        
    }

    @RequestMapping(value = "/save-product")
    public ModelAndView addSave(@ModelAttribute Urunler urun) {
        ModelAndView mv = new ModelAndView("newProduct");
        UrunlerDaoImpl uruns = new UrunlerDaoImpl();
        uruns.insert(urun);
        mv.addObject("product", false);
//        UrunlerDaoImpl urun = new UrunlerDaoImpl();
//        List<Urunler> all = urun.getAllUrun();
//       
//        if (all.size() > 0) {
//            mv.addObject("urun", all);
//            mv.addObject("state",true);
//            System.out.println(">>>>>>>>>>>>>>>Listeleniyor"+all.get(0).toString());
//            return mv;
//        }
        return mv;
        
    }
}
