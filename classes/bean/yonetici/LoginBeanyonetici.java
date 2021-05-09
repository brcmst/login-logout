package bean.yonetici;

import java.io.Serializable;

public class LoginBeanyonetici implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private String yoneticiAd;
	private String yoneticiSifre;
	
	public String getyoneticiAd() {
		return yoneticiAd;
	}
	
	public void setyoneticiAd(String yoneticiAd) {
		this.yoneticiAd = yoneticiAd;
	}
	
	public String getyoneticiSifre() {
		return yoneticiSifre;
	}
	
	public void setyoneticiSifre(String yoneticiSifre) {
		this.yoneticiSifre = yoneticiSifre;
	}


}
