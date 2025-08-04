import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
public class Crud {
    public static void main(String[] args) {
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mec", "root", "Peta@00");
            if (con != null) {
                System.out.println("Connected Successfully");
                int Roll_no = 1; 
                String Name = "Peta Gnaneshwar Reddy";
                String Department = "Computer Science";
                int Year = 3;
                String Gender = "Male"; 
                Date Date_info = Date.valueOf("2024-06-10"); 
                String insert = "INSERT INTO STUDENT(Roll_no, Name, Department, Year, Gender, Date_info) VALUES (?, ?, ?, ?, ?, ?)";
                PreparedStatement psInsert = con.prepareStatement(insert);
                psInsert.setInt(1, Roll_no);
                psInsert.setString(2, Name);
                psInsert.setString(3, Department);
                psInsert.setInt(4, Year);
                psInsert.setString(5, Gender);
                psInsert.setDate(6, Date_info); 
                int rows = psInsert.executeUpdate();
                System.out.println("Rows inserted: " + rows);
                psInsert.close();
                con.close();
            } else {
                System.out.println("Failed to connect");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
