/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author abaca
 */
public class VendaAlimento  {
    private Usuario idu;
    private Alimento ida;
    private float valorunidade;

    public VendaAlimento(Usuario id, Alimento ida, float valorunidade) {
        this.idu = id;
        this.ida = ida;
        this.valorunidade = valorunidade;
    }

    

    public float getValorunidade() {
        return valorunidade;
    }

    public void setValorunidade(float valorunidade) {
        this.valorunidade = valorunidade;
    }
    
}
