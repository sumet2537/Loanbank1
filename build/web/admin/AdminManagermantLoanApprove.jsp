<%-- 
    Document   : AdminManagermantProfile
    Created on : Nov 23, 2016, 1:07:38 AM
    Author     : brass
--%>

<%@page import="com.bean.SenddatawsapproveBean"%>
<%@page import="com.bean.ApproveLoanBean"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body onload="check()">

        <%!
            List<SenddatawsapproveBean> loanlist = null;
        %>
        <%
            loanlist = (List<SenddatawsapproveBean>) request.getSession().getAttribute("loanList");
            DecimalFormat formatter = new DecimalFormat("###,###.00");
            DecimalFormat phone = new DecimalFormat("###-###-####");
            String msg = "";
            msg = (String) request.getAttribute("deletesuccess");
        %>
        <section class="content">
            <!-- Info boxes -->
            <div class="row">
                <div class="col-md-12">

                    <form name="formshowdateuser" method="post" action="ApproveLoanAction.do">
                        <section class="content-header">
                            <h1>
                                <strong>สินเชื่อที่อนุมัติ</strong>
                                <small>ของระบบ</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="PageAction.do?todo=gotoPageHome">
                                        <i class="fa fa-plus-square">
                                        </i>
                                        หน้าแรก
                                    </a>
                                </li>
                                <li class="active">
                                    <a href="#">
                                        <i class="fa fa-plus-square">
                                        </i>
                                        สินเชื่อที่อนุมัติ
                                    </a>
                                </li>
                            </ol>
                        </section>
                        <section class="content">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="box">
                                        <div class="box-header">
                                            <h3 class="box-title">สินเชื่อที่อนุมัติ</h3>
                                        </div>
                                        <!--.box-header-->
                                        <div class="box-body">
                                            <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-responsive">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                                            <thead>
                                                                <tr>
                                                                    <th>ลำดับ
                                                                    </th>
                                                                    <th>รหัสสินเชื่อ
                                                                    </th>
                                                                    <th>เลขผู้กู้
                                                                    </th>
                                                                    <th>สถานะ
                                                                    </th>
                                                                    <th >เงินที่อนุมัติ
                                                                    </th>
                                                                    <th >วันที่อนุมัติ
                                                                    </th>
                                                                    <th>ลบ
                                                                    </th>
                                                                    <th>รายละเอียด
                                                                    </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <% if (loanlist != null && loanlist.size() != 0) {
                                                                        for (int i = 0; i < loanlist.size(); i++) {
                                                                            SenddatawsapproveBean bean = (SenddatawsapproveBean) loanlist.get(i);
                                                                %>
                                                            
                                                                <tr >
                                                                    <td><%=i + 1%></td>
                                                                    <input type="hidden" name="approve_id" value="<%=bean.getApprove_id()%>"/>
                                                                    <td ><%=bean.getLoanreq_id()%></td>
                                                                    <td ><%=bean.getCitizen_id()%></td>
                                                                    <td><%=bean.getLoanstatusbank()%></td>
                                                                    <td><%=formatter.format(bean.getApprovedamount())%></td>
                                                                    <td ><%=bean.getUpdated()%></td>
                                                                    <td ><button class="btn btn-sm btn-danger" type="button" value="ลบ" onclick="callActionGotoDelete(<%=bean.getApprove_id()%>)"><i class="fa fa-close"></i></button></td>
                                                                    <td ><button class="btn btn-sm btn-primary" type="button" value="รายละเอียด" onclick="callActionGotoDetle(<%=bean.getApprove_id()%>)"><i class="glyphicon glyphicon-folder-open"></i></button></td>
                                                                </tr>
                                                                <%}%>
                                                                   <%} else {%>
                                                            <br><br>
                                                            <strong style="color: red">ไม่พบข้อมูลสมาชิก</strong>        
                                                            <%}%>
                                                                
                                                            </tbody>
                                                            <tfoot>
                                                            </tfoot>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <input type="hidden" name="todo"/>
                        <input type="hidden" name="approve_id"/>
                    </form>
                </div>
            </div>
        </section>
    </body>
    <script type="text/javascript">
        function callActionGotoDelete(approve_id) {
            swal({
                title: "คุณ แน่ใจแล้วใช่หรือไม่ ?",
                text: "คุณแน่ใจแล้วใช่หรือไม่ที่จะลบข้อมูล ลูกค้า!",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "ใช่, ลบเลย!",
                cancelButtonText: "ไม่, ออกเลย!",
                closeOnConfirm: false,
                closeOnCancel: false
            },
                    function (isConfirm) {
                            document.formshowdateuser.approve_id.value = approve_id;
            document.formshowdateuser.todo.value = 'deleteadmin';
                           
                        if (isConfirm) {
                          document.formshowdateuser.submit();
                            swal("ลบ !", "คุณ ลบ สำเร็จแล้ว.", "success");
                        } else {
                            swal("ออก", "คุณไม่ลบแล้วใช่หรือไม่ :)", "error");
                        }
                    });
        }
        function callActionGotoDetle(approve_id) {
            document.formshowdateuser.approve_id.value = approve_id;
            document.formshowdateuser.todo.value = 'Detleadmin';
            document.formshowdateuser.submit();

        }
        function callActionGotosearch(select) {
            document.formshowdateuser.todo.value = select;
            document.formshowdateuser.submit();
        }
        $(function () {
            $("#example1, #example2").DataTable();
        });

    </script>
    <div>
        <%
            if ("ok".equals(msg)) {
        %>
        <script >
            function check() {
                $(document).ready(function () {
                    swal({
                        title: "สำเร็จ",
                        text: "คุณลบข้อมูลสำเร็จ !",
                        type: "success",
                        confirmButtonText: "ตกลง!"
                    },
                            function () {
//                                window.location.href = 'PageAction.do?todo=gotoPageManagermentLoan';
                            });
                });
            }
        </script>

        <%} else if ("no".equals(msg)) {
        %>
        <script >
            function check() {
                swal({
                    title: "ไม่สำเร็จ",
                    text: "คุณลบข้อมูลไม่สำเร็จ !",
                    type: "error",
                    confirmButtonText: "ตกลง!"
                },
                        function () {
//                            window.location.href = 'PageAction.do?todo=gotoPageManagermentLoan';
                        });
            }
            ;

        </script>
        <%   }
        %>
    </div>
</html>
