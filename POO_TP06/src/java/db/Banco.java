package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Jonatas Lopes
 */
public class Banco {
    private int id;
    private String name;
    private int punctuation;

    public static ArrayList<Banco> getList()throws Exception{
        ArrayList<Banco> list = new ArrayList<>();
        Connection c = null; Statement s = null; ResultSet rs = null;
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String url = "jdbc:derby://localhost:1527/db_tp06";
            c = DriverManager.getConnection(url, "root", "root");
            s = c.createStatement();
            rs = s.executeQuery("SELECT * FROM jogador");
            while(rs.next()){
                list.add(new Banco(rs.getInt("id"), rs.getString("name")
                          , rs.getInt("punctuation")));
            }
        }catch(Exception ex){
            try{rs.close();}catch(Exception ex2){}
            try{s.close();}catch(Exception ex2){}
            try{c.close();}catch(Exception ex2){} throw ex;
        }
        return list;
    }
    
    public void insert()throws Exception{
        String SQL = "INSERT INTO db_tp06.jogador(cd_jogador, \"nm_jogador\", punctuation)"
                + " VALUES (?, ?, ?)";
        Connection c = null;
        PreparedStatement s = null;
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String url = "jdbc:derby://localhost:1527/teste";
            c = DriverManager.getConnection(url, "root", "root");
            s = c.prepareStatement(SQL);
            s.setInt(1, this.id);
            s.setString(2, this.name);
            s.setInt(3, this.punctuation);
            s.execute();
        }catch(Exception ex){
            try{s.close();}catch(Exception ex2){}
            try{c.close();}catch(Exception ex2){}
            throw ex;
        }
    }

    public void update()throws Exception{
        String SQL = "UPDATE db-tp06.jogador "
                + "SET punctuation=? WHERE cd-jogador=?";
        Connection c = null;
        PreparedStatement s = null;
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String url = "jdbc:derby://localhost:1527/teste";
            c = DriverManager.getConnection(url, "root", "root");
            s = c.prepareStatement(SQL);
            s.setString(1, this.name);
            s.setInt(2, this.punctuation);
            s.setInt(3, this.id);
            s.execute();
        }catch(Exception ex){
            try{s.close();}catch(Exception ex2){}
            try{c.close();}catch(Exception ex2){}
            throw ex;
        }
    }
    
    public Banco(int id, String name, int pontuation) {
        this.id = id;
        this.name = name;
        this.punctuation = pontuation;
    }   
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPontuation() {
        return punctuation;
    }

    public void setPontuation(int pontuation) {
        this.punctuation = pontuation;
    }
    
    
    
    
}
