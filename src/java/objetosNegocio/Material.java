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

    public Material(int material, String clave) {
        super(clave);
        this.cantidad = material;
    }

    public Material(int material, String clave, String nombre) {
        super(clave, nombre);
        this.cantidad = material;
    }

    
    public Material(int material, String clave, String nombre, String unidad) {
        super(clave, nombre, unidad);
        this.cantidad = material;
    }

    public int getMaterial() {
        return cantidad;
    }

    public void setMaterial(int material) {
        this.cantidad = material;
    }

    @Override
    public String toString() {
        return "Cantidad: "+this.cantidad;
    }
    
    
    
}
