package veriler;

public class sinav {
    private String isim;
    private String soru;
    private String cevap;
    public sinav(String isim,String soru,String cevap){
        this.isim = isim;
        this.soru = soru;
        this.cevap = cevap;
    }

    public String getIsim() {
        return isim;
    }

    public void setIsim(String isim) {
        this.isim = isim;
    }

    public String getSoru() {
        return soru;
    }

    public void setSoru(String soru) {
        this.soru = soru;
    }

    public String getCevap() {
        return cevap;
    }

    public void setCevap(String cevap) {
        this.cevap = cevap;
    }
    
}
