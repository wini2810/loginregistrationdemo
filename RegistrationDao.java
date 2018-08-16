
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegistrationDao extends HttpServlet 
{
    public boolean add(String fname,String lname, String cno, String email, String uname, String password)
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcdb","root","");
            PreparedStatement st=con.prepareStatement("INSERT INTO login(fname,lname,emailid,contact,username,password) VALUES(?,?,?,?,?,?)");
            st.setString(1,fname);
            st.setString(2,lname);   
            st.setString(3,email);
            st.setString(4,cno);
            st.setString(5,uname);
            st.setString(6,password);
            st.executeUpdate();
            
            return true;
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        return false;
    }

}
