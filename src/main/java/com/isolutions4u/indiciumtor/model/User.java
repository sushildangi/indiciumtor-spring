package com.isolutions4u.indiciumtor.model;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "user_detail")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    @Column(name = "first_name")
    @NotBlank(message = "First Name is required")
    @Size(min = 4, message = "Minimum Length is Four Character")
    @Pattern(regexp = "^[A-Za-z]+$", message = "Use letters only please")
    private String firstName;

    @Column(name = "last_name")
    @NotBlank(message = "Please Enter Last Name!")
    private String lastName;

    @Column(name = "phone")
    @NotBlank(message = "Please Enter Phone Number!")
    private String phone;

    @Column(name = "email")
    @NotBlank(message = "Please Enter Email Id!")
    private String email;

    @Column(name = "password")
    @NotBlank(message = "Please Enter Password for Login!")
    private String password;

    @Transient
    private String confirmPassword;

    @Column(name = "role")
    private String role;

    @Column(name = "enabled")
    private boolean enabled = true;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enable) {
        this.enabled = enable;
    }
}