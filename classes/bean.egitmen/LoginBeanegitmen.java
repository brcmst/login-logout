package bean.egitmen;

import java.io.Serializable;

public class LoginBeanegitmen implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private String egitmenNo;
	private String egitmenSifre;
	
	public String getegitmenNo() {
		return egitmenNo;
	}
	
	public void setegitmenNo(String egitmenNo) {
		this.egitmenNo = egitmenNo;
	}
	
	public String getegitmenSifre() {
		return egitmenSifre;
	}
	
	public void setegitmenSifre(String egitmenSifre) {
		this.egitmenSifre = egitmenSifre;
	}


}
