<%-- 
    Document   : checkApprove
    Created on : Dec 15, 2016, 9:42:46 PM
    Author     : brass
--%>

<%@page import="com.bean.SenddatawsapproveBean"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
 <body onload="Success1()">
       
     <%!
    SenddatawsapproveBean bean = null;
%>
<%
    bean = (SenddatawsapproveBean) request.getSession().getAttribute("abean");
    DecimalFormat formatter = new DecimalFormat("###,###.00");
%>
     
   <div class="container">
        <div class="col-sm-2"></div>
        <div class="col-md-8">
            <div class="row">
                <!--box-->
                <section class="content">
                    <div class="box box-warning">
                        <div class="box-header with-border ">
                            <h2 align="center">สินเชื่อที่อนุมัติ</h2>
                        </div>
                        <form class="form-horizontal" name="approve" action="ApproveLoanAction.do" method="post"  id="register_form" autocomplete="on">

                            <div class="box-body">
                                <div class="form-group">
                                     <label class="col-md-4 control-label">รหัสบัตรประชาชนผู้กู้ <span class="star">*</span></label>  
                                    <div class="col-md-6 inputGroupContainer">
                                        <div class="input-group">
                                             <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                            <input name="citizen_id" type="text" value="<%=bean.getCitizen_id()%>" class="form-control" readonly="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">รหัสสินเชื่อ <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input  name="loanreq_id"  class="form-control" value="<%=bean.getLoanreq_id()%>" readonly="" type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">ผลการพิจารณา <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-flag"></i></span>
                                        <input  name="judgment" value="<%=bean.getJudgment()%>"  class="form-control"  readonly="" type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">สถานะ <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-gift"></i></span>
                                        <input name="loanstatusbank" value="<%=bean.getLoanstatusbank()%>" type="text" readonly="" class="form-control">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">วงเงินอนุมัติ <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-bitcoin"></i></span>
                                        <input name="approvedamount" value="<%=bean.getApprovedamount()%>" class="form-control" type="text" readonly="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">ยอดผ่อนชำระต่อเดือน <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-bitcoin"></i></span>
                                        <input name="installlments" value="<%=bean.getInstalllments()%>" class="form-control"  type="text" readonly="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">ระยะเวลาการผ่อน <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                        <input  name="timerepayment" type="text" value="<%=bean.getTimerepayment()%>" readonly="" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">ตำแหน่งผู้อนุมัติ <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
                                        <input name="position" type="text" value="<%=bean.getPosition()%>" class="form-control" readonly="">
                                    </div>
                                </div>
                            </div>
                                                                <div class="form-group">
                                <label class="col-md-4 control-label">อนุมัติเมื่อ <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                        <input name="createdby" type="text" value="<%=bean.getCreatedby()%>" class="form-control" readonly="">
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
<!--                            <div class="box-footer">
                                button
                                <div align="center">
                                    <input type="hidden" name="todo" value="approve"/>
                                    <button type="submit"  class="btn btn-success"><span class="glyphicon glyphicon-send"></span>  ตกลง</button>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <button type="reset" class="btn btn-warning"><span class="glyphicon glyphicon-refresh"></span>  ยกเลิก</button>
                                </div>
</div>--><br>
                        </form>


                    </div>
                    <!-- /.box-footer-->
                </section>
            </div>
            <!--</section>-->
            <!-- end box -->
        </div>
    </div>
        <div class="col-sm-2"></div>
        <!--alert--> 
        <div >
          
            <script type="text/javascript">
                function Success() {
    //                    swal("สำเร็จ!", ", Your account is created!", "success");
                $(document).ready(function () {
                swal({
                title: "สำเร็จ",
                        text: "ลงทะเบียนสำเร็จ เข้าสู่ระบบ",
                        type: "success"
                },
                        function () {
                        window.location.href = 'PageAction.do?todo=gotoPageLogin';
                        });
                });
                }
            </script>

            <script type="text/javascript">
                function Success() {
                swal("ไม่สำเร็จ", "Account is not removed!", "error");
                }
                        function () {
                        window.location.href = 'PageAction.do?todo=gotoPageRegister';
                        };
                
            </script>
        </div>
        <!--alert-->

    </body>
</html>
