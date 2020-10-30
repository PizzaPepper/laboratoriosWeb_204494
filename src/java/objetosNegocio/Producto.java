/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objetosNegocio;

import java.util.Objects;

/**
 *
 * @author eliu
 */
public class Producto {
    protected String clave;
    protected String nombre;
    protected String unidad;

    public Producto() {
    }
    
    public Producto(String clave){
        this.clave=clave;
    }
    
    public Producto(String clave, String nombre){
        this.clave=clave;
        this.nombre=nombre;
    }
    
    
    public Producto(String clave, String nombre, String unidad) {
        this.clave = clave;
        this.nombre = nombre;
        this.unidad = unidad;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUnidad() {
        return unidad;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 23 * hash + Objects.hashCode(this.clave);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Producto other = (Producto) obj;
        if (!Objects.equals(this.clave, other.clave)) {
            return false;
        }
        
        return true;
    }

    @Override
    public String toString() {
        return '['+"Clave: "+this.clave+",Nombre: "+this.nombre+",Unidad: "+this.unidad+']';
    }
    
    
    
    
}
