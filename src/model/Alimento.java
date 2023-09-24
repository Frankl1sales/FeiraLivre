/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author abaca
 */
public class Alimento {
    private String ida;
    private String nome;
    private String valor_unidade;
    private String quantidade;

    public Alimento(String ida, String nome, String valor_unidade) {
        this.ida = ida;
        this.nome = nome;
        this.valor_unidade = valor_unidade;
    }

    public Alimento(String quantidade) {
        this.quantidade = quantidade;
    }

    public String getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(String quantidade) {
        this.quantidade = quantidade;
    }
    
    
    public String getIda() {
        return ida;
    }

    public void setIda(String ida) {
        this.ida = ida;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getValor_unidade() {
        return valor_unidade;
    }

    public void setValor_unidade(String valor_unidade) {
        this.valor_unidade = valor_unidade;
    }
    
   
    
}
