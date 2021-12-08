package backend;

import java.sql.*;

public class DbUser {
    // public static void main(String[] args) {
    //   String username = "sa";
    //   String password = "123456";
    //   String connectionURL = "jdbc:sqlserver://localhost;database=servletdb";

    //   try{
    //     Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    //     Connection conn = DriverManager.getConnection(connectionURL, username, password);

    //     String sql = "INSERT INTO users (firstname, lastname, email) VALUES ('tran duc', 'tuan', 'ductuantran2410@gmail.com')";

    //     Statement statement = conn.createStatement();
    //     int rows = statement.executeUpdate(sql);

    //     if(rows > 0) {
    //       System.out.println("Row has been added");
    //     }

    //     conn.close();
    //   } catch (Exception e) {
    //     e.printStackTrace();
    //   }
    // }
    static String DBusername = "eebigwqauxgxqi";
    static String DBpassword = "ced036c5da9b8234bd71b87653a062bd38abe3ad564b0bb3061d8eb44f236c3d";
    static String DBconnectionURL = "jdbc:postgresql://ec2-34-232-252-124.compute-1.amazonaws.com:5432/d5sjinh7nlh1kj";

    public static boolean insertUser(User user) {   

      try{
        Class.forName("org.postgresql.Driver");
        Connection conn = DriverManager.getConnection(DBconnectionURL, DBusername, DBpassword);

        String sql = "INSERT INTO users (username, password)" + " VALUES (?, ?)";


        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, user.getUserName());
        pstm.setString(2, user.getPassWord());

        if(pstm.execute()) {

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

    public static boolean deleteUser(User user) {
      try{
        Class.forName("org.postgresql.Driver");
        Connection conn = DriverManager.getConnection(DBconnectionURL, DBusername, DBpassword);

        String sql = "DELETE FROM users WHERE username = (?)";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, user.getUserName());

        return pstm.execute();

      } catch (Exception e) {
        e.printStackTrace();
        return false;
      }
    }
    //for login
    public static boolean verifyUser(String userName, String passWord) {
      try{
        Class.forName("org.postgresql.Driver");
        Connection conn = DriverManager.getConnection(DBconnectionURL, DBusername, DBpassword);

        String sql = "SELECT * FROM users WHERE username = (?) AND password = (?)";
        
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
        pstm.setString(2, passWord);

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

    //for sign up
    public static boolean verifyUser(String userName) {
      try{
        Class.forName("org.postgresql.Driver");
        Connection conn = DriverManager.getConnection(DBconnectionURL, DBusername, DBpassword);

        String sql = "SELECT * FROM users WHERE username = (?)";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);

        ResultSet result = pstm.executeQuery();

        if(result.next()) {


          conn.close();
          result.close();
          pstm.close();
          return false;
        }

        conn.close();
        result.close();
        pstm.close();
        return true;

      } catch (Exception e) {
        e.printStackTrace();
        return false;
      }
    }
}

