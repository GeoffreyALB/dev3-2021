/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection;

/**
 *
 * @author neveR
 */
public class AccessBd {

    // déclaration variable
    private static final String DRIVER_NAME = "com.mysql.jdbc.Driver";
    private static final String DB_NAME = "debut_bis";
    private static final String URL = "jdbc:mysql://localhost/" + DB_NAME;
    private static final String USER = "root";
    private static final String PASSWORD = "";

    //chargement pilote
    static {
        try {
            Class.forName(DRIVER_NAME).getDeclaredConstructor().newInstance();

        } catch (Exception e) {
            System.out.println("err chargement du pilote " + e.getMessage());

        }
    }

    // methode static connexion DB
    public static Connection getConnexion() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
