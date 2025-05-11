
package Gestion;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class Rendez_vous {
     private int id;
    private String nomClient;
    private String numero;
    private String probleme;
    private double prix;
    private String etat;
    private String date;
    private String heure;
    private int montantFid;
    private final int avocat_id;

    public Rendez_vous(int id, String nomClient, String numero, String probleme, double prix, String etat, String date, String heure, int montantFid) {
        this.id = id;
        this.nomClient = nomClient;
        this.numero = numero;
        this.probleme = probleme;
        this.prix = prix;
        this.etat = etat;
        this.date = date;
        this.heure = heure;
        this.avocat_id = montantFid;
    }
    
        public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomClient() {
        return nomClient;
    }

    public void setNomClient(String nomClient) {
        this.nomClient = nomClient;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getProbleme() {
        return probleme;
    }

    public void setProbleme(String probleme) {
        this.probleme = probleme;
    }
     
       public void setPrix(double prix) {
        this.prix = prix;
    }

    public String getEtat() {
        return etat;
    }

    public void setEtat(String etat) {
        this.etat = etat;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getHeure() {
        return heure;
    }

    public void setHeure(String heure) {
        this.heure = heure;
    }

    public int getMontantFid() {
        return montantFid;
    }
    
      public void setMontantFid(int montantFid) {
        this.montantFid = montantFid;
    }
    
}
