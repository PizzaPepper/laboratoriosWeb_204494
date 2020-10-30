/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.ArrayList;

/**
 *
 * @author eliu
 */
public interface IDAO<T,V> {
    public void agregar(T t);
    public void actualizar(T t);
    public void eliminar(T t);
    public ArrayList<T> consultarTodos ();
    public T consultar(String id);
    
}
