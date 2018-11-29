<%@ page import="dao.getUser" %>
<%@ page import="dao.orderUtil" %>
<%@ page import="model.order" %>
<%@ page import="model.user" %>
<%@ page import="model.userOrders" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 16051
  Date: 2018/11/29
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>initOrders</title>
    <style>
        table.hovertable {
            text-align: center;
            margin-top: 50px;
            font-family: verdana,arial,sans-serif;
            font-size:15px;
            color:#333333;
            border-width: 1px;
            border-color: #999999;
            border-collapse: collapse;
        }
        table.hovertable th {

            background-color:#c3dde0;
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #a9c6c9;
            /*  width: 10%;
              word-wrap: break-word;*/
        }
        table.hovertable tr {
            background-color:#d4e3e5;
        }
        table.hovertable td {
            /* heig: 10%;
             word-wrap: break-word;*/
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #a9c6c9;
        }
    </style>
</head>
<body>
<div>
    <form action="getFinishOrder.jsp" method="post">
        <fieldset>
            <legend>已完成订单查询</legend>
            <label>用户名：
                <input type="search" name="search"/>
            </label>
            <input type="submit" value="搜索" >
        </fieldset>
    </form>
</div>
<%
    request.setCharacterEncoding("utf-8");
    String search=request.getParameter("search");
    if (search!=null){
        out.println(search);
        user user=new getUser().getUser(search);
        if (user!=null){
            out.println(user);
            userOrders userOrders=new orderUtil().getUserOrders(1,1);
            out.println(userOrders);
            if (userOrders!=null){
                ArrayList<order> orderArrayList=userOrders.getOrderArrayList();
%>
<table class="hovertable" border="1" width="100%">
    <caption><h2>初始订单</h2></caption>
    <tr>
        <th>用户ID</th>
        <th>用户名</th>
        <th>订单个数</th>
        <th>总金额</th>
    </tr>
    <tr>
        <td><%=user.getId()%></td>
        <td><%=user.getUsername()%></td>
        <td><%=userOrders.getOrderArrayList().size()%></td>
        <td><%=userOrders.getPrice()%></td>
    </tr>
</table>
<%
                for (order order:orderArrayList
                     ) {

                }
            }
        }
    }
%>
</body>
</html>

