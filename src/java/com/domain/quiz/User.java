/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.domain.quiz;

/**
 *
 * @author Vilete
 */
public class User {
    private String userName;
    private Quiz myQuiz;
    
    public User(String user){
        userName = user; 
        myQuiz = new Quiz();
    }

    public String getUserName() {
        return userName;
    }

    public Quiz getMyQuiz() {
        return myQuiz;
    }
    
}
