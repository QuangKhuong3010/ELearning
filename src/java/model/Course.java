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
    private int managed_by;
    private String managed_name;
    private int assign_by;
    private String assign_name;
    private String name;
    private double price;
    private int level_id;
    private String level_name;
    private int category_id;
    private String category_name;
    private String avatar;
    private String description;
    private String created_date;
    private double rating;
    private int ratingNear;
    private int numberRating;
    private int studentOnCourse;
    private String assign_avatar;
    private double process;
    private int numberOfLesson;
    private int isActive;
//    private int rating;
    private int count;

    public Course() {
    }

    public Course(int id, int managed_by, int assign_by, String name, double price, int level_id, int category_id, String avatar, String description) {
        this.id = id;
        this.managed_by = managed_by;
        this.assign_by = assign_by;
        this.name = name;
        this.price = price;
        this.level_id = level_id;
        this.category_id = category_id;
        this.avatar = avatar;
        this.description = description;
        rating = 0;
        count = 0;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public Course(int id, int managed_by, int assign_by, String name, double price, int level_id, int category_id, String avatar, String description, String created_date, int isActive) {
        this.id = id;
        this.managed_by = managed_by;
        this.assign_by = assign_by;
        this.name = name;
        this.price = price;
        this.level_id = level_id;
        this.category_id = category_id;
        this.avatar = avatar;
        this.description = description;
        this.created_date = created_date;
        this.isActive = isActive;
    }

    public int getIsActive() {
        return isActive;
    }

    public void setIsActive(int isActive) {
        this.isActive = isActive;
    }

    public int getNumberOfLesson() {
        return numberOfLesson;
    }

    public void setNumberOfLesson(int numberOfLesson) {
        this.numberOfLesson = numberOfLesson;
    }

    public double getProcess() {
        return process;
    }

    public void setProcess(double process) {
        this.process = process;
    }

    public String getAssign_avatar() {
        return assign_avatar;
    }

    public void setAssign_avatar(String assign_avatar) {
        this.assign_avatar = assign_avatar;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getManaged_by() {
        return managed_by;
    }

    public void setManaged_by(int managed_by) {
        this.managed_by = managed_by;
    }

    public String getManaged_name() {
        return managed_name;
    }

    public void setManaged_name(String managed_name) {
        this.managed_name = managed_name;
    }

    public int getAssign_by() {
        return assign_by;
    }

    public void setAssign_by(int assign_by) {
        this.assign_by = assign_by;
    }

    public String getAssign_name() {
        return assign_name;
    }

    public void setAssign_name(String assign_name) {
        this.assign_name = assign_name;
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

    public String getLevel_name() {
        return level_name;
    }

    public void setLevel_name(String level_name) {
        this.level_name = level_name;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
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

    public String getCreated_date() {
        return created_date;
    }

    public void setCreated_date(String created_date) {
        this.created_date = created_date;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public int getRatingNear() {
        return ratingNear;
    }

    public void setRatingNear(int ratingNear) {
        this.ratingNear = ratingNear;
    }

    public int getNumberRating() {
        return numberRating;
    }

    public void setNumberRating(int numberRating) {
        this.numberRating = numberRating;
    }

    public int getStudentOnCourse() {
        return studentOnCourse;
    }

    public void setStudentOnCourse(int studentOnCourse) {
        this.studentOnCourse = studentOnCourse;
    }

}
