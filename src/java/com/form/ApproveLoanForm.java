/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author brass
 */
public class ApproveLoanForm extends org.apache.struts.action.ActionForm {
    
      private int approve_id;
    private int loanreq_id;
    private String bank_id;
    private String citizen_id;
    private String firstname;
    private String judgment;
    private Double approvedamount;
    private Double installlments;
    private String timerepayment;
    private String createdby;
    private String updateby;
    private String created;
    private String updated;
    private String position;
    private String loanstatusbank;
    private String todo;
    private String loanstatustype;
    private String emailbank;
    private String email;
    private String passemail;

    public int getApprove_id() {
        return approve_id;
    }

    public void setApprove_id(int approve_id) {
        this.approve_id = approve_id;
    }

    public int getLoanreq_id() {
        return loanreq_id;
    }

    public void setLoanreq_id(int loanreq_id) {
        this.loanreq_id = loanreq_id;
    }

    public String getBank_id() {
        return bank_id;
    }

    public void setBank_id(String bank_id) {
        this.bank_id = bank_id;
    }

    public String getCitizen_id() {
        return citizen_id;
    }

    public void setCitizen_id(String citizen_id) {
        this.citizen_id = citizen_id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getJudgment() {
        return judgment;
    }

    public void setJudgment(String judgment) {
        this.judgment = judgment;
    }

    public Double getApprovedamount() {
        return approvedamount;
    }

    public void setApprovedamount(Double approvedamount) {
        this.approvedamount = approvedamount;
    }

    public Double getInstalllments() {
        return installlments;
    }

    public void setInstalllments(Double installlments) {
        this.installlments = installlments;
    }

    public String getTimerepayment() {
        return timerepayment;
    }

    public void setTimerepayment(String timerepayment) {
        this.timerepayment = timerepayment;
    }

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby;
    }

    public String getUpdateby() {
        return updateby;
    }

    public void setUpdateby(String updateby) {
        this.updateby = updateby;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public String getUpdated() {
        return updated;
    }

    public void setUpdated(String updated) {
        this.updated = updated;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getLoanstatusbank() {
        return loanstatusbank;
    }

    public void setLoanstatusbank(String loanstatusbank) {
        this.loanstatusbank = loanstatusbank;
    }

    public String getTodo() {
        return todo;
    }

    public void setTodo(String todo) {
        this.todo = todo;
    }

    public String getLoanstatustype() {
        return loanstatustype;
    }

    public void setLoanstatustype(String loanstatustype) {
        this.loanstatustype = loanstatustype;
    }

    public String getEmailbank() {
        return emailbank;
    }

    public void setEmailbank(String emailbank) {
        this.emailbank = emailbank;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassemail() {
        return passemail;
    }

    public void setPassemail(String passemail) {
        this.passemail = passemail;
    }

    
    
}
