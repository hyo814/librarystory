<%@page contentType="text/html; charset=euc-kr" errorPage="Librarystory.jsp?BODY_PATH=BorrowFail.jsp" %><%@page import="java.sql.*"%><%
    String id = request.getParameter("id");
    if (id == null)
        throw new Exception("ID�� �Է��Ͻʽÿ�.");
    Connection conn = null;
    Statement stmt = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?serverTimezone=UTC","root","gywls1040");
        if (conn == null)
            throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�.");
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from userlibrary where id = '" + id + "';");
        
        if (!rs.next())
            throw new Exception("ID(" +id+ ")�� �ش��ϴ� �����Ͱ� �����ϴ�.");
        String name = rs.getString("name");
        String writer = rs.getString("writer");
        int price = rs.getInt("price");
        int lend = rs.getInt("lend");
        int number= rs.getInt("number");
        request.setAttribute("ID", id);
        request.setAttribute("NAME", name);
        request.setAttribute("WRITER",writer);
        request.setAttribute("PRICE", price);
        request.setAttribute("LEND", lend);
        request.setAttribute("NUMBER", number);
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
    RequestDispatcher dispatcher = request.getRequestDispatcher("Librarystory.jsp?BODY_PATH=EditBorrow.jsp");
    dispatcher.forward(request, response); 
%>
