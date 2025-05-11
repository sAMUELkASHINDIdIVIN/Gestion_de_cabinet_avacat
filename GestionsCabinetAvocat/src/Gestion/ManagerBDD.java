
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ManagerBDD {
    private Connection con = null;
    private static final String url = "jdbc:mysql://localhost:3306/gestion_cabinet_avocat";
    private static final String user = "root";
    private static final String password ="";
    public Connection testconn = null;
    
    public ManagerBDD()
    {
        try
        {
            con = DriverManager.getConnection(url, user, password);
            System.out.println("Connection to DB is abblished");
        }
        catch (SQLException ex)
        {System.err.println(ex.getMessage());}
        
    }
    public Connection getCon()
    {return con;}
    
}

