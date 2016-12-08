<%-- 
    Document   : detle_requestloan
    Created on : Dec 3, 2016, 11:11:14 AM
    Author     : brass
--%>

<%@page import="com.bean.RequestLoanBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%! RequestLoanBean bean = new RequestLoanBean();%>

<% bean = (RequestLoanBean) request.getSession().getAttribute("editBean");
%> 

<!-- Main content -->
<section class="content">
    <!-- Info boxes -->
    <div class="row">
        <div class="col-md-12">
            <form class="form-horizontal" name="detleForm" action="LoanRequstAction.do" method="post" >
                <!--<div align="center">-->
                <div class="box box-solid" >
                    <br>
                    <h3 align="center"> <strong>ข้อมูลลูกค้า</strong></h3> 
                    <div class="box-body">
                        <div class="row">
                            <fieldset class="col-md-12 col-md-offset-1">
                                <div class="col-lg-10 form-group">
                                    <h4>ลำดับที่ : <%=bean.getLoanreq_id()%>  ข้อมูลคุณ : <%=bean.getFirstName()%> 
                                        <button class="btn btn-sm btn-success pull-right" type="submit" value="แก้ไข" onclick="callActionGotoEdit('gotoadminEdit')"><i class="glyphicon glyphicon-edit"></i>แก้ไขข้อมูล</button>

                                    </h4></div>


                                <!-- select -->
                                <div class="col-lg-10">
                                    <h4>ข้อมูลส่วนตัว</h4>
                                    <hr/>
                                </div>

                                <div class="form-group col-md-12">
                                    <label >เลขบัตรประจำตัวประชาชน   : &nbsp;&nbsp;"<%=bean.getCitizen_id()%> </label>
                                    <input type="hidden" name="citizen_id" value="<%=bean.getCitizen_id()%>"/>
                                </div>
                                <div class="form-group col-md-4">
                                    <label  for="title_type">คำนำหน้า : &nbsp;&nbsp;<%=bean.getTitle_type()%> </label>
                                    <input type="hidden" name="title_type" value="<%=bean.getTitle_type()%>"/>
                                </div>

                                <div class="form-group col-md-4">
                                    <label  for="firstName">ชื่อ : &nbsp;&nbsp; <%=bean.getFirstName()%></label>
                                    <input type="hidden" name="firstName" value=" <%=bean.getFirstName()%>"/>
                                </div>
                                <div class="form-group col-md-4">
                                    <label  for="lastName">นามสกุล : &nbsp;&nbsp; <%=bean.getLastName()%></label>
                                    <input type="hidden" name="lastName" value=" <%=bean.getLastName()%>"/>
                                </div>
                                <div class="form-group col-md-4">
                                    <label  for="birthdate">วันเดือนปีเกิด : &nbsp;&nbsp;  <%=bean.getBirthdate()%></label>
                                    <input type="hidden" name="birthdate" value=" <%=bean.getBirthdate()%>"/>
                                </div>
                                <div class="form-group col-md-4">
                                    <label  for="age">อายุ : &nbsp;&nbsp;  <%=bean.getAge()%>&nbsp;&nbsp;ปี</label>
                                    <input type="hidden" name="age" value=" <%=bean.getAge()%>"/>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="statustype">สถานะสมรส  : &nbsp;&nbsp;<%=bean.getStatustype()%></label>
                                    <input type="hidden" name="statustype" value=" <%=bean.getStatustype()%>"/>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="nationality">สัญชาติ  : &nbsp;&nbsp;<%=bean.getNationality()%></label>
                                    <input type="hidden" name="nationality" value=" <%=bean.getNationality()%>"/>
                                </div>
                                <div class="form-group col-md-4">
                                    <label>เบอร์โทร  : &nbsp;&nbsp;<%=bean.getMobile()%></label>
                                    <input type="hidden" name="mobile" value=" <%=bean.getMobile()%>"/>
                                </div>
                                <div class="form-group col-md-4">
                                    <label >อีเมล์  : &nbsp;&nbsp; <%=bean.getEmail()%></label>
                                    <input type="hidden" name="email" value=" <%=bean.getEmail()%>"/>
                                </div>
                                <div class="form-group col-md-4">
                                    <label >งาน : &nbsp;&nbsp;<%=bean.getJobtype()%></label>
                                    <input type="hidden" name="jobtype" value=" <%=bean.getJobtype()%>"/>
                                </div>
                                <div class="form-group col-md-12">
                                    <label >ที่อยู่ตามทะเบียนบ้าน : &nbsp;&nbsp; <%=bean.getAddressregistration()%></label>
                                    <input type="hidden" name="addressregistration" value=" <%=bean.getAddressregistration()%>"/>
                                </div>
                                <div class="form-group col-md-12">
                                    <label >ที่อยู่ปัจจุบัน   <%=bean.getAddresscurrent()%></label>
                                    <input type="hidden" name="addresscurrent" value=" <%=bean.getAddresscurrent()%>"/>
                                </div>
                                <div class="form-group col-md-12">
                                    <label >ที่อยู่จัดส่งเอกสาร : &nbsp;&nbsp;<%=bean.getAddresssenddoc()%></label>
                                    <input type="hidden" name="addresssenddoc" value=" <%=bean.getAddresssenddoc()%>"/>
                                </div>

                                <br>
                                <div class="col-lg-10">
                                    <h4>ข้อมูลที่อยู่อาศัยที่จะซื้อ</h4>
                                    <hr/>
                                </div>
                                <br>
                                <div class="form-group col-md-4">
                                    <label >ประเภทที่อยู๋อาศัย : &nbsp;&nbsp;<%=bean.getHometype()%></label>
                                    <input type="hidden" name="hometype" value=" <%=bean.getHometype()%>"/>
                                </div>
                                <div class="form-group col-md-4">
                                    <label >ราคาซื้อขาย : &nbsp;&nbsp;<%=bean.getTradingprice()%>&nbsp;&nbsp;บาท</label>
                                    <input type="hidden" name="tradingprice" value=" <%=bean.getTradingprice()%>"/>
                                </div>
                                <div class="form-group col-md-4">
                                    <label >วงเงินสินเชื่อที่ขอกู้ : &nbsp;&nbsp;<%=bean.getCreditloan()%>&nbsp;&nbsp;บาท</label>
                                    <input type="hidden" name="creditloan" value=" <%=bean.getCreditloan()%>"/>
                                </div>
                                <div class="form-group col-md-4">
                                    <label >ระยะเวลาที่ขอกู้ : &nbsp;&nbsp;<%=bean.getLncome_per_month()%>&nbsp;&nbsp;ปี</label>
                                    <input type="hidden" name="lncome_per_month" value=" <%=bean.getLncome_per_month()%>"/>
                                </div>
                                <br>
                                <div class="col-lg-10">
                                    <h4>ข้อมูลด้านรายได้ </h4>
                                    <hr/>
                                </div>
                                <br>
                                <div class="form-group col-md-4">
                                    <label >รายได้ประจำต่อเดือน : &nbsp;&nbsp;<%=bean.getPeriodloan()%>&nbsp;&nbsp;บาท</label>
                                    <input type="hidden" name="periodloan" value=" <%=bean.getPeriodloan()%>"/>
                                </div>
                                <div class="form-group col-md-4">
                                    <label >รายได้เสริมทั้งหมดเฉลี่ยต่อเดือน : &nbsp;&nbsp;<%=bean.getNetprofit()%>&nbsp;&nbsp;บาท</label>
                                    <input type="hidden" name="netprofit" value=" <%=bean.getNetprofit()%>"/>
                                </div>
                                <br>
                                <div class="col-lg-10">
                                    <h4>เอกสารประกอบการขอกู้ </h4>
                                    <hr/>
                                </div>
                                <br>
                                <div class="form-group col-md-12">
                                    <label >สำเนาบัตรประจำตัวประชาชน : &nbsp;&nbsp;<%=bean.getCopyidcard()%></label>
                                    <input type="hidden" name="copyidcard" value=" <%=bean.getCopyidcard()%>"/>
                                </div>
                                <div class="form-group col-md-12">
                                    <label >สำเนาใบอนุญาตประกอบวิชาชีพ (กรณีประกอบวิชาชีพเฉพาะ) : &nbsp;&nbsp;<%=bean.getCopylicenses()%></label>
                                    <input type="hidden" name="copylicenses" value=" <%=bean.getCopylicenses()%>"/>
                                </div>
                                <div class="form-group col-md-12">
                                    <label >สำเนาทะเบียนบ้าน : &nbsp;&nbsp;<%=bean.getCopydocumenthome()%></label>
                                    <input type="hidden" name="copydocumenthome" value=" <%=bean.getCopydocumenthome()%>"/>
                                </div>
                                <div class="form-group col-md-12">
                                    <label >สำเนาทะเบียนสมรส/ใบหย่า : &nbsp;&nbsp;<%=bean.getCopymarriage()%></label>
                                    <input type="hidden" name="copymarriage" value=" <%=bean.getCopymarriage()%>"/>
                                </div>
                                <div class="form-group col-md-12">
                                    <label >ใบเปลี่ยนชื่อ-สกุล (ทุกใบ)  : &nbsp;&nbsp;<%=bean.getCopy_rename()%></label>
                                    <input type="hidden" name="copy_rename" value=" <%=bean.getCopy_rename()%>"/>
                                </div>
                                <div class="form-group col-md-12">
                                    <label >สลิปเงินเดือน : &nbsp;&nbsp;<%=bean.getSalary_slip()%></label>
                                    <input type="hidden" name="salary_slip" value=" <%=bean.getSalary_slip()%>"/>
                                </div>
                                <div class="form-group col-md-12">
                                    <label >สำเนาบัญชีธนาคาร : &nbsp;&nbsp;<%=bean.getCopy_bankaccount()%></label>
                                    <input type="hidden" name="copy_bankaccount" value=" <%=bean.getCopy_bankaccount()%>"/>
                                </div>
                                <br>
                                <div class="col-lg-10">
                                    <h4>ข้อมูลธนาคารที่ต้องการขอกู้</h4>
                                    <hr/>
                                </div>
                                <br>
                                <div class="form-group col-md-4">
                                    <label >ชื่อธนาคารที่ต้องการขอสินเชื่อ : &nbsp;&nbsp;<%=bean.getBanktype()%></label>
                                </div>
                                <div class="form-group col-md-4">
                                    <label >สถานะขอสินเชื่อ : &nbsp;&nbsp;<%=bean.getLoanstatustype()%></label>
                                </div>
                                <div class="col-lg-10">
                                    <hr/>
                                </div>
                                <div class="form-group col-md-12">
                                    <label >วันที่ขอสินเชื่อ : &nbsp;&nbsp;<%=bean.getCreated()%></label>
                                </div>
                                <div class="form-group col-md-12">

                                    <div id="chk" class="btn-group" data-toggle="buttons" style="text-align: center;">
                                        <label class="btn btn-primary">
                                            <span class="glyphicon"></span>
                                            <input type="checkbox" name="blue"  onclick="callCheckboxActive('')">กรุงเทพ
                                        </label>&nbsp;&nbsp;
                                        <label class="btn btn-primary">
                                            <span class="glyphicon"></span>
                                            <input type="checkbox" name="red"  onclick="callCheckboxActive('')">กรุงไทย
                                        </label>&nbsp;&nbsp;
                                        <label class="btn btn-primary">
                                            <span class="glyphicon"></span>
                                            <input type="checkbox" name="green"  onclick="callCheckboxActive('')">ธนชาติ
                                        </label>&nbsp;&nbsp;
                                        <label class="btn btn-primary">
                                            <span class="glyphicon"></span>
                                            <input type="checkbox" name="yellow"  onclick="callCheckboxActive('')">ทหารไทย
                                        </label>&nbsp;&nbsp;
                                        <label class="btn btn-primary">
                                            <span class="glyphicon"></span>
                                            <input type="checkbox"  name="skyblue"  onclick="callCheckboxActive('this')">ไทยพาณิชย์
                                        </label>&nbsp;&nbsp;
                                        <label class="btn btn-primary">
                                            <span class="glyphicon"></span>
                                            <input type="checkbox" name="blue"  onclick="callCheckboxActive('')">กรุงศรีอยุทยา
                                        </label>&nbsp;&nbsp;
                                        <label class="btn btn-primary">
                                            <span class="glyphicon"></span>
                                            <input type="checkbox" name="red"  onclick="callCheckboxActive('this')">ออมสิน
                                        </label>&nbsp;&nbsp;
                                        <label class="btn btn-primary">
                                            <span class="glyphicon"></span>
                                            <input type="checkbox" name="red"  onclick="callCheckboxActive('this')">กสิกรไทย
                                        </label>
                                    </div>
                                </div>
                                <!--  End Check Box -->
                                <input type="hidden" name="loanstatustype" value="รออนุมัติ"/>
                                <input type="hidden" name="todo"/>
                                <div class="col-lg-10" align="center" style="margin-top: 20px;">
                                    <button class="btn btn-success" type="submit" onclick="callActioninsert('insertbank')">ส่งข้อมูลให้แบ้ง</button>
                                    <button class="btn btn-warning" type="submit" onclick="callActioninsert('inserttoemail')">ข้อมูลไม่ครบ</button>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!--</div>-->
</section><!-- /.content -->


<script type="text/javascript">
    function callActionGotoEdit(select) {
        document.detleForm.todo.value = select;
        document.detleForm.submit();
    }
    function callCheckboxActive() {

        $('#chk').find('.active').removeClass('active');
        $('#chk').find('.btn').find('.glyphicon-ok').removeClass('glyphicon-ok');
        $('#chk').find("input[type='checkbox']:checked").parent('.btn').addClass('active');
        $('#chk').find("input[type='checkbox']:checked").parent('.btn').find('span').addClass('glyphicon-ok');
    }
    function callRadioActive() {

        $('#rdo').find('.btn-info').removeClass('btn-info');
        $('#rdo').find('.active').removeClass('active');
        $('#rdo').find('.btn').find('.glyphicon-ok').removeClass('glyphicon-ok');
        $('#rdo').find("input[type='radio']:checked").parent('.btn').addClass('active');
        $('#rdo').find("input[type='radio']:checked").parent('.btn').addClass('btn-info');
        $('#rdo').find("input[type='radio']:checked").parent('.btn').find('span').addClass('glyphicon-ok');
    }
</script>


