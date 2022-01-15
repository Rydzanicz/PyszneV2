package registration;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/loginRegister")
public class LoginRegister extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CustomerDAO cd = new CustomerDAOImpl();
        String userName = request.getParameter("username");
        String password = request.getParameter("password1");
        String submitType = request.getParameter("submit");
        Customer c=cd.getCustomer(userName, password);

        if(submitType.equals("login") && c!=null && c.getName()!=null){
            request.setAttribute("message", c.getName());
            request.getRequestDispatcher("welcome.jsp").forward(request, response);
        }
        else if(submitType.equals("register")){
            c.setName(request.getParameter("name"));
            c.setPassword(password);
            c.setUsername(userName);
            cd.insertCustomer(c);
            request.setAttribute("successMessage", "Registration done, please login to continue !!!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        else{
            request.setAttribute("message", "Data Not Found, click on Register !!!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}