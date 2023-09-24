/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import View.MenuView;
import dao.AlimentoDAO;
import dao.Conexao;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import model.Alimento;
import java.sql.Connection;

/**
 *
 * @author abaca
 */
public class MenuController {
     private MenuView view;

    public MenuController(MenuView view) {
        this.view = view;
    }
    public void salvaAlimento(){
        
        
        String nome = view.getjTextFieldNomeA().getText();
        String ida = view.getjTextFieldIda().getText();
        String preco = view.getjTextFieldPreço().getText();
        
        Alimento alimento1 = new Alimento(ida,nome,preco);
        
        try {
            Connection conexao = new Conexao().getConnection();
            
            AlimentoDAO alimentoDao = new AlimentoDAO(conexao); 
            alimentoDao.insert(alimento1);
            
            JOptionPane.showMessageDialog(null, "Alimento salvo com sucesso!");
            
        } catch (SQLException ex) {
            Logger.getLogger(MenuView.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    public void limparCamposTexto(){
        view.getjTextFieldIda().setText("");
        view.getjTextFieldNomeA().setText("");
        view.getjTextFieldPreço().setText("");
        }
}
