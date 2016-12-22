<%-- 
    Document   : checkApprove
    Created on : Dec 15, 2016, 9:42:46 PM
    Author     : brass
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
 <body onload="Success1()">
       
     
     
     
     
     
     
     
        <div class="container">
            <h2 align="center">รายการอนุมัติ</h2>
            <div class="col-sm-2"></div>
            <div class="col-md-8">
                <div class="row">
                    <!--box-->
                    <section class="content">
                        <div class="box box-info">
                            <div class="box-header with-border ">
                                <h3 class="box-title">ลงทะเบียน</h3>
                            </div>
                            <form class="form-horizontal" name="formview" action="SenddatawsAction.do" method="post"  id="register_form" autocomplete="on">

                                <div class="box-body">
                                    <input type="hidden" name="todo" value="register">


                                    <div class="form-group">
                                        <label class="col-md-4 control-label">รหัสสินเชื่อ <span class="star">*</span></label>  
                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input  name="loanreq_id"  class="form-control"  type="text">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label">ชื่อธนาคาร <span class="star">*</span></label>  
                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                                <input  name="loanbankreq_id" placeholder="กรุณาใส่ชื่อธนาคาร" class="form-control"  type="text" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">ชื่อผู้กู้ <span class="star">*</span></label>  
                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
                                                <input  name="firstname" placeholder="รหัสบัตรประจำตัวประชาชน" class="form-control"  type="text"  >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">ผลการพิจารณา <span class="star">*</span></label>  
                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input  name="judgment" placeholder="กรุณาใส่ชื่อของคุณ" class="form-control"  type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">สถานะ <span class="star">*</span></label>  
                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input  name="loanstatusbank" placeholder="สถานะ" class="form-control"  type="text">
                                            </div>
                                        </div>
                                    </div>
                                   
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">กรอกวงเงินอนุมัติ <span class="star">*</span></label>  
                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                                <input name="approvedamount" placeholder="กรอกวงเงินอนุมัติ" class="form-control" type="text" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">ยอดผ่อนชำระต่อเดือน <span class="star">*</span></label>  
                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                                <input name="installlments" placeholder="กรุณาใส่ยอดผ่อนชำระต่อเดือน" class="form-control"  type="text">
                                            </div>
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label class="col-md-4 control-label">ระยะเวลาการผ่อน <span class="star">*</span></label>  
                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                                <input name="timerepayment" placeholder="กรุณาใส่ระยะเวลาการผ่อน" class="form-control"  type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">ตำแหน่งผู้อนุมัติ <span class="star">*</span></label>  
                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                                <input name="position" placeholder="กรุณาใส่ตำแหน่งผู้อนุมัติ" class="form-control"  type="text">
                                            </div>
                                        </div>
                                    </div>



                                </div>
                                <!-- /.box-body -->
                                <div class="box-footer">
                                    <!--button-->
                                    <div align="center">
                                        <!--<button type="submit" class="btn btn-success" onclick="callinsert('register')">ตกลง</button>&nbsp;&nbsp;&nbsp;&nbsp;-->
                                        <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-download-alt"></span>  อนุมัติ</button>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <!--<button type="reset" class="btn btn-danger">ยกเลิก</button>-->
                                    </div>
                                </div>
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