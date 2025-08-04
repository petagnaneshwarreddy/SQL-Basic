import java.sql.*;
public class Crud {
    public static void main(String[] args) {
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mec", "root", "Peta@00");
            if (con != null) {
                System.out.println("Connected Successfully");
                con.close();
            } else {
                System.out.println("Failed to connect");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
