package library;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
public class LIBHomeServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String strUpperid = request.getParameter("LAST_ID");
        int upperid;
        if (strUpperid == null)
            upperid = Integer.MAX_VALUE;
        else
            upperid = Integer.parseInt(strUpperid);
        LIBList list = readDB(upperid);
        request.setAttribute("USERLIBRARY_LIST", list);
        request.setAttribute("LISTSIZE",list.getListSize());
        RequestDispatcher dispatcher = request.getRequestDispatcher("Librarystory.jsp?BODY_PATH=LibHome.jsp");
        dispatcher.forward(request, response); 
    }
    private LIBList readDB(int upperid) throws ServletException {     
        LIBList list = new LIBList();
        Connection conn = null;
        Statement stmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?serverTimezone=UTC","root","gywls1040");
            if (conn == null)
                throw new Exception("데이터베이스에 연결할 수 없습니다.");
            stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from userlibrary where id < " + upperid + " order by id asc;");
            for (int cnt = 0; cnt < upperid; cnt++) {
                if (!rs.next())
                    break;
                list.setId(cnt, rs.getInt("id"));
                list.setName(cnt, rs.getString("name"));
                list.setWriter(cnt, rs.getString("writer"));
                list.setPrice(cnt, rs.getInt("price"));
                list.setLend(cnt, rs.getInt("lend"));
                list.setNumber(cnt, rs.getInt("number"));
            }
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
        return list;
    }
}