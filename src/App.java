import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class App {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mec"; 
        String user = "root"; 
        String password = "Peta@00"; 
        try {
            Connection c = DriverManager.getConnection(url, user, password);
            System.out.println("Connected Sucessfull");
            c.close();
        } catch (SQLException e) {
            System.out.println("Database connection failed.");
            e.printStackTrace();
        }
    }
}
