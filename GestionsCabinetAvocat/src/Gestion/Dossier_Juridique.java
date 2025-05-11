
package Gestion;


public class Dossier_Juridique {
    private int idDossier;
    private String nomClient;
    private String natureProbleme;
    private String dateOuverture;
    private String dateCloture;
    private String statut;
    private String avocatResponsable;

    public Dossier_Juridique (int  idDossier, String nomClient, String natureProbleme, String dateOuverture, String dateCloture, String statut, String avocatResponsable) {
        this.idDossier = idDossier;
        this.nomClient = nomClient;
        this.natureProbleme = natureProbleme;
        this.dateOuverture = dateOuverture;
        this.dateCloture = dateCloture;
        this.statut = statut;
        this.avocatResponsable = avocatResponsable;
    }
        public int getIdDossier() {
        return idDossier;
    }

    public void setIdDossier(int idDossier) {
        this.idDossier = idDossier;
    }

    public String getNomClient() {
        return nomClient;
    }

    public void setNomClient(String nomClient) {
        this.nomClient = nomClient;
    }

    public String getNatureProbleme() {
        return natureProbleme;
    }

    public void setNatureProbleme(String natureProbleme) {
        this.natureProbleme = natureProbleme;
    }

    public String getDateOuverture() {
        return dateOuverture;
    }
    
    public void setDateOuverture(String dateOuverture) {
        this.dateOuverture = dateOuverture;
    }

    public String getDateCloture() {
        return dateCloture;
    }

    public void setDateCloture(String dateCloture) {
        this.dateCloture = dateCloture;
    }

    public String getStatut() {
        return statut;
    }

    public void setStatut(String statut) {
        this.statut = statut;
    }

    public String getAvocatResponsable() {
        return avocatResponsable;
    }

    public void setAvocatResponsable(String avocatResponsable) {
        this.avocatResponsable = avocatResponsable;
    }

      @Override
    public String toString() {
        return "DossierJuridique{" +
                "idDossier=" + idDossier +
                ", nomClient='" + nomClient + '\'' +
                ", natureProbleme='" + natureProbleme + '\'' +
                ", dateOuverture='" + dateOuverture + '\'' +
                ", dateCloture='" + dateCloture + '\'' +
                ", statut='" + statut + '\'' +
                ", avocatResponsable='" + avocatResponsable + '\'' +
                '}';
    }

}
