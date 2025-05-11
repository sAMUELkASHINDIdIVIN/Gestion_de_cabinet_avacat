package Gestion.connection;
import java.sql.DriverManager;
import java.sql.Connection ;
import java.sql.SQLException ;

public class ConnectionBDD{
    private static final String URL = "jdbc:mysql://localhost:3306/gestion_cabinet_avocat";
    private static final String USER = "root";
    private static final String PSWD = "";
    
    public static Connection connect(){
        Connection conn = null;
        try{
            conn = DriverManager.getConnection(URL , USER, PSWD) ;
            System.out.println("Connection reussi");
        }catch(SQLException e){
            System.out.println("Erreur de connection" + e.getMessage());
        }
        return conn ;
    }
}

