package backend;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class DbBook {
    static String DBusername = "eebigwqauxgxqi";
    static String DBpassword = "ced036c5da9b8234bd71b87653a062bd38abe3ad564b0bb3061d8eb44f236c3d";
    static String DBconnectionURL = "jdbc:postgresql://ec2-34-232-252-124.compute-1.amazonaws.com:5432/d5sjinh7nlh1kj";

    public static List<Book> allBook() {
        List<Book> allBook = new ArrayList<>();
        try{
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(DBconnectionURL, DBusername, DBpassword);
            
            if (conn!=null) {
                System.out.println("Connection OK");
            } else {
                System.out.println("Connection Failed");
            }
            String sql = "SELECT * FROM books";
    
            PreparedStatement pstm = conn.prepareStatement(sql);
    
            ResultSet result = pstm.executeQuery();
            
            while(result.next()) {
                Book book = new Book(result.getString("id"), result.getString("title"), result.getInt("price"), result.getString("link_image"), result.getString("author"), result.getString("description"), result.getString("category"));
                allBook.add(0, book);
            }

            conn.close();
            result.close();
            pstm.close();

            return allBook;
    
        } catch (Exception e) {
            e.printStackTrace();
            return allBook;
        }
    }

    public static List<Book> allCategoryBook(String category) {
        List<Book> allBook = new ArrayList<>();
        try{
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(DBconnectionURL, DBusername, DBpassword);
    
            String sql = "SELECT * FROM books WHERE category=(?)";
    
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, category);
    
            ResultSet result = pstm.executeQuery();
            
            while(result.next()) {
                Book book = new Book(result.getString("id"), result.getString("title"), result.getInt("price"), result.getString("link_image"), result.getString("author"), result.getString("description"), result.getString("category"));
                allBook.add(0, book);
            }

            conn.close();
            result.close();
            pstm.close();

            return allBook;
    
        } catch (Exception e) {
            e.printStackTrace();
            return allBook;
        }
    }
    

    public static Book bookInfoById(String bookId) {
        try{
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(DBconnectionURL, DBusername, DBpassword);
    
            String sql = "SELECT * FROM books WHERE id=(?)";
    
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, bookId);
    
            ResultSet result = pstm.executeQuery();

            result.next();
            Book book = new Book(result.getString("id"), result.getString("title"), result.getInt("price"), result.getString("link_image"), result.getString("author"), result.getString("description"), result.getString("category"));

            conn.close();
            pstm.close();
            result.close();
            
            return book;
    
        } catch (Exception e) {
            e.printStackTrace();
            Book book = new Book("", "", 0, "", "", "", "");
            return book;
        }
    }
}
