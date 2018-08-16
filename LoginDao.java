import java.sql.*;

public class LoginDao
{
    public boolean check(String uname,String password)
    {
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcdb","root","");
        PreparedStatement st=con.prepareStatement("SELECT * FROM `login` WHERE username=? and password=?");
        st.setString(1,uname);
        st.setString(2,password);
        ResultSet rs=st.executeQuery();
        if(rs.next())
        {
            return true;
        }
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        return false;
    }
}
