<%-- 
    Document   : AdminManagermentLoanrequest
    Created on : Nov 30, 2016, 2:26:49 PM
    Author     : brass
--%>

<%@page import="com.bean.RequestLoanBean"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
      
        <%!
            List<RequestLoanBean> requestloan = new ArrayList <RequestLoanBean>();
            %>
           
             <section class="content">
            <!-- Info boxes -->
            <div class="row">
                <div class="col-md-12">

                    <form name="formshowdaterequestadmin" method="post" action="LoanRequstAction.do">
                        <section class="content-header">
                             <h1><strong>ข้อมูล</strong>
                                    <small>การขอสินเชื่อ</small>
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
                                        จัดการผู้ใช้
                                    </a>
                                </li>
                            </ol>
                        </section>
                        <section class="content">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="box">
                                        <div class="box-header">
                                            <h3 class="box-title"> ข้อมูลการขอกู้</h3>
                                        </div>
                                        <!--.box-header-->
                                        <div class="box-body">
                                            <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-responsive">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="dataTables_length" id="example1_length">
                                                            <label>แสดง
                                                                <select name="example1_length" aria-controls="example1" class="form-control input-sm">
                                                                    <option value="10">10</option>
                                                                    <option value="10">25</option>
                                                                    <option value="10">50</option>
                                                                    <option value="10">100</option>
                                                                </select>รายการ</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div id="example1_filter" class="dataTables_filter" align="right">
                                                            <label>
                                                                ค้นหา :
                                                                <input type="search" class="form-control input-sm" aria-controls="example1" >
                                                                <button class="btn btn-primary btn-sm" type="submit" ><i class="glyphicon glyphicon-search"></i></button>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                                            <thead>
                                                                <tr>
                                                                    <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending"
                                                                        aria-label="Rendering engine: activate to sort column descending" style="width: 50px;">ลำดับ
                                                                    </th>
                                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" 
                                                                        colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 100px;">เลขประจำตัว
                                                                    </th>
                                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" 
                                                                                                                                aria-label="Platform(s): activate to sort column ascending" style="width: 200px;">ชื่อ-นามสกุล
                                                                                                                            </th>
                                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" 
                                                                        aria-label="Platform(s): activate to sort column ascending" style="width: 100px;">เบอร์โทร 
                                                                    </th>
                                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" 
                                                                        aria-label="CSS grade: activate to sort column ascending" style="width: 200px;">ที่อยู่
                                                                    </th>
                                                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" 
                                                                        aria-label="CSS grade: activate to sort column ascending" style="width: 100px;">สถานะ
                                                                    </th>
                                                                     <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" 
                                                                        aria-label="CSS grade: activate to sort column ascending" style="width: 150px;">วันที่ส่ง
                                                                    </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <% requestloan = (List<RequestLoanBean>) request.getSession().getAttribute("requestList");
                                                                    for (RequestLoanBean bean : requestloan) {
                                                                 %>
                                                                <tr role="row" class="odd">
                                                                     <td class="sorting_1"><%=bean.getLoanreq_id()%></td>
                                                                    <td class="sorting_1"><%=bean.getCitizen_id()%></td>
                                                                    <td class="sorting_1"><%=bean.getTitle_type()%> &nbsp;<%=bean.getFirstName()%>&nbsp;<%=bean.getLastName()%></td>
                                                                    <%----<td class="sorting_1"><%=bean.getStatustype()%></td>--%>
                                                                    <td class="sorting_1"><%=bean.getMobile()%></td>
                                                                    <td class="sorting_1"><%=bean.getEmail()%></td>
                                                                    <td class="sorting_1"><%=bean.getLoanstatustype()%></td>
                                                                    <td class="sorting_1"><%=bean.getCreated()%></td>
                                                                    <td class="sorting_1"><button class="btn btn-sm btn-danger" type="submit" value="ลบ" onclick="callActionGotoDelete(<%=bean.getLoanreq_id()%>)"><i class="fa fa-close"></i></button></td>
                                                                    <%--<td class="sorting_1"><button class="btn btn-sm btn-success" type="submit" value="แก้ไข" onclick="callActionGotoEdit(<%=bean.getLoanreq_id()%>)"><i class="glyphicon glyphicon-edit"></i></button></td>--%>
                                                                    <td class="sorting_1"><button class="btn btn-sm btn-primary" type="submit" value="รายละเอียด" onclick="callActionGotoDetle(<%=bean.getLoanreq_id()%>)"><i class="glyphicon glyphicon-folder-open"></i></button></td>
                                                                </tr>
                                                                <%}%>
                                                            </tbody>
                                                            <tfoot>
                                                                <tr>
                                                                    <th>ลำดับ</th>
                                                                    <th>ชื่อ-นามสกุล</th>
                                                                    <th>เบอร์โทร</th>
                                                                    <th>อีเมล์</th>
                                                                    <th>ที่อยู่</th>
                                                                     <th>สถานะ </th>
                                                                     <th>วันที่ส่ง </th>

                                                                </tr>
                                                            </tfoot>
                                                        </table>
                                                        <div class="row">
                                                            <div class="col-sm-5">
                                                                <div class="dataTables_info" id="example1_info" role="status"
                                                                     aria-live="polite">แสดง 1 ถึง 10 ของ รายการ 
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-7">
                                                                <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate" align="right">
                                                                    <ul class="pagination" >
                                                                        <li class="paginate_button previous disabled" id="example1_previous">
                                                                            <a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">ก่อน</a>
                                                                        </li>
                                                                        <li class="paginate_button active">
                                                                            <a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1</a>
                                                                        </li>
                                                                        <li class="paginate_button ">
                                                                            <a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2</a>
                                                                        </li>
                                                                        <li class="paginate_button">
                                                                            <a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0">3</a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <input type="hidden" name="todo"/>
                        <input type="hidden" name="loanreq_id"/>
                    </form>
                </div>
            </div>
        </section>
    </body>
  <script type="text/javascript">
    function callActionGotoDelete(loanreq_id) {
//        alert(คุณต้องการลบขอ้มูลใช่หรือไม่);
        document.formshowdaterequestadmin.loanreq_id.value = loanreq_id;
        document.formshowdaterequestadmin.todo.value = 'delete';
        document.formshowdaterequestadmin.submit();
    }
    function callActionGotoDetle(loanreq_id){
        document.formshowdaterequestadmin.loanreq_id.value = loanreq_id;
        document.formshowdaterequestadmin.todo.value = 'Detle';
        document.formshowdaterequestadmin.submit();
       
    }
    function callActionGotosearch(select) {
        document.formshowdaterequestadmin.todo.value = select;
        document.formshowdaterequestadmin.submit();
    }
    
    </script>
</html>
