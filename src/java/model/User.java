/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class User {

    private int user_id;
    private int role_id;
    private String email;
    private String pass;
    private String registration_date;
    private String first_name;
    private String last_name;
    private String phone_number;
    private String avatar;

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
    private String description;
    private int isDeleted;
    private String organization_name;

    public String getOrganization_name() {
        return organization_name;
    }

    public void setOrganization_name(String organization_name) {
        this.organization_name = organization_name;
    }

    public User() {
    }

    public User(int user_id, int role_id, String email, String pass, int isDeleted) {
        this.user_id = user_id;
        this.role_id = role_id;
        this.email = email;
        this.pass = pass;
        this.isDeleted = isDeleted;
    }

    public User(int user_id, int role_id, String email, String pass, String registration_date, String first_name, String last_name, String phone_number, String avatar, String description, int isDeleted) {
        this.user_id = user_id;
        this.role_id = role_id;
        this.email = email;
        this.pass = pass;
        this.registration_date = registration_date;
        this.first_name = first_name;
        this.last_name = last_name;
        this.phone_number = phone_number;
        this.avatar = avatar;
        this.description = description;
        this.isDeleted = isDeleted;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getRegistration_date() {
        return registration_date;
    }

    public void setRegistration_date(String registration_date) {
        this.registration_date = registration_date;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(int isDeleted) {
        this.isDeleted = isDeleted;
    }

    
}
