/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ttd.controllers;

import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author DELL
 */
public class UserController {
    @GetMapping("/login")
    public String login() {
        return "login";
    }
}
