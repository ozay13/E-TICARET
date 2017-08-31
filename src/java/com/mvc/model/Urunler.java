package com.mvc.model;
// Generated Aug 31, 2017 10:21:47 AM by Hibernate Tools 4.3.1



/**
 * Urunler generated by hbm2java
 */
public class Urunler  implements java.io.Serializable {


     private Integer id;
     private String name;
     private String category;
     private String state;
     private double price;
     private int total;
     private String country;
     private String city;
     private String street;
     private String comment;
     private byte[] image;

    public Urunler() {
    }

    public Urunler(String name, String category, String state, double price, int total, String country, String city, String street, String comment, byte[] image) {
       this.name = name;
       this.category = category;
       this.state = state;
       this.price = price;
       this.total = total;
       this.country = country;
       this.city = city;
       this.street = street;
       this.comment = comment;
       this.image = image;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getCategory() {
        return this.category;
    }
    
    public void setCategory(String category) {
        this.category = category;
    }
    public String getState() {
        return this.state;
    }
    
    public void setState(String state) {
        this.state = state;
    }
    public double getPrice() {
        return this.price;
    }
    
    public void setPrice(double price) {
        this.price = price;
    }
    public int getTotal() {
        return this.total;
    }
    
    public void setTotal(int total) {
        this.total = total;
    }
    public String getCountry() {
        return this.country;
    }
    
    public void setCountry(String country) {
        this.country = country;
    }
    public String getCity() {
        return this.city;
    }
    
    public void setCity(String city) {
        this.city = city;
    }
    public String getStreet() {
        return this.street;
    }
    
    public void setStreet(String street) {
        this.street = street;
    }
    public String getComment() {
        return this.comment;
    }
    
    public void setComment(String comment) {
        this.comment = comment;
    }
    public byte[] getImage() {
        return this.image;
    }
    
    public void setImage(byte[] image) {
        this.image = image;
    }




}


