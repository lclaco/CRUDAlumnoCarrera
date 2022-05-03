/**
 * 
 */
package modelo;

/**
 * @author Infoseg
 *
 */
public class Carrera {
	private int id;
	private String nombre;
	/**
	 * 
	 */
	public Carrera() {
	}
	/**
	 * @param nombre
	 */
	public Carrera(String nombre) {
		this.nombre = nombre;
	}
	/**
	 * @param id
	 * @param nombre
	 */
	public Carrera(int id, String nombre) {
		this.id = id;
		this.nombre = nombre;
	}
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}
	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
		
}
