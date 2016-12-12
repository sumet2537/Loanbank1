/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bean;

/**
 *
 * @author brass
 */
public class RequestLoanBean {


    private int loan_id;
    private int loanreq_id;

    private String citizen_id;
    private String title_type;
    private String firstName;
    private String lastName;
    private String birthdate;
    private int age;
    private String nationality;
    private String statustype;
    private String mobile;
    private String email;
    private String addressregistration;
    private String addresscurrent;
    private String addresssenddoc;
    private String jobtype;
    private String hometype;
    private Double tradingprice;
    private Double creditloan;
    private int lncome_per_month;
    private Double periodloan;
    private Double netprofit;

    private String copyidcard;
    private String copylicenses;
    private String copydocumenthome;
    private String copymarriage;
    private String copy_rename;
    private String salary_slip;
    private String copy_bankaccount;

    private byte[] copyidcardbyte;
    private byte[] copylicensesbyte;
    private byte[] copydocumenthomebyte;
    private byte[] copymarriagebyte;
    private byte[] copy_renamebyte;
    private byte[] salary_slipbyte;
    private byte[] copy_bankaccountbyte;

    private String banktype;
    private String loanstatustype;

    private String createby;
    private String created;
    private String updated;
    private String updateby;

    private String status;
    private String todo;

    public int getLoan_id() {
        return loan_id;
    }

    public void setLoan_id(int loan_id) {
        this.loan_id = loan_id;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public int getLoanreq_id() {
        return loanreq_id;
    }

    public void setLoanreq_id(int loanreq_id) {
        this.loanreq_id = loanreq_id;
    }

    public String getCitizen_id() {
        return citizen_id;
    }

    public void setCitizen_id(String citizen_id) {
        this.citizen_id = citizen_id;
    }

    public String getTitle_type() {
        return title_type;
    }

    public void setTitle_type(String title_type) {
        this.title_type = title_type;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getStatustype() {
        return statustype;
    }

    public void setStatustype(String statustype) {
        this.statustype = statustype;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddressregistration() {
        return addressregistration;
    }

    public void setAddressregistration(String addressregistration) {
        this.addressregistration = addressregistration;
    }

    public String getAddresscurrent() {
        return addresscurrent;
    }

    public void setAddresscurrent(String addresscurrent) {
        this.addresscurrent = addresscurrent;
    }

    public String getAddresssenddoc() {
        return addresssenddoc;
    }

    public void setAddresssenddoc(String addresssenddoc) {
        this.addresssenddoc = addresssenddoc;
    }

    public String getJobtype() {
        return jobtype;
    }

    public void setJobtype(String jobtype) {
        this.jobtype = jobtype;
    }

    public String getHometype() {
        return hometype;
    }

    public void setHometype(String hometype) {
        this.hometype = hometype;
    }

    public int getLncome_per_month() {
        return lncome_per_month;
    }

    public void setLncome_per_month(int lncome_per_month) {
        this.lncome_per_month = lncome_per_month;
    }

    public Double getTradingprice() {
        return tradingprice;
    }

    public void setTradingprice(Double tradingprice) {
        this.tradingprice = tradingprice;
    }

    public Double getCreditloan() {
        return creditloan;
    }

    public void setCreditloan(Double creditloan) {
        this.creditloan = creditloan;
    }

    public Double getPeriodloan() {
        return periodloan;
    }

    public void setPeriodloan(Double periodloan) {
        this.periodloan = periodloan;
    }

    public Double getNetprofit() {
        return netprofit;
    }

    public void setNetprofit(Double netprofit) {
        this.netprofit = netprofit;
    }

    public String getUpdated() {
        return updated;
    }

    public void setUpdated(String updated) {
        this.updated = updated;
    }

    public String getCopyidcard() {
        return copyidcard;
    }

    public void setCopyidcard(String copyidcard) {
        this.copyidcard = copyidcard;
    }

    public String getCopylicenses() {
        return copylicenses;
    }

    public void setCopylicenses(String copylicenses) {
        this.copylicenses = copylicenses;
    }

    public String getCopydocumenthome() {
        return copydocumenthome;
    }

    public void setCopydocumenthome(String copydocumenthome) {
        this.copydocumenthome = copydocumenthome;
    }

    public String getCopymarriage() {
        return copymarriage;
    }

    public void setCopymarriage(String copymarriage) {
        this.copymarriage = copymarriage;
    }

    public String getCopy_rename() {
        return copy_rename;
    }

    public void setCopy_rename(String copy_rename) {
        this.copy_rename = copy_rename;
    }

    public String getSalary_slip() {
        return salary_slip;
    }

    public void setSalary_slip(String salary_slip) {
        this.salary_slip = salary_slip;
    }

    public String getCopy_bankaccount() {
        return copy_bankaccount;
    }

    public void setCopy_bankaccount(String copy_bankaccount) {
        this.copy_bankaccount = copy_bankaccount;
    }

    public String getBanktype() {
        return banktype;
    }

    public void setBanktype(String banktype) {
        this.banktype = banktype;
    }

    public String getLoanstatustype() {
        return loanstatustype;
    }

    public void setLoanstatustype(String loanstatustype) {
        this.loanstatustype = loanstatustype;
    }

    public String getCreateby() {
        return createby;
    }

    public void setCreateby(String createby) {
        this.createby = createby;
    }

    public String getUpdateby() {
        return updateby;
    }

    public void setUpdateby(String updateby) {
        this.updateby = updateby;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTodo() {
        return todo;
    }

    public void setTodo(String todo) {
        this.todo = todo;
    }

    public byte[] getCopyidcardbyte() {
        return copyidcardbyte;
    }

    public void setCopyidcardbyte(byte[] copyidcardbyte) {
        this.copyidcardbyte = copyidcardbyte;
    }

    public byte[] getCopylicensesbyte() {
        return copylicensesbyte;
    }

    public void setCopylicensesbyte(byte[] copylicensesbyte) {
        this.copylicensesbyte = copylicensesbyte;
    }

    public byte[] getCopydocumenthomebyte() {
        return copydocumenthomebyte;
    }

    public void setCopydocumenthomebyte(byte[] copydocumenthomebyte) {
        this.copydocumenthomebyte = copydocumenthomebyte;
    }

    public byte[] getCopymarriagebyte() {
        return copymarriagebyte;
    }

    public void setCopymarriagebyte(byte[] copymarriagebyte) {
        this.copymarriagebyte = copymarriagebyte;
    }

    public byte[] getCopy_renamebyte() {
        return copy_renamebyte;
    }

    public void setCopy_renamebyte(byte[] copy_renamebyte) {
        this.copy_renamebyte = copy_renamebyte;
    }

    public byte[] getSalary_slipbyte() {
        return salary_slipbyte;
    }

    public void setSalary_slipbyte(byte[] salary_slipbyte) {
        this.salary_slipbyte = salary_slipbyte;
    }

    public byte[] getCopy_bankaccountbyte() {
        return copy_bankaccountbyte;
    }

    public void setCopy_bankaccountbyte(byte[] copy_bankaccountbyte) {
        this.copy_bankaccountbyte = copy_bankaccountbyte;
    }

}
