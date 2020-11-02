/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objetosNegocio;

/**
 *
 * @author eliu
 */
public class Material extends Producto{
    private int cantidad;

    public Material() {
    }

    public Material(int material) {
        this.cantidad = material;
    }

    public Material(int cantidad, String clave, String nombre, String unidad) {
        super(clave, nombre, unidad);
        this.cantidad = cantidad;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    @Override
    public String toString() {
        return "Producto: "+this.nombre +", Cantidad: "+this.cantidad;
    }
    
    
    
}
