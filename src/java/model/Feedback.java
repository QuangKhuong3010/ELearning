/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Quangkhuong3010
 */
public class Feedback {
    private int id;
    private int rating;
    private int course_id;
    private int created_by;
    private String created_date;
    private String title;

    public String getCreated_by_name() {
        return created_by_name;
    }

    public void setCreated_by_name(String created_by_name) {
        this.created_by_name = created_by_name;
    }
    private String description;
    private String created_by_name;
    private String created_by_avatar;

    public Feedback() {
    }

    public Feedback(int id, int rating, int course_id, int created_by, String created_date, String title, String description, String created_by_name, String created_by_avatar) {
        this.id = id;
        this.rating = rating;
        this.course_id = course_id;
        this.created_by = created_by;
        this.created_date = created_date;
        this.title = title;
        this.description = description;
        this.created_by_name = created_by_name;
        this.created_by_avatar = created_by_avatar;
    }

    public String getCreated_by_avatar() {
        return created_by_avatar;
    }

    public void setCreated_by_avatar(String created_by_avatar) {
        this.created_by_avatar = created_by_avatar;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    public int getCreated_by() {
        return created_by;
    }

    public void setCreated_by(int created_by) {
        this.created_by = created_by;
    }

    public String getCreated_date() {
        return created_date.substring(0,19);
    }

    public void setCreated_date(String created_date) {
        this.created_date = created_date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    
    
    
}
