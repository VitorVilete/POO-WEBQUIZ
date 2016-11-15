package com.domain.quiz;

import java.util.ArrayList;
import java.util.Collections;

public class Quiz {
    private int testsCount = 0;
    private double testsGradeSum = 0.0;
    private double lastGrade = 0.0;
    private static ArrayList<Question> test;
    
    public static ArrayList<Question> getTest(){
        if(test == null){
            test = new ArrayList<>();
            Question q1 = new Question
            ("Em que cidade fica a fatec-pg?", "Praia Grande", new String[]{"Praia Grande","Santos","Guarujá"});
            test.add(q1);
            Question q2 = new Question
            ("Quem da aula de POO?", "Pupo", new String[]{"Renata","Fabio","Pupo"});
            test.add(q2);
            Question q3 = new Question
            ("Qual o horário para o intervalo?", "20:40", new String[]{"20:40","21:00","20:50"});
            test.add(q3);
            Question q4 = new Question
            ("Quem da aula de Engª Software III?", "Renata", new String[]{"Salgado","Renata","Não tem essa aula"});
            test.add(q4);
            Question q5 = new Question
            ("Que horas começa o periodo noturno?", "19:00", new String[]{"19:10","19:00","19:30"});
            test.add(q5);
            Question q6 = new Question
            ("Quem da aula de LP4?", "Cândido", new String[]{"Cândido","Fabio","Priscila"});
            test.add(q6);
            Question q7 = new Question
            ("Qual o do bar/lanchonete que bomba do lado da fatec?", "Malu", new String[]{"Não tem","Novinho","Malu"});
            test.add(q7);
            Question q8 = new Question
            ("Quem da aula de SO II?", "Fabio", new String[]{"Fabio","Wagner","Não tem essa aula"});
            test.add(q8);
            Question q9 = new Question
            ("Qual horas termina o periodo noturno?", "22:30", new String[]{"22:40","22:20","22:30"});
            test.add(q9);
            Question q10 = new Question
            ("Quantos de curso é ADS?", "3 anos", new String[]{"1 e meio","2 anos","3 anos"});
            test.add(q10);
        }
        Collections.shuffle(test);
        return test;
    }
    
    public double validateTest(String userAnswers[]){
        int count = 0;
        for(int i=0; i<test.size(); i++){
            if(test.get(i).getAnswer().equals(userAnswers[i])){
                count++;
            }
        }
        double grade = (double)count / (double)test.size();
        lastGrade = grade;
        testsGradeSum += grade;
        testsCount++;
        return grade;
    }
    public double getLastGrade(){
        return lastGrade;
    }
    public double getGradeAverage(){
        return testsGradeSum / (double)testsCount;
    }
}