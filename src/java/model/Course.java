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
    private int instructor_id;
    private int constructor_id;
    private String name;
    private double price;
    private int level_id;
    private String time_duration;
    private int category_id;
    private String category_name;
    private String instructor_name;
    private double rating;
    private int ratingNear;
    private String level;

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public int getRatingNear() {
        return ratingNear;
    }

    public void setRatingNear(int ratingNear) {
        this.ratingNear = ratingNear;
    }
    private int numberRating;

    public int getNumberRating() {
        return numberRating;
    }

    public void setNumberRating(int numberRating) {
        this.numberRating = numberRating;
    }
    private int studentOnCourse;

    public int getStudentOnCourse() {
        return studentOnCourse;
    }

    public void setStudentOnCourse(int studentOnCourse) {
        this.studentOnCourse = studentOnCourse;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public String getConstructer_name() {
        return instructor_name;
    }

    public void setConstructer_name(String instructor_name) {
        this.instructor_name = instructor_name;
    }
    private String created_date;
    private String avatar;
    private String description;
    
    public Course() {
    }

    
    public Course(int id, int instructor_id, int constructor_id, String name, double price, int level_id, String time_duration, int category_id, String created_date, String avatar, String description) {
        this.id = id;
        this.instructor_id = instructor_id;
        this.constructor_id = constructor_id;
        this.name = name;
        this.price = price;
        this.level_id = level_id;
        this.time_duration = time_duration;
        this.category_id = category_id;
        this.created_date = created_date;
        this.avatar = avatar;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getInstructor_id() {
        return instructor_id;
    }

    public void setInstructor_id(int instructor_id) {
        this.instructor_id = instructor_id;
    }

    public int getConstructor_id() {
        return constructor_id;
    }

    public void setConstructor_id(int constructor_id) {
        this.constructor_id = constructor_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getLevel_id() {
        return level_id;
    }

    public void setLevel_id(int level_id) {
        this.level_id = level_id;
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

    public String getInstructor_name() {
        return instructor_name;
    }

    public void setInstructor_name(String instructor_name) {
        this.instructor_name = instructor_name;
    }

    public String getCreated_date() {
        return created_date;
    }

    public void setCreated_date(String created_date) {
        this.created_date = created_date;
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
