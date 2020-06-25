package library;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
public class NewLoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, 
                       HttpServletResponse response) 
                       throws IOException, ServletException {
        String id = request.getParameter("ID");
        String password = request.getParameter("PASSWORD");
        String result;
        if (checkLoginInfo(id, password)) {
            HttpSession session = request.getSession();
            session.setAttribute("LOGIN_ID", id);
            result = "SUCCESS";
        }
        else {
            result = "FAIL";
        }
        response.sendRedirect("Librarystory.jsp?BODY_PATH=" +
                     "LoginResult.jsp?LOGIN_RESULT=" + result);
    }
    private boolean checkLoginInfo(String id, String password) throws ServletException {   // �α��� üũ �޼���
        Connection conn = null;
        Statement stmt = null;
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?serverTimezone=UTC","root","gywls1040");
            if (conn == null)
                throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�.");
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select password" +
                      " from userinfo where id = '" + id + "';");
            if (!rs.next())
                return false;
            String correctPassword = rs.getString("password");
            if (password.equals(correctPassword))
                return true;
            else
                return false;
        }
        catch (Exception e) {
            throw new ServletException(e);
        }
        finally { 
            try { 
                stmt.close();
            } 
            catch (Exception ignored) {
            }
            try { 
                conn.close();
            } 
            catch (Exception ignored) {
            }
        }
    }
}
