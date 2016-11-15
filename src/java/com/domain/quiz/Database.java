/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.domain.quiz;

import java.util.ArrayList;

/**
 *
 * @author Vilete
 */
public class Database {
     private static ArrayList<User> users = new ArrayList<>();
    
    public static ArrayList<User> getUsers(){
        return users;
    }  
}
