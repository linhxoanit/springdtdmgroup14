/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DucLinh
 */
public class connect {
    public static Connection getConnection(){
		Connection conn = null;
		try
		{
			// em dung mysql tren xampp
			Class.forName("com.mysql.jdbc.Driver");
			// connect database webqlsk từ mysql trên xampp
			conn = DriverManager.getConnection("jdbc:mysql://localhost/webspringdtdm?useUnicode=true&characterEncoding=utf8","root","");
		}
		catch(Exception e)
		{
                    Logger.getLogger(connect.class.getName()).log(Level.SEVERE, null, e);
		}
                
		return conn;
	}
	public static void main(String[] args) {
        System.out.println(getConnection());
    }
}
