/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.controller;

import com.mvc.dao.UserDaoImpl;
import com.mvc.model.Login;
import com.mvc.model.User;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author ozaytunctan13
 */
@Controller
public class LoginController {
    
    @RequestMapping(value = "/")
    public ModelAndView login() {
        return new ModelAndView("anasayfa");
    }

    @RequestMapping(value = "/giris-yap")
    public ModelAndView girisYap() {
        return new ModelAndView("login");
    }

    @RequestMapping(value = "/loginsucces", method = RequestMethod.POST)
    public ModelAndView loginControl(@RequestParam HashMap<String, String> re,
            HttpServletResponse response,
            HttpServletRequest request) {
        String pass, uname;
        pass = re.get("password");
        uname = re.get("username");
        
        ModelAndView mv = null;
        //Veritabanından kaydı getir uyuşma varmı yokmu kontrol et;
        UserDaoImpl userDao=new UserDaoImpl();
         User user= userDao.findUser(uname,pass);
         
        if (user!=null) {
            Login l = new Login(uname, pass);
            mv = new ModelAndView("loginsucces");
            mv.addObject("login", l);
            HttpSession session = request.getSession(true);
            session.setAttribute("uname", uname);
            session.setAttribute("pass", pass);
            mv.addObject("oturum", "Oturum Oluşturuldu");
            return mv;
        }        
        return new ModelAndView("redirect:/");
    }
    
    @RequestMapping(value = "/cikis-yap")
    public ModelAndView logout() {
        ModelAndView mv = new ModelAndView("logout");
        //mv.addObject("error", "Cıkış Yaptınız Lütfen tekrar giriş yapınız");
        return mv;
    }

    @RequestMapping(value = "/uye-kayit")
    public ModelAndView uyeKaydet() {
        ModelAndView mv = new ModelAndView("uyekayit");
        //mv.addObject("error", "Cıkış Yaptınız Lütfen tekrar giriş yapınız");
        return mv;
    }

    @RequestMapping(value = "/newUser")
    public ModelAndView uyeRegister(@ModelAttribute User user) {
        UserDaoImpl da = new UserDaoImpl();
        System.out.println(user.toString());
        da.insert(user);
        ModelAndView mv = new ModelAndView("login");
        //mv.addObject("error", "Cıkış Yaptınız Lütfen tekrar giriş yapınız");
        return mv;
    }
}
