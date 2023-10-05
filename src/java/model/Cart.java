/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Asus
 */
public class Cart {

    private String id;
    private int quantity;

    public Cart() {
    }

    public Cart(String id, int quantity) {
        this.id = id;
        this.quantity = quantity;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public List<Cart> getCart(String txt) {
        List<Cart> list = new ArrayList<>();
        try {
            if (txt != null && txt.length() != 0) {
                String[] s = txt.split("/");
                for (String i : s) {
                    String[] n = i.split(":");
                    String id = n[0];
                    int quantity = Integer.parseInt(n[1]);
                    Cart c = new Cart(id, quantity);
                    list.add(c);
                }
            }
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
        return list;
    }

//    public static void main(String[] args) {
//        Cart c = new Cart();
//        List<Cart> list = c.getCart("A001:1/S001:1");
//        for (int i = 0; i < list.size(); i++) {
//            System.out.println(list.get(i).quantity);
//        }
//    }
}
