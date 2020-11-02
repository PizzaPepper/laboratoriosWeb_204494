/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.ArrayList;
import objetosNegocio.Material;

/**
 *
 * @author eliu
 */
public class DAOMateriales implements IDAO<Material,String>{
    private static ArrayList<Material> listaMateriales=new ArrayList<>();
    public DAOMateriales() {
    }

    @Override
    public void agregar(Material t) {
        this.listaMateriales.add(t);
    }

    @Override
    public void actualizar(Material t) {
        int index=this.listaMateriales.indexOf(t);
        this.listaMateriales.set(index, t);
        
    }

    @Override
    public void eliminar(Material t) {
       this.listaMateriales.remove(t);
    }

    @Override
    public ArrayList<Material> consultarTodos() {
        return this.listaMateriales;
    }

    @Override
    public Material consultar(String id) {
        for (Material Material : listaMateriales) {
            if(id.equalsIgnoreCase(Material.getClave()))
                return Material;
        }
        return null;
    }
    
    
    
}
