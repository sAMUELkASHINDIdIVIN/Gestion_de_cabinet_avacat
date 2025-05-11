
package Gestion;


public class Rapport_statistique {
    public class RapportStatistique {
    private int idRapport;
    private String titre;
    private String periode;
    private int nombreClient;
    private int nombreDossier;
    private double revenusGeneres;
    private String dateCreation;

    public RapportStatistique(int idRapport, String titre, String periode, int nombreClient, int nombreDossier, double revenusGeneres, String dateCreation) {
        this.idRapport = idRapport;
        this.titre = titre;
        this.periode = periode;
        this.nombreClient = nombreClient;
        this.nombreDossier = nombreDossier;
        this.revenusGeneres = revenusGeneres;
        this.dateCreation = dateCreation;
    }
        public int getIdRapport() {
        return idRapport;
    }

    public void setIdRapport(int idRapport) {
        this.idRapport = idRapport;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getPeriode() {
        return periode;
    }

    public void setPeriode(String periode) {
        this.periode = periode;
    }

    public int getNombreClient() {
        return nombreClient;
    }
        public void setNombreClient(int nombreClient) {
        this.nombreClient = nombreClient;
    }

    public int getNombreDossier() {
        return nombreDossier;
     }
    public void setNombreDossier(int nombreDossier) {
        this.nombreDossier = nombreDossier;
    }

    public double getRevenusGeneres() {
        return revenusGeneres;
    }

    public void setRevenusGeneres(double revenusGeneres) {
        this.revenusGeneres = revenusGeneres;
    }

    public String getDateCreation() {
        return dateCreation;
    }

    public void setDateCreation(String dateCreation) {
        this.dateCreation = dateCreation;
    }
       @Override
    public String toString() {
        return "RapportStatistique{" +
                "idRapport=" + idRapport +
                ", titre='" + titre + '\'' +
                ", periode='" + periode + '\'' +
                ", nombreClient=" + nombreClient +
                ", nombreDossier=" + nombreDossier +
                ", revenusGeneres=" + revenusGeneres +
                ", dateCreation='" + dateCreation + '\'' +
                '}';
    }
 }
    
}
