
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.br.horabolas.util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.br.horabolas.entidades.Image"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
        int a = 700;
        String idImagem =  String.valueOf(a);
        Session sessionRecheio;
        sessionRecheio = HibernateUtil.getSession();
        Transaction tr = sessionRecheio.beginTransaction();
        String hql = "from Image u where u.id='" + idImagem + "'";
        Image img = (Image) sessionRecheio.createQuery(hql).uniqueResult();
        tr.commit();
            
            %>
    </head>
    <body>
        <img src="<%=img.getImageasblob()%>"> 
        <input type="text" value="<%=img.getImageasblob()%>">
    </body>
</html>
