
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Registration extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String contactno=request.getParameter("cno");
        String email=request.getParameter("email");
        String uname=request.getParameter("uname");
        String passwd=request.getParameter("pass");
        String cpass=request.getParameter("cpass");
        
        RegistrationDao rd=new RegistrationDao();
       if(rd.add(fname, lname, contactno, email, uname, passwd))
       {
          request.setAttribute("alertMsg", "Registration Successful");
           RequestDispatcher r=request.getRequestDispatcher("/registration.jsp");  
            r.include(request, response);
       }
       else
       {
           request.setAttribute("alertMsg", "Registration Failed");
           RequestDispatcher r=request.getRequestDispatcher("/registration.jsp");  
           r.include(request,response);
       }
    }
}
