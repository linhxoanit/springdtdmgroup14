/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connection.connect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.newsModel;

/**
 *
 * @author DucLinh
 */
public class editDao {
    // thêm News mới vào dữ liệu bằng quyền user
        public boolean insert(newsModel news)
        {
            Connection connection = connect.getConnection();
            String sql = "INSERT INTO news VALUES(?)";
            try
            {
                PreparedStatement ps = connection.prepareCall(sql);
                ps.setString(1, news.getNoidung());
                ps.executeUpdate();
                return true;
            }catch(SQLException e){
                Logger.getLogger(editDao.class.getName()).log(Level.SEVERE, null, e);
            }
            finally{ 
    if(connection!=null)
    try {
        connection.close();
    } catch (SQLException ex) {
        Logger.getLogger(editDao.class.getName()).log(Level.SEVERE, null, ex);
    }
   }
            return false;
        }
        
        public static void main(String[] args) throws SQLException
	{
            editDao dao = new editDao();
            newsModel edit = new newsModel("fucalkdjflak");
            dao.insert(edit);
        }
}
