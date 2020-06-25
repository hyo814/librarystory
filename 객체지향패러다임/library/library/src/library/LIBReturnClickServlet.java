package library;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
public class LIBReturnClickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    	int id =Integer.parseInt(request.getParameter("id"));
    	updateDB(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("lib-list");
        dispatcher.forward(request, response);
    }
    private String updateDB(int id) throws ServletException, IOException {     
        Connection conn = null;
        Statement stmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?serverTimezone=UTC","root","gywls1040");
            if (conn == null)
                throw new Exception("데이터베이스에 연결할 수 없습니다.");
            stmt = conn.createStatement();
            String sql =String.format("update userlibrary set lend=1 where id = %d", id);
           
            System.out.println(sql);
			stmt.executeUpdate(sql);
        }
        catch (Exception e) {
        	return "fail";
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
        return "success";
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {   
    doGet(request,response);
    }
 }