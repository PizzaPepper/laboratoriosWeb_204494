/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.ArrayList;
import objetosNegocio.Producto;
import sun.security.jca.GetInstance;
/**
 *
 * @author eliu
 */
public class DAOProductos implements IDAO<Producto,String>{
    private static ArrayList<Producto> listaProductos=new ArrayList<>();
    public DAOProductos() {
    }

    
    @Override
    public void agregar(Producto t) {
        listaProductos.add(t);
    }

    @Override
    public void actualizar(Producto t) {
        int index=listaProductos.indexOf(t);
        listaProductos.set(index, t);
    }

    @Override
    public void eliminar(Producto t) {
       listaProductos.remove(t);
    }

    @Override
    public ArrayList<Producto> consultarTodos() {
        return listaProductos;
    }

    @Override
    public Producto consultar(String id) {
        for (Producto producto : listaProductos) {
            if(id.equals(producto.getClave()))
                return producto;
        }
        return null;
    }

   
    

    
    
    
    
    
}
