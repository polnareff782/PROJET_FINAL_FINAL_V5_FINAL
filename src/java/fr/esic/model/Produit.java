/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.esic.model;

/**
 *
 * @author marye
 */
public class Produit {
    
    private int idproduit;
    private String nomproduit;
    private double prixproduit;
    private Person person;


    public Produit() {
    }

    public Produit(String nomproduit, double prixproduit, Person person) {
        this.nomproduit = nomproduit;
        this.prixproduit = prixproduit;
        this.person = person;
    }

    public int getIdproduit() {
        return idproduit;
    }

    public void setIdproduit(int idproduit) {
        this.idproduit = idproduit;
    }

    public String getNomproduit() {
        return nomproduit;
    }

    public void setNomproduit(String nomproduit) {
        this.nomproduit = nomproduit;
    }

    public double getPrixproduit() {
        return prixproduit;
    }

    public void setPrixproduit(double prixproduit) {
        this.prixproduit = prixproduit;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }
    
  
    
}
