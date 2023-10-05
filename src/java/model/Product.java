/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class Product {

    private String productID, productName;
    private double oldPrice, newPrice;
    private String image01, image02, image03, image04;
    private int available, sold, cid;

    public Product() {
    }

    public Product(String productID, String productName, double oldPrice, double newPrice, String image01, String image02, String image03, String image04, int available, int sold, int cid) {
        this.productID = productID;
        this.productName = productName;
        this.oldPrice = oldPrice;
        this.newPrice = newPrice;
        this.image01 = image01;
        this.image02 = image02;
        this.image03 = image03;
        this.image04 = image04;
        this.available = available;
        this.sold = sold;
        this.cid = cid;
    }

    public Product(int cid, String productID, String productName, Double newPrice, int available) {
        this.cid = cid;
        this.productID = productID;
        this.productName = productName;
        this.newPrice = newPrice;
        this.available = available;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(double oldPrice) {
        this.oldPrice = oldPrice;
    }

    public double getNewPrice() {
        return newPrice;
    }

    public void setNewPrice(double newPrice) {
        this.newPrice = newPrice;
    }

    public String getImage01() {
        return image01;
    }

    public void setImage01(String image01) {
        this.image01 = image01;
    }

    public String getImage02() {
        return image02;
    }

    public void setImage02(String image02) {
        this.image02 = image02;
    }

    public String getImage03() {
        return image03;
    }

    public void setImage03(String image03) {
        this.image03 = image03;
    }

    public String getImage04() {
        return image04;
    }

    public void setImage04(String image04) {
        this.image04 = image04;
    }

    public int getAvailable() {
        return available;
    }

    public void setAvailable(int available) {
        this.available = available;
    }

    public int getSold() {
        return sold;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

}
