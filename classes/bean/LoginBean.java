package bean;

import java.io.Serializable;

public class LoginBean implements Serializable{
	

	private static final long serialVersionUID = 1L;
	private String ogrenciNo;
	private String ogrenciSifre;
	
	public String getogrenciNo() {
		return ogrenciNo;
	}
	
	public void setogrenciNo(String ogrenciNo) {
		this.ogrenciNo = ogrenciNo;
	}
	
	public String getogrenciSifre() {
		return ogrenciSifre;
	}
	
	public void setogrenciSifre(String ogrenciSifre) {
		this.ogrenciSifre = ogrenciSifre;
	}

}
