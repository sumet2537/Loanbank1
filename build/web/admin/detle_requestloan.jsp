<%-- 
    Document   : detle_requestloan
    Created on : Dec 3, 2016, 11:11:14 AM
    Author     : brass
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="com.bean.RequestLoanBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- Main content -->
<%!
    RequestLoanBean bean = null;
%>
<%
    bean = (RequestLoanBean) request.getSession().getAttribute("checkApprove");
    DecimalFormat formatter = new DecimalFormat("###,###.00");
    String msg = "";
    String buro = "";
    msg = (String) request.getAttribute("msgapprove");
    buro = (String) request.getAttribute("buro");
%>

<body onload="Success()">
    <section class="content">
        <!-- Info boxes -->
        <div class="row">
            <div class="col-md-12">
                <form class="form-horizontal" name="formApprove" action="ApproveLoanAction.do" method="post" enctype="multipart/form-data">
                    <!--<div align="center">-->
                    <div class="box box-solid" >
                        <!--box box-solid-->
                        <br>
                        <h3 class="center"><strong >ตรวจสอบการขอกู้</strong></h3>
                        <div class="box-body">
                            <!--box-body-->
                            <div class="row">
                                <fieldset class="col-md-2">
                                </fieldset>
                                <fieldset class="col-md-8 center">
                                    <hr class="hrbrue">
                                </fieldset>
                                <div >
                                    <fieldset class="col-md-10 col-md-offset-1">

                                        <div class="form-group ">
                                            <div class="panel panel-info">
                                                <div class="panel-heading">
                                                    <a href="#collap" data-toggle="collapse" > <h4> :: ข้อมูลส่วนตัว ::&nbsp;&nbsp;วันที่ส่ง : &nbsp;&nbsp;<%=bean.getCreated()%></h4></a>
                                                </div>
                                                <div class="collapse" id="collap">
                                                    <div class="panel-body">
                                                        <div class="form-group col-md-12">
                                                            <label>เลขบัตรประจำตัวประชาชน : &nbsp;&nbsp;<span class="fontblue1" style="color:#0033FF; font-size: 17px;"><%=bean.getCitizen_id()%></span></label>
                                                            <input  type="hidden" name="loanreq_id" value="<%=bean.getLoanreq_id()%>">
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                            <label>คำนำหน้า :<span style="color:#0033FF; font-size: 17px;"><%=bean.getTitle_type()%></span></label>
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                            <label for="firstname">ชื่อ : &nbsp;&nbsp;<span  style="color:#0033FF; font-size: 17px;"><%=bean.getFirstName()%></span></label>
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                            <label>นามสกุล: &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getLastName()%></span></label>
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                            <label>วันเดือนปีเกิด: &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getBirthdate()%></span></label>
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                            <label >อายุ: &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getAge()%></span> &nbsp;&nbsp;ปี</label>
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                            <label >สัญชาติ : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getNationality()%></span></label>
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                            <label >สถานะสมรส : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getStatustype()%></span></label>
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                            <label>เบอร์โทร : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getMobile()%></span></label>
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                            <label >อีเมล์ : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getEmail()%></span></label>
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                            <label>อาชีพ : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getJobtype()%></span></label>
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                            <label >จังหวัด : &nbsp;&nbsp; <span style="color:#0033FF; font-size: 17px;"><%=bean.getProvince()%></span></label>
                                                            <textarea hidden name="addressregistration" ><%=bean.getProvince()%></textarea>
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                            <label>อำเภอ : &nbsp;&nbsp; <span style="color:#0033FF; font-size: 17px;"><%=bean.getAmphur()%></span></label>
                                                            <textarea hidden name="addresscurrent" > <%=bean.getAmphur()%></textarea>
                                                        </div>
                                                        <div class="form-group col-md-12">
                                                            <label>ตำบล  <span style="color:#0033FF; font-size: 17px;"><%=bean.getDistrict()%></span></label>
                                                            <textarea hidden name="addresssenddoc"> <%=bean.getDistrict()%></textarea>
                                                        </div>
                                                        <div class="form-group col-md-12">
                                                            <label>ที่อยู่  <span style="color:#0033FF; font-size: 17px;"><%=bean.getAddress()%></span></label>
                                                            <textarea hidden name="addresssenddoc"> <%=bean.getAddress()%></textarea>
                                                        </div>
                                                    </div>

                                                    <div class="panel panel-success">
                                                        <div class="panel-heading">
                                                            <h4> :: ข้อมูลที่อยู่อาศัยที่จะซื้อ ::</h4>
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="form-group col-md-4">
                                                                <label >ประเภทที่อยู่อาศัย: &nbsp;&nbsp; <span style="color:#0033FF; font-size: 17px;"><%=bean.getHometype()%></span></label>
                                                            </div>
                                                            <div class="form-group col-md-4">
                                                                <label >ราคาซื้อขาย: &nbsp;&nbsp; <span style="color:#0033FF; font-size: 17px;"><%=formatter.format(bean.getTradingprice())%>&nbsp;&nbsp;</span>บาท</label>
                                                            </div>
                                                            <div class="form-group col-md-4">
                                                                <label>วงเงินสินเชื่อที่ขอกู้ : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=formatter.format(bean.getCreditloan())%>&nbsp;&nbsp;</span>บาท</label>
                                                            </div>
                                                            <div class="form-group col-md-4">
                                                                <label >ระยะเวลาที่ขอกู้ : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getLncome_per_month()%>&nbsp;&nbsp;</span>ปี</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="panel panel-danger">
                                                        <div class="panel panel-heading">
                                                            <h4> :: ข้อมูลด้านรายได้ ::</h4>
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="form-group col-md-6">
                                                                <label>รายได้ประจำต่อเดือน: &nbsp;&nbsp; <span style="color:#0033FF; font-size: 17px;"><%=formatter.format(bean.getPeriodloan())%>&nbsp;&nbsp;</span>บาท</label>
                                                            </div>
                                                            <div class="form-group col-md-6">
                                                                <label>รายได้เสริมทั้งหมดเฉลี่ยต่อเดือน : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=formatter.format(bean.getNetprofit())%>&nbsp;&nbsp;</span>บาท</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="panel panel-danger">
                                                        <div class="panel panel-heading">
                                                            <h4> :: ข้อมูลด้านรายได้ ::</h4>
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="form-group col-md-6">
                                                                <label>รายได้ประจำต่อเดือน: &nbsp;&nbsp; <span style="color:#0033FF; font-size: 17px;"><%=formatter.format(bean.getPeriodloan())%>&nbsp;&nbsp;</span>บาท</label>
                                                                <input  class="form-control" type="hidden" name="periodloan" value="<%=bean.getPeriodloan()%>">
                                                            </div>
                                                            <div class="form-group col-md-6">
                                                                <label>รายได้เสริมทั้งหมดเฉลี่ยต่อเดือน : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=formatter.format(bean.getNetprofit())%>&nbsp;&nbsp;</span>บาท</label>
                                                                <input type="hidden" name="netprofit" value="<%=bean.getNetprofit()%>">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="panel panel-warning">
                                                        <div class="panel-heading">
                                                            <h4> :: เอกสารประกอบการขอกู้ ::</h4>
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="form-group">
                                                                <div class="col-md-8"><h3>เอกสาร</h3>
                                                                </div>
                                                                <div class="col-md-4"><h3>ดูรายละเอียด</h3></div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="col-md-8">
                                                                    <label >สำเนาบัตรประจำตัวประชาชน: &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getCopyidcard()%></span></label>
                                                                    <input  type="hidden" name="copyidcard" value="<%=bean.getCopyidcard()%>">
                                                                </div>
                                                                <div class="col-md-4"><a  href="http://localhost:8080/TestProject/image/uploade/<%=bean.getCopyidcard()%>"><img class="imgfile" src="./img/pdf-icon.jpg"></a></div>
                                                            </div>
                                                            <div class="form-group"> 
                                                                <div class="col-md-8">
                                                                    <label>สำเนาใบอนุญาตประกอบวิชาชีพ (กรณีประกอบวิชาชีพเฉพาะ) : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getCopylicenses()%></span></label>
                                                                    <input type="hidden" name="copylicenses" value="<%=bean.getCopylicenses()%>">
                                                                </div>
                                                                <div class="col-md-4"><a  href="http://localhost:8080/TestProject/image/uploade/<%=bean.getCopylicenses()%>"><img class="imgfile" src="./img/pdf-icon.jpg"></a></div>

                                                            </div>
                                                            <div class="form-group">
                                                                <div class="col-md-8">
                                                                    <label>สำเนาทะเบียนบ้าน :<span style="color:#0033FF; font-size: 17px;"><%=bean.getCopydocumenthome()%></span></label>
                                                                    <input type="hidden" name="copydocumenthome" value="<%=bean.getCopydocumenthome()%>">
                                                                </div>
                                                                <div class="col-md-4"><a  href="http://localhost:8080/TestProject/image/uploade/<%=bean.getCopydocumenthome()%>"><img class="imgfile" src="./img/pdf-icon.jpg"></a></div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class=" col-md-8">
                                                                    <label>สำเนาทะเบียนสมรส/ใบหย่า/ใบมรณะบัตรของคู่สมรส (ถ้ามี) : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getCopymarriage()%></span></label>
                                                                    <input type="hidden" name="copymarriage" value="<%=bean.getCopymarriage()%>">
                                                                </div>
                                                                <div class="col-md-4"><a  href="http://localhost:8080/TestProject/image/uploade/<%=bean.getCopymarriage()%>"><img class="imgfile" src="./img/pdf-icon.jpg"></a></div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class=" col-md-8">
                                                                    <label >ใบเปลี่ยนชื่อ-สกุล (ทุกใบ): &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getCopy_rename()%></span></label>
                                                                    <input  type="hidden"  name="copy_rename" value="<%=bean.getCopy_rename()%>">
                                                                </div>
                                                                <div class="col-md-4"><a  href="http://localhost:8080/TestProject/image/uploade/<%=bean.getCopy_rename()%>"><img class="imgfile" src="./img/pdf-icon.jpg"></a></div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class=" col-md-8">
                                                                    <label>สลิปเงินเดือน : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getSalary_slip()%></span></label>
                                                                    <input  type="hidden" name="salary_slip"  value="<%=bean.getSalary_slip()%>">
                                                                </div>
                                                                <div class="col-md-4"><a  href="http://localhost:8080/TestProject/image/uploade/<%=bean.getSalary_slip()%>"><img class="imgfile" src="./img/pdf-icon.jpg"></a></div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class=" col-md-8">
                                                                    <label>สำเนาบัญชีธนาคาร : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getCopy_bankaccount()%></span></label>
                                                                    <input type="hidden" name="copy_bankaccount"  value="<%=bean.getCopy_bankaccount()%>">
                                                                </div>
                                                                <div class="col-md-4"><a  href="http://localhost:8080/TestProject/image/uploade/<%=bean.getCopy_bankaccount()%>"><img class="imgfile" src="./img/pdf-icon.jpg"></a></div>
                                                            </div>
                                                        </div>

                                                        <!--=====================  =====================  =====================  =====================  =====================  =====================-->                                                       
                                                        <%
                                                            if ("สมรส".equals(bean.getStatustype())) {
                                                        %>
                                                        <div class="panel panel-success">
                                                            <div class="panel-heading">
                                                                <h4> :: ข้อมูลคู่สมรส :: </h4>
                                                            </div>
                                                            <div class="panel-body">
                                                                <div class="form-group col-md-12">
                                                                    <label>เลขบัตรประจำตัวประชาชน : &nbsp;&nbsp;<span class="fontblue1" style="color:#0033FF; font-size: 17px;"><%=bean.getCitizen_p()%></span></label>
                                                                    <input  type="hidden" name="citizen_id" value="<%=bean.getCitizen_p()%>">
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label>คำนำหน้า :<span style="color:#0033FF; font-size: 17px;"><%=bean.getTitle_p()%></span></label>
                                                                    <input type="hidden"  name="title_type" value="<%=bean.getTitle_p()%>">
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label for="firstname">ชื่อ : &nbsp;&nbsp;<span  style="color:#0033FF; font-size: 17px;"><%=bean.getFirstname_p()%></span></label>
                                                                    <input  type="hidden" name="firstName" value="<%=bean.getFirstname_p()%>">
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label>นามสกุล: &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getLastname_p()%></span></label>
                                                                    <input type="hidden" name="lastName" value="<%=bean.getLastname_p()%>" >
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label>วันเดือนปีเกิด: &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getBirthdate_p()%></span></label>
                                                                    <input type="hidden" name="birthdate" value="<%=bean.getBirthdate_p()%>">
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label >อายุ: &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getAge_p()%></span> &nbsp;&nbsp;ปี</label>
                                                                    <input  type="hidden" name="age" value="<%=bean.getAge_p()%>">
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label >สัญชาติ : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getNationality_p()%></span></label>
                                                                    <input name="nationality" type="hidden" value="<%=bean.getNationality_p()%>" >
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label >สถานะสมรส : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getStatustype_p()%></span></label>
                                                                    <input type="hidden" name="statustype" value="<%=bean.getStatustype_p()%>"/>
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label>เบอร์โทร : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getMobile_p()%></span></label>
                                                                    <input type="hidden" name="mobile" value="<%=bean.getMobile_p()%>">
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label >อีเมล์ : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getEmail_p()%></span></label>
                                                                    <input type="hidden" name="email"  value="<%=bean.getEmail_p()%>"/>
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label>อาชีพ : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getJobtype_p()%></span></label>
                                                                    <input type="hidden" name="jobtype" value="<%=bean.getJobtype_p()%>">
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label >จังหวัด : &nbsp;&nbsp; <span style="color:#0033FF; font-size: 17px;"><%=bean.getProvince_p()%></span></label>
                                                                    <textarea hidden name="addressregistration" ><%=bean.getProvince_p()%></textarea>
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label>อำเภอ : &nbsp;&nbsp; <span style="color:#0033FF; font-size: 17px;"><%=bean.getAmphur_p()%></span></label>
                                                                    <textarea hidden name="addresscurrent" > <%=bean.getAmphur_p()%></textarea>
                                                                </div>
                                                                <div class="form-group col-md-12">
                                                                    <label>ตำบล  <span style="color:#0033FF; font-size: 17px;"><%=bean.getDistrict_p()%></span></label>
                                                                    <textarea hidden name="addresssenddoc"> <%=bean.getDistrict_p()%></textarea>
                                                                </div>
                                                                <div class="form-group col-md-12">
                                                                    <label>ที่อยู่  <span style="color:#0033FF; font-size: 17px;"><%=bean.getAddress_p()%></span></label>
                                                                    <textarea hidden name="addresssenddoc"> <%=bean.getAddress_p()%></textarea>
                                                                </div>
                                                                <h4> :: ข้อมูลด้านรายได้ ::</h4>
                                                                <div class="form-group col-md-6">
                                                                    <label>รายได้ประจำต่อเดือน: &nbsp;&nbsp; <span style="color:#0033FF; font-size: 17px;"><%=formatter.format(bean.getPeriodloan_p())%>&nbsp;&nbsp;</span>บาท</label>
                                                                    <input  class="form-control" type="hidden" name="periodloan" value="<%=bean.getPeriodloan_p()%>">
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label>รายได้เสริมทั้งหมดเฉลี่ยต่อเดือน : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=formatter.format(bean.getNetprofit_p())%>&nbsp;&nbsp;</span>บาท</label>
                                                                    <input type="hidden" name="netprofit" value="<%=bean.getNetprofit_p()%>">
                                                                </div>
                                                                <h4> :: เอกสารประกอบการขอกู้ ::</h4>
                                                                <div class="form-group">
                                                                    <div class="col-md-8"><h3>เอกสาร</h3>
                                                                    </div>
                                                                    <div class="col-md-4"><h3>ดูรายละเอียด</h3></div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="col-md-8">
                                                                        <label >สำเนาบัตรประจำตัวประชาชน: &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"> <%=bean.getCopyidcard_p()%></span></label>
                                                                        <input  type="hidden" name="copyidcard" value="<%=bean.getCopyidcard_p()%>">
                                                                    </div>
                                                                    <div class="col-md-4"><a  href="http://localhost:8080/TestProject/image/uploade/<%=bean.getCopyidcard_p()%>" target="_blank"><img class="imgfile" src="./img/icon-pdf1.png"></a></div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="col-md-8">
                                                                        <label>สำเนาทะเบียนบ้าน :<span style="color:#0033FF; font-size: 17px;"><%=bean.getCopydocumenthome_p()%></span></label>
                                                                        <input type="hidden" name="copydocumenthome" value="<%=bean.getCopydocumenthome_p()%>">
                                                                    </div>
                                                                    <div class="col-md-4"><a  href="http://localhost:8080/TestProject/image/uploade/<%=bean.getCopydocumenthome_p()%>" target="_blank"><img class="imgfile" src="./img/icon-pdf1.png"></a></div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class=" col-md-8">
                                                                        <label>สลิปเงินเดือน : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getSalary_slip_p()%></span></label>
                                                                        <input  type="hidden" name="salary_slip"  value="<%=bean.getSalary_slip_p()%>">
                                                                    </div>
                                                                    <div class="col-md-4"><a  href="http://localhost:8080/TestProject/image/uploade/<%=bean.getSalary_slip_p()%>"><img class="imgfile" src="./img/icon-pdf1.png"></a></div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class=" col-md-8">
                                                                        <label>สำเนาบัญชีธนาคาร : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getCopy_bankaccount_p()%></span></label>
                                                                        <input type="hidden" name="copy_bankaccount"  value="<%=bean.getCopy_bankaccount_p()%>">
                                                                    </div>
                                                                    <div class="col-md-4"><a  href="http://localhost:8080/TestProject/image/uploade/<%=bean.getCopy_bankaccount_p()%>"><img class="imgfile" src="./img/icon-pdf1.png"></a></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%
                                                            } else {
                                                            }
                                                        %>                              


                                                        <!--=====================  =====================  =====================  =====================  =====================  =====================-->                                                      
                                                        <!--ข้อมูลผู้กู้ผู้ค้ำ-->
                                                        <div class="panel panel-info">
                                                            <div class="panel-heading">
                                                                <h4> :: ข้อมูลผู้ค้ำประกัน :: </h4>
                                                            </div>
                                                            <div class="panel-body">
                                                                <div class="form-group col-md-12">
                                                                    <label>เลขบัตรประจำตัวประชาชน : &nbsp;&nbsp;<span class="fontblue1" style="color:#0033FF; font-size: 17px;"><%=bean.getCitizen_k()%></span></label>
                                                                    <input  type="hidden" name="citizen_id" value="<%=bean.getCitizen_k()%>">
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label>คำนำหน้า :<span style="color:#0033FF; font-size: 17px;"><%=bean.getTitle_k()%></span></label>
                                                                    <input type="hidden"  name="title_type" value="<%=bean.getTitle_k()%>">
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label for="firstname">ชื่อ : &nbsp;&nbsp;<span  style="color:#0033FF; font-size: 17px;"><%=bean.getFirstname_k()%></span></label>
                                                                    <input  type="hidden" name="firstName" value="<%=bean.getFirstname_k()%>">
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label>นามสกุล: &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getLastname_k()%></span></label>
                                                                    <input type="hidden" name="lastName" value="<%=bean.getLastname_k()%>" >
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label>วันเดือนปีเกิด: &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getBirthdate_k()%></span></label>
                                                                    <input type="hidden" name="birthdate" value="<%=bean.getBirthdate_k()%>">
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label >อายุ: &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getAge_k()%></span> &nbsp;&nbsp;ปี</label>
                                                                    <input  type="hidden" name="age" value="<%=bean.getAge_k()%>">
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label >สัญชาติ : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getNationality_k()%></span></label>
                                                                    <input name="nationality" type="hidden" value="<%=bean.getNationality_k()%>" >
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label >สถานะสมรส : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getStatustype_k()%></span></label>
                                                                    <input type="hidden" name="statustype" value="<%=bean.getStatustype_k()%>"/>
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label>เบอร์โทร : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getMobile_k()%></span></label>
                                                                    <input type="hidden" name="mobile" value="<%=bean.getMobile_k()%>">
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label >อีเมล์ : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getEmail_k()%></span></label>
                                                                    <input type="hidden" name="email"  value="<%=bean.getEmail_k()%>"/>
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label>อาชีพ : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getJobtype_k()%></span></label>
                                                                    <input type="hidden" name="jobtype" value="<%=bean.getJobtype_k()%>">
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label >จังหวัด : &nbsp;&nbsp; <span style="color:#0033FF; font-size: 17px;"><%=bean.getProvince_k()%></span></label>
                                                                    <textarea hidden name="addressregistration" ><%=bean.getProvince_k()%></textarea>
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label>อำเภอ : &nbsp;&nbsp; <span style="color:#0033FF; font-size: 17px;"><%=bean.getAmphur_k()%></span></label>
                                                                    <textarea hidden name="addresscurrent" > <%=bean.getAmphur_k()%></textarea>
                                                                </div>
                                                                <div class="form-group col-md-12">
                                                                    <label>ตำบล  <span style="color:#0033FF; font-size: 17px;"><%=bean.getDistrict_k()%></span></label>
                                                                    <textarea hidden name="addresssenddoc"> <%=bean.getDistrict_k()%></textarea>
                                                                </div>
                                                                <div class="form-group col-md-12">
                                                                    <label>ที่อยู่  <span style="color:#0033FF; font-size: 17px;"><%=bean.getAddress_k()%></span></label>
                                                                    <textarea hidden name="addresssenddoc"> <%=bean.getAddress_k()%></textarea>
                                                                </div>
                                                                <h4> :: ข้อมูลด้านรายได้ ::</h4>
                                                                <div class="form-group col-md-6">
                                                                    <label>รายได้ประจำต่อเดือน: &nbsp;&nbsp; <span style="color:#0033FF; font-size: 17px;"><%=formatter.format(bean.getPeriodloan_k())%>&nbsp;&nbsp;</span>บาท</label>
                                                                    <input  class="form-control" type="hidden" name="periodloan" value="<%=bean.getPeriodloan_k()%>">
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label>รายได้เสริมทั้งหมดเฉลี่ยต่อเดือน : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=formatter.format(bean.getNetprofit_k())%>&nbsp;&nbsp;</span>บาท</label>
                                                                    <input type="hidden" name="netprofit" value="<%=bean.getNetprofit_k()%>">
                                                                </div>
                                                                <h4> :: เอกสารประกอบการขอกู้ ::</h4>
                                                                <div class="form-group">
                                                                    <div class="col-md-8"><h3>เอกสาร</h3>
                                                                    </div>
                                                                    <div class="col-md-4"><h3>ดูรายละเอียด</h3></div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="col-md-8">
                                                                        <label >สำเนาบัตรประจำตัวประชาชน: &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"> <%=bean.getCopyidcard_k()%></span></label>
                                                                        <input  type="hidden" name="copyidcard" value="<%=bean.getCopyidcard_k()%>">
                                                                    </div>
                                                                    <div class="col-md-4"><a  href="http://localhost:8080/TestProject/image/uploade/<%=bean.getCopyidcard_k()%>" target="_blank"><img class="imgfile" src="./img/icon-pdf1.png"></a></div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="col-md-8">
                                                                        <label>สำเนาทะเบียนบ้าน :<span style="color:#0033FF; font-size: 17px;"><%=bean.getCopydocumenthome_k()%></span></label>
                                                                        <input type="hidden" name="copydocumenthome" value="<%=bean.getCopydocumenthome_k()%>">
                                                                    </div>
                                                                    <div class="col-md-4"><a  href="http://localhost:8080/TestProject/image/uploade/<%=bean.getCopydocumenthome_k()%>" target="_blank"><img class="imgfile" src="./img/icon-pdf1.png"></a></div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class=" col-md-8">
                                                                        <label>สลิปเงินเดือน : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getSalary_slip_k()%></span></label>
                                                                        <input  type="hidden" name="salary_slip"  value="<%=bean.getSalary_slip_k()%>">
                                                                    </div>
                                                                    <div class="col-md-4"><a  href="http://localhost:8080/TestProject/image/uploade/<%=bean.getSalary_slip_k()%>"><img class="imgfile" src="./img/icon-pdf1.png"></a></div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class=" col-md-8">
                                                                        <label>สำเนาบัญชีธนาคาร : &nbsp;&nbsp;<span style="color:#0033FF; font-size: 17px;"><%=bean.getCopy_bankaccount_k()%></span></label>
                                                                        <input type="hidden" name="copy_bankaccount"  value="<%=bean.getCopy_bankaccount_k()%>">
                                                                    </div>
                                                                    <div class="col-md-4"><a  href="http://localhost:8080/TestProject/image/uploade/<%=bean.getCopy_bankaccount_k()%>"><img class="imgfile" src="./img/icon-pdf1.png"></a></div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <!--=====================  =====================  =====================  =====================  =====================  =====================-->





                                                    </div>
                                                </div> 
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!--</div>-->
    </section><!-- /.content -->



    <div class="container">
        <h2 align="center">กรอกวงเงินอนุมัติ</h2>
        <div class="col-sm-2"></div>
        <div class="col-md-8">
            <div class="row">
                <!--box-->
                <section class="content">
                    <div class="box box-warning">
                        <div class="box-header with-border ">
                            <h3 class="box-title">ให้วงเงิน</h3>
                        </div>
                        <form class="form-horizontal" name="approve" action="SenddatawsapproveAction.do" method="post"  id="register_form" autocomplete="on">

                            <div class="box-body">
                                <div class="form-group">
                                    <label class="col-md-4 control-label">เช็คเครดิตบูโร</label>  
                                    <div class="col-md-6 inputGroupContainer">
                                        <div class="input-group">
                                            <input name="checkburo" type="text" value="<%=bean.getCitizen_id()%>" class="form-control">
                                            <span class="input-group-btn">
                                                <button type="submit" onclick="oncheckburo('checkburo')" class="btn btn-twitter"><i class="glyphicon glyphicon-search"></i> </button>
                                            </span>
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
                                <label class="col-md-4 control-label">รหัสธนาคาร <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-bookmark"></i></span>
                                        <input  name="bank_id" placeholder="กรุณาใส่ชื่อธนาคาร" value="12345bkb" class="form-control"  type="text" >
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">เลขบัตรประชาชนผู้กู้ <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input  name="firstname" value="<%=bean.getCitizen_id()%>" readonly="" class="form-control"  type="text"  >
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">ผลการพิจารณา <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-flag"></i></span>
                                        <input  name="judgment" placeholder="กรุณาใส่ชื่อของคุณ" class="form-control"  type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">สถานะ <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-gift"></i></span>
                                        <!--<input  name="loanstatusbank" placeholder="สถานะ" class="form-control"  type="text">-->
                                        <select name="loanstatusbank" class="form-control">
                                            <option value="อนุมัติ"> อนุมัติ</option>
                                            <option value="ไม่อนุมัติ">ไม่อนุมัติ</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">กรอกวงเงินอนุมัติ <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-bitcoin"></i></span>
                                        <input name="approvedamount" placeholder="กรอกวงเงินอนุมัติ" class="form-control" type="text" >
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">ยอดผ่อนชำระต่อเดือน <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-bitcoin"></i></span>
                                        <input name="installlments" placeholder="กรุณาใส่ยอดผ่อนชำระต่อเดือน" class="form-control"  type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">ระยะเวลาการผ่อน <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                        <select  name="timerepayment" class="form-control">
                                            <!--<option value="">:: เลือก ::</option>-->
                                            <%
                                                for (int i = 1; i <= 30; i++) {
                                                    System.out.print(i + "");
                                            %>
                                            <option value="<%=i%>"><%=i%></option>
                                            <%}
                                            %>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">ตำแหน่งผู้อนุมัติ <span class="star">*</span></label>  
                                <div class="col-md-6 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>

                                        <select name="position"  class="form-control">
                                            <option value="ผู้ตรวจสอบ">ผู้ตรวจสอบ</option>
                                            <option value="ผัวหน้า">หัวหน้า</option>
                                            <option value="ผู้อนุมัติ">ผู้อนุมัติ</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <!--button-->
                                <div align="center">
                                    <input type="hidden" name="todo" value="approve"/>
                                    <button type="submit"  class="btn btn-success"><span class="glyphicon glyphicon-send"></span>  ตกลง</button>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <button type="reset" class="btn btn-warning"><span class="glyphicon glyphicon-refresh"></span>  ยกเลิก</button>
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
    <script type="text/javascript">
        function oncheckburo(select) {
            document.approve.todo.value = select;
            document.approve.submit();
        }
    </script>
    <div>
        <%
            if ("ok".equals(msg)) {
        %>
        <script >
            function Success() {
                $(document).ready(function () {
                    swal({
                        title: "สำเร็จ",
                        text: "คุณอนุมัติเรียบร้อยแล้ว รอลูกค้าตอบกลับ !",
                        type: "success"
                    },
                            function () {
    //                                window.location.href = 'ApproveLoanAction.do?todo=gotoPageUserViewStatus';
                            });
                });
            }
        </script>

        <%} else if ("no".equals(msg)) {
        %>
        <script >
            function Success() {
                swal({
                    title: "ไม่สำเร็จ",
                    text: "คุณอนุมัติไม่สำเร็จ ลองใหม่อีกครั้ง!",
                    type: "error"
                },
                        function () {
    //                        window.location.href = 'PageAction.do?todo=gotoPageDetleRequest';
                        });
            }
            ;

        </script>
        <%   }
        %>
    </div>
    <div>
        <%
            if ("ok".equals(buro)) {
        %>
        <script >
            function Success() {
                $(document).ready(function () {
                    swal({
                        title: "สำเร็จ",
                        text: "ลูกค้าไม่ติด แบล็คลิสต์ !",
                        type: "success"
                    },
                            function () {
    //                                window.location.href = 'ApproveLoanAction.do?todo=gotoPageUserViewStatus';
                            });
                });
            }
        </script>

        <%} else if ("no".equals(buro)) {
        %>
        <script >
            function Success() {
                swal({
                    title: " !ไม่สำเร็จ !",
                    text: "คุณลูกค้าติด แบล็คลิสต์ !",
                    type: "error"
                },
                        function () {
    //                        window.location.href = 'PageAction.do?todo=gotoPageDetleRequest';
                        });
            }
            ;

        </script>
        <%   }
        %>
    </div>
    <!--alert-->

</body>