/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Quangkhuong3010
 */
public class Purchased {
    private int id;
    private int user_id;
    private int course_id;
    private String purchased_date;
    private String description;
    private String Code;

    public Purchased() {
    }

    public Purchased(int id, int user_id, int course_id, String purchased_date, String description, String Code) {
        this.id = id;
        this.user_id = user_id;
        this.course_id = course_id;
        this.purchased_date = purchased_date;
        this.description = description;
        this.Code = Code;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    public String getPurchased_date() {
        return purchased_date;
    }

    public void setPurchased_date(String purchased_date) {
        this.purchased_date = purchased_date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCode() {
        return Code;
    }

    public void setCode(String Code) {
        this.Code = Code;
    }
    
    
}
