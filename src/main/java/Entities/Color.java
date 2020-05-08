package Entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name="color")

public class Color {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="co_id")
	private int id;
	@Column(name="co_name")
	private String name;
	
	
	
	@ManyToMany(fetch=FetchType.EAGER, cascade={CascadeType.DETACH, 
			CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	@JoinTable(
			name="pro_color",
			joinColumns=@JoinColumn(name="p_id"),
			inverseJoinColumns= @JoinColumn(name="co_id")
			)
	private List<Product>  productcos;
	public List<Product> getProductcos() {
		return productcos;
	}
	public void setProducts(List<Product> productcos) {
		this.productcos = productcos;
	}
	public Color() {}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
