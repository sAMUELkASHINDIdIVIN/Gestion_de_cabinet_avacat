
package Gestion;


public class utilisateur {
    private int id;
    private String nom_utilisateur;
    private String mot_de_passe;
    private String type;
    private String nom;
    private String prenom;
    private String adresse;
    private String grade_type;
    private String numero;
    
    public utilisateur(int id, String nom_utilisateur, String mot_de_passe, String type, String nom, String prenom, String adresse, String grade_type, String numero){
        this.id = id;
        this.nom_utilisateur = nom_utilisateur;
        this.mot_de_passe = mot_de_passe;
        this.type = type;
        this.nom = nom;
        this.prenom = prenom;
        this.adresse = adresse;
        this.grade_type = grade_type;
        this.numero = numero;
    }

    public utilisateur(String nom_utilisateur, String type, String mot_de_passe) {
        this.nom_utilisateur = nom;
        this.type = type;
        this.mot_de_passe = mot_de_passe;
    }

    public int getid() {return id;}
    public String getnom_utilisateur() {return nom_utilisateur;}
    public String getmot_de_passe() {return mot_de_passe;}
    public String gettype() {return type;}
    public String getnom() {return nom;}
    public String getprenom() {return prenom;}
    public String getadresse() {return adresse;}
    public String getgrade_type() {return grade_type;}
    public String getnumero() {return numero;}




    public void setnom_utilisateur(String nom_utilisateur) {this.nom_utilisateur = nom;}
    public void settype(String type) {this.type = type;}
    public void setmot_de_passe(String mot_de_passe) {this.mot_de_passe = mot_de_passe;}
    
   @Override 
   public String toString() {
       return id + "\n" + nom_utilisateur + "\n" + mot_de_passe + "\n" + type + "\n" + nom + "\n" + prenom + "\n" + adresse + grade_type + "\n" + numero + "\n";
     }
    }
    

