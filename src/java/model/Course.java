/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Quangkhuong3010
 */


public class Course {
    private int id; 
    private String name; 
    private float price; 
    private int discount;
    private String level;
    private String time_duration; 
    private int category_id; 
    private String created_date; 
    private int created_by_id;
    private int constructer_id;
    private String avatar;
    private String description;

    public Course() {
    }

    public Course(int id, String name, float price, int discount, String level, String time_duration, int category_id, String created_date, int created_by_id, int constructer_id, String avatar, String description) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.discount = discount;
        this.level = level;
        this.time_duration = time_duration;
        this.category_id = category_id;
        this.created_date = created_date;
        this.created_by_id = created_by_id;
        this.constructer_id = constructer_id;
        this.avatar = avatar;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getTime_duration() {
        return time_duration;
    }

    public void setTime_duration(String time_duration) {
        this.time_duration = time_duration;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getCreated_date() {
        return created_date;
    }

    public void setCreated_date(String created_date) {
        this.created_date = created_date;
    }

    public int getCreate_by_id() {
        return created_by_id;
    }

    public void setCreate_by_id(int created_by_id) {
        this.created_by_id = created_by_id;
    }

    public int getConstructer_id() {
        return constructer_id;
    }

    public void setConstructer_id(int constructer_id) {
        this.constructer_id = constructer_id;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
    
}
