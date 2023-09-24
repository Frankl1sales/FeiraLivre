/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import View.MenuView;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Alimento;

/**
 *
 * @author abaca
 */
public class AlimentoDAO {
    private final Connection connection;

    public AlimentoDAO(Connection connection) {
        this.connection = connection;
    }
    public void insert(Alimento alimento) throws SQLException{
            String sql = "insert into Alimento (id_alimento,alinome,valor_unidade) VALUES('"+alimento.getIda()+"','"+alimento.getNome()+"','"+alimento.getValor_unidade()+"')"; 
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.execute();
      
    }

    
    
}
