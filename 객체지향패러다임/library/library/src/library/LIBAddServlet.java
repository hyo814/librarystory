package library;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
public class LIBAddServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    	String strId =request.getParameter("id");
    	String name = request.getParameter("name");
    	String writer = request.getParameter("writer");
    	String strPrice = request.getParameter("price");
    	int id,price;
    	
    	if(strId==""|| writer==""||name==""||strPrice=="") {
    		response.sendRedirect("Librarystory.jsp?BODY_PATH=AddFail.jsp");
    	}
    	else
	    {
    		id=Integer.parseInt(strId);
	    	price=Integer.parseInt(strPrice);
	    	
	    	if (readDB(id)==true) {  
	    		response.sendRedirect("Librarystory.jsp?BODY_PATH=AddError.jsp");
	    		    	}
	    	else {
	    		writeDB(id, name, writer, price);
	    		RequestDispatcher dispatcher = request.getRequestDispatcher("Librarystory.jsp?BODY_PATH=lib-list");
	    	    dispatcher.forward(request, response);
	    	}
    	}
    }
    
    private String writeDB(int id, String name, String writer, int price) throws ServletException {     
        Connection conn = null;
        Statement stmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?serverTimezone=UTC","root","gywls1040");
            if (conn == null)
                throw new Exception("데이터베이스에 연결할 수 없습니다.");
            stmt = conn.createStatement();
            String sql =String.format("insert into userlibrary "+"(id, name, writer, price, lend, number) values (%d,'%s', '%s', %d, 1, 0)", id, name, writer, price);
            System.out.println(sql);
			stmt.executeUpdate(sql);
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
        return "success";
    }
    private boolean readDB(int id) throws ServletException {     
        Connection conn = null;
        Statement stmt = null;
        boolean result;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?serverTimezone=UTC","root","gywls1040");
            if (conn == null)
                throw new Exception("데이터베이스에 연결할 수 없습니다.");
            stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from userlibrary where id = " + id);
			if (!rs.next())
				result= false;
			else
				result= true;
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
        return result;
    }
}
