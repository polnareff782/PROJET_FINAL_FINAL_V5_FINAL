/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.esic.dao;

import fr.esic.model.Message;
import fr.esic.model.Person;
import fr.esic.model.Produit;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author marye
 */
public class ProduitDao {
    
    
    
      public static void InsertProduit(String nomproduit,double prixproduit, int id) throws SQLException {
        String sql = "INSERT INTO achat ( nomproduit, prixproduit,person_idperson) VALUES (?,?,?)";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, nomproduit);
        prepare.setDouble(2,prixproduit);
        prepare.setInt(3, id);
        prepare.execute();

    }

    public static List<Produit> AffichelisteProduit(int id) throws SQLException {
        List<Produit> produitachete = new ArrayList<>();
        String sql = "SELECT  idperson,nom,prenom , nomproduit,prixproduit,dateachat FROM achat a ,person p where person_idperson=idperson and idperson=?";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setInt(1, id);
        ResultSet rs = prepare.executeQuery();
        while (rs.next()) {
            Produit pa = new Produit();
            pa.setNomproduit(rs.getString("nomproduit"));
            pa.setPrixproduit(rs.getDouble("prixproduit"));
            pa.setDateachat(rs.getDate("dateachat"));
            
            Person p = new Person();
            p.setId(rs.getInt("idperson"));
            p.setNom(rs.getString("nom"));
            p.setPrenom(rs.getString("prenom"));

            pa.setPerson(p);

            produitachete.add(pa);

        }
        return produitachete;

    }






}
