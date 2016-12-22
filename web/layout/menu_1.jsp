
<%@page import="com.bean.SubMenuBean"%>
<%@page import="com.util.StringUtil"%>
<%@page import="com.bean.UserBean"%>
<%@page import="com.bean.MainMenuBean"%>
<%@page import="java.util.List"%>

<% request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>

<%!
    UserBean userLogin = null;
%>
<%
   userLogin = (UserBean) request.getSession().getAttribute("userLogin");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- sidebar: style can be found in sidebar.less -->
<section class="sidebar">
    <%
       if(userLogin != null){
    %>   

    <ul class="sidebar-menu">
        <!--<li class="header">MAIN NAVIGATION</li>-->
        <li class="active treeview">
            <!--<a href="#">-->
            <!--<i class="fa fa-plus-square"></i><span>เมนู</span> HEAD MENU -->
            <!--</a>-->
            <ul class="treeview-menu">

                <!--manu admin-->

                <%
              if(userLogin.getRoleBean().equals(1)){
                %>
                <li><a href="PageAction.do?todo=gotoPageHome">หน้าแรก</a></li>
                <li><a href="PageAction.do?todo=gotoPageManagermentLoan">จัดการสินเชื่อ</a></li>  
                <li><a href="PageAction.do?todo=gotoPageAdminManagermentProfile">สินเชื่อที่ผ่านการอนุมัติ</a></li> 
                <li><a href="WelcomePageAction.do?todo=gotoPageHome">เกี่ยวกับเรา</a></li>
                <li><a href="WelcomePageAction.do?todo=gotoPageBootstrapExample">ตั้งค่า</a></li>  
                <li><a href="WelcomePageAction.do?todo=gotoPageBootstrapExample">แก้ไขข้อมูลส่วนตัว</a></li> 
                <li><a href="WelcomePageAction.do?todo=gotoPageHome">เปลียนรหัสผ่าน</a></li>
                <li><a href="WelcomePageAction.do?todo=gotoPageBootstrapExample">ออกจากระบบ</a></li>  
                    <%
                }else{
                    %>
                <li><a href="WelcomePageAction.do?todo=gotoPageHome">หน้าแรก</a></li>
                <li><a href="WelcomePageAction.do?todo=gotoPageBootstrapExample">เข้าสู่ระบบ</a></li>  
                <li><a href="WelcomePageAction.do?todo=gotoPageBootstrapExample">เกี่ยวกับเรา</a></li> 
                    <%
                            
                }
                    %>      
            </ul>
        </li>
    </ul>
    <%   
        } else {


    %>



    <!--user ปกติ-->
    <ul class="sidebar-menu">
        <!--<li class="header">MAIN NAVIGATION</li>-->
        <li class="active treeview">
            <!--<a href="#">-->
            <!--<i class="fa fa-plus-square"></i><span>เมนู</span>-->
            <!--</a>-->
            <ul class="treeview-menu">


                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-plus-square"></i> <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu"> 
                        <li class="dropdown-header">Sub Menu</li>  
                    </ul>

                <li><a href=""></a></li>


                <li><a href="WelcomePageAction.do?todo=gotoPageHome">หน้าแรก</a></li>
                <li><a href="WelcomePageAction.do?todo=gotoPageBootstrapExample">เข้าสู่ระบบ</a></li>  
                <li><a href="WelcomePageAction.do?todo=gotoPageBootstrapExample">เกี่ยวกับเรา</a></li> 
            </ul>
        </li>
    </ul>



    <%
    }
    %>
</section>
<!-- /.sidebar -->
