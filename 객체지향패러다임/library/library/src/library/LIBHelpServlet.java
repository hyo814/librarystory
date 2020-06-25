package library;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
public class LIBHelpServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String strUpperSeqNo = request.getParameter("LAST_SEQ_NO");
        int upperSeqNo;
        if (strUpperSeqNo == null)
            upperSeqNo = Integer.MAX_VALUE;
        else
            upperSeqNo = Integer.parseInt(strUpperSeqNo);
        LIBHelp list = readDB(upperSeqNo);
        request.setAttribute("LIB_LIST", list);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Librarystory.jsp?BODY_PATH=LIBHelp.jsp");
        dispatcher.forward(request, response); 
    }
    private LIBHelp readDB(int upperSeqNo) throws ServletException {     // �����ͺ��̽��κ��� �Խñ� ����� �д� �޼���
    	LIBHelp list = new LIBHelp();
        Connection conn = null;
        Statement stmt = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?serverTimezone=UTC","root","gywls1040");
            if (conn == null)
                throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�.");
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from LIB where seqNo < " + upperSeqNo + " order by seqno desc;");
            for (int cnt = 0; cnt < 5; cnt++) {
                if (!rs.next())
                    break;
                list.setSeqNo(cnt, rs.getInt("seqNo"));
                list.setTitle(cnt, rs.getString("title"));
                list.setWriter(cnt, rs.getString("writer"));
                list.setDate(cnt, rs.getDate("wdate"));
                list.setTime(cnt, rs.getTime("wtime"));
            }
            if (!rs.next())
                list.setLastPage(true);
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