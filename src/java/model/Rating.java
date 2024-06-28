/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Rating {
    private int rating;
    private int quantity;
    private double percen;

    public Rating() {
    }

    public Rating(int rating, int quantity, double percen) {
        this.rating = rating;
        this.quantity = quantity;
        this.percen = percen;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPercen() {
        return percen;
    }

    public void setPercen(double percen) {
        this.percen = percen;
    }

    @Override
    public String toString() {
        return "Rating{" + "rating=" + rating + ", quantity=" + quantity + ", percen=" + percen + '}';
    }

   
    
    

    

    
    
}
