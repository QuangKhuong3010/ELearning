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

    public String getBackgroup() {
        return backgroup;
    }

    public void setBackgroup(String backgroup) {
        this.backgroup = backgroup;
    }
    private String pass;
    private String registration_date;
    private String first_name;
    private String last_name;
    private String phone_number;
    private String avatar;
    private String backgroup;
    private int quantityCourseLearning;
    private int appoint_by;
    private String appoint_name;
    private String status;
    private String role_name;

    public String getRole_name() {
        return role_name;
    }

    public void setRole_name(String role_name) {
        this.role_name = role_name;
    }

    public int getQuantityCourseLearning() {
        return quantityCourseLearning;
    }

    public void setQuantityCourseLearning(int quantityCourseLearning) {
        this.quantityCourseLearning = quantityCourseLearning;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
    private String description;
    private int created_by_Google;
    private String organization_name;

    public User(int user_id, String email, int appoint_by) {
        this.user_id = user_id;
        this.email = email;
        this.appoint_by = appoint_by;
        this.status = "Processing";
    }

    public User(int user_id, int role_id, String email, String registration_date, String first_name, String last_name, String description) {
        this.user_id = user_id;
        this.role_id = role_id;
        this.email = email;
        this.registration_date = registration_date;
        this.first_name = first_name;
        this.last_name = last_name;
        this.description = description;
    }

    public int getAppoint_by() {
        return appoint_by;
    }

    public void setAppoint_by(int appoint_by) {
        this.appoint_by = appoint_by;
    }

    public String getAppoint_name() {
        return appoint_name;
    }

    public void setAppoint_name(String appoint_name) {
        this.appoint_name = appoint_name;
    }

    public String getOrganization_name() {
        return organization_name;
    }

    public void setOrganization_name(String organization_name) {
        this.organization_name = organization_name;
    }

    public User() {

    }

    public User(int user_id, int role_id, String email, String pass, int created_by_Google) {
        this.user_id = user_id;
        this.role_id = role_id;
        this.email = email;
        this.pass = pass;
        this.created_by_Google = created_by_Google;
    }

    public User(int user_id, int role_id, String email, int created_by_Google) {
        this.user_id = user_id;
        this.role_id = role_id;
        this.email = email;
        this.created_by_Google = created_by_Google;
    }

    public User(int user_id, int role_id, String email, String pass, String registration_date, String first_name, String last_name, String phone_number, String avatar, String backgroup, String description, int created_by_Google) {
        this.user_id = user_id;
        this.role_id = role_id;
        this.email = email;
        this.pass = pass;
        this.registration_date = registration_date;
        this.first_name = first_name;
        this.last_name = last_name;
        this.phone_number = phone_number;
        this.avatar = avatar;
        this.backgroup = backgroup;
        this.description = description;
        this.created_by_Google = created_by_Google;
    }

    public int getCreated_by_Google() {
        return created_by_Google;
    }

    public void setCreated_by_Google(int created_by_Google) {
        this.created_by_Google = created_by_Google;
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

}
