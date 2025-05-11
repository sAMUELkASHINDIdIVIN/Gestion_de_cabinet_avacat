package Gestion.model;

public class Utilisateur {
    private String nom;
    private String motDePasse;
    private String type;
    private String prenom;
    private String adresse;
    private String numero;

    // Constructeur
    public Utilisateur(String nom, String motDePasse, String type, String prenom, String adresse, String numero) {
        this.nom = nom;
        this.motDePasse = motDePasse;
        this.type = type;
        this.prenom = prenom;
        this.adresse = adresse;
        this.numero = numero;
    }

    // Getters et Setters
    public String getNom() { return nom; }
    public void setNom(String nom) { this.nom = nom; }
    
    public String getMotDePasse() { return motDePasse; }
    public void setMotDePasse(String motDePasse) { this.motDePasse = motDePasse; }
    
    public String getType() { return type; }
    public void setType(String type) { this.type = type; }
    
    public String getPrenom() { return prenom; }
    public void setPrenom(String prenom) { this.prenom = prenom; }
    
    public String getAdresse() { return adresse; }
    public void setAdresse(String adresse) { this.adresse = adresse; }
    
    public String getNumero() { return numero; }
    public void setNumero(String numero) { this.numero = numero; }
}