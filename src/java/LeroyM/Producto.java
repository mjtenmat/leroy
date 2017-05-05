/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LeroyM;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author Mario
 */
public class Producto implements Serializable {

    private static final long serialVersionUID = 1L;
    
    int id;
    String nombre;
    String descripcion;
    double precio;
    //Date fechaEntrada;
    
    public Producto(int id, String nombre, String descripcion, double precio) {
      this.id=id;
      this.nombre = nombre;
      this.descripcion = descripcion;
      this.precio = precio;
      //this.fechaEntrada = fechaEntrada;
    }

    @Override
    public String toString() {
        return "Producto{" +"id= "+ id + "nombre=" + nombre + ", descripción=" + descripcion + ", precio=" + precio + '}';
    }
    public int getId(){
        return id;
    }
    public void setId (int id){
        this.id= id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
    /*public Date getFechaEntrada(){
        return fechaEntrada;
    }
    public void setFechaEntrada (Date fechaEntrada){
        this.fechaEntrada= fechaEntrada;
    }*/

  
}

