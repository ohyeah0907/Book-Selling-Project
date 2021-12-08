package backend;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class DbCart {
  static String DBusername = "eebigwqauxgxqi";
  static String DBpassword = "ced036c5da9b8234bd71b87653a062bd38abe3ad564b0bb3061d8eb44f236c3d";
  static String DBconnectionURL = "jdbc:postgresql://ec2-34-232-252-124.compute-1.amazonaws.com:5432/d5sjinh7nlh1kj";

    public static boolean insertCart(Cart cart) {
        try{
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(DBconnectionURL, DBusername, DBpassword);
    
            String sql = "INSERT INTO cart (username, book_id, amount)" + " VALUES (?, ?, ?)";
    
    
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, cart.getUsername());
            pstm.setString(2, cart.getBookId());
            pstm.setInt(3, cart.getAmount());

            if(pstm.execute()) {

              pstm.close();
              conn.close();
              return true;
            }

            pstm.close();
            conn.close();
            return false;
    
          } catch (Exception e) {
            e.printStackTrace();
            return false;
          }
    }

    public static List<Object[]> allProduct(String username) {
        List<Object[]> allProduct = new ArrayList<>();
        try{
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(DBconnectionURL, DBusername, DBpassword);
    
            String sql = "SELECT id, title, price, link_image, amount, username FROM cart, books WHERE username = (?) AND book_id=id ";
    
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, username);
    
            ResultSet result = pstm.executeQuery();
            
            while(result.next()) {
              String id = result.getString("id");
              String title = result.getString("title");
              Integer price = result.getInt("price");
              String link_image = result.getString("link_image");
              Integer amount = result.getInt("amount");
              String userName = result.getString("username");

              Object[] objects = new Object[] { 
                id, 
                title, 
                price,
                link_image, 
                amount,
                userName };

                allProduct.add(0, objects);
            }

            conn.close();
            result.close();
            pstm.close();

            return allProduct;
    
        } catch (Exception e) {
            e.printStackTrace();
            return allProduct;
        }
    }

    public static boolean inCart(String username, String bookId) {
        try{
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(DBconnectionURL, DBusername, DBpassword);
    
            String sql = "SELECT * FROM cart WHERE username = (?) AND book_id = (?)";
            
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, username);
            pstm.setString(2, bookId);
    
            ResultSet result = pstm.executeQuery();
            if(result.next()) {
              
              conn.close();
              result.close();
              pstm.close();
    
              return true;
            }
            
            conn.close();
            result.close();
            pstm.close();
    
            return false;
    
          } catch (Exception e) {
            e.printStackTrace();
            return false;
          }
    }

    public static boolean increaseAmount(String username, String bookId) {
        try{
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(DBconnectionURL, DBusername, DBpassword);
    
            String sql = "UPDATE cart SET amount= amount + 1 WHERE username=(?) AND book_id=(?)";
            
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, username);
            pstm.setString(2, bookId);
    
            int result = pstm.executeUpdate();
            if(result != 0) {
              
              conn.close();
              pstm.close();
    
              return true;
            }
            
            conn.close();
            pstm.close();
    
            return false;
    
          } catch (Exception e) {
            e.printStackTrace();
            return false;
          }
    }

    public static boolean deleteOneProduct(String bookId, String username) {
      try{
        Class.forName("org.postgresql.Driver");
        Connection conn = DriverManager.getConnection(DBconnectionURL, DBusername, DBpassword);

        String sql = "DELETE FROM cart WHERE book_id=(?) AND username=(?)";
        
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, bookId);
        pstm.setString(2, username);

        int result = pstm.executeUpdate();
        if(result != 0) {

          conn.close();
          pstm.close();

          return true;
        }

        conn.close();
        pstm.close();
        return false;

      } catch (Exception e) {
        e.printStackTrace();
        return false;
      }
    }

    public static boolean deleteCart(String username) {
      try{
        Class.forName("org.postgresql.Driver");
        Connection conn = DriverManager.getConnection(DBconnectionURL, DBusername, DBpassword);

        String sql = "DELETE FROM cart WHERE username=(?)";
        
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, username);

        int result = pstm.executeUpdate();
        if(result != 0) {

          conn.close();
          pstm.close();

          return true;
        }

        conn.close();
        pstm.close();

        return false;

      } catch (Exception e) {
        e.printStackTrace();
        return false;
      }
    }
}
