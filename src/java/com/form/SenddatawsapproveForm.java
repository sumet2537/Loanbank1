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
public class SenddatawsapproveForm extends org.apache.struts.action.ActionForm {
    private int approve_id;
   private String bank_id;
   private int loanreq_id;
   private String firstmaile; //name
   private String judgment;
   private String loanstatusbank;
   private  double  approvedamount;
   private double installlments;
   private String timerepayment;
   private  String position;
   private String createdby;
   private String created;
   private String updateby;
   private String updated;
   private String todo;
   private String checkburo;
private String citizen_id;

    public String getCitizen_id() {
        return citizen_id;
    }

    public void setCitizen_id(String citizen_id) {
        this.citizen_id = citizen_id;
    }


    public String getTodo() {
        return todo;
    }

    public String getCheckburo() {
        return checkburo;
    }

    public void setCheckburo(String checkburo) {
        this.checkburo = checkburo;
    }

    public void setTodo(String todo) {
        this.todo = todo;
    }
   

    public int getApprove_id() {
        return approve_id;
    }

    public void setApprove_id(int approve_id) {
        this.approve_id = approve_id;
    }

    public String getBank_id() {
        return bank_id;
    }

    public void setBank_id(String bank_id) {
        this.bank_id = bank_id;
    }

  

    public int getLoanreq_id() {
        return loanreq_id;
    }

    public void setLoanreq_id(int loanreq_id) {
        this.loanreq_id = loanreq_id;
    }

    public String getFirstmaile() {
        return firstmaile;
    }

    public void setFirstmaile(String firstmaile) {
        this.firstmaile = firstmaile;
    }

    public String getJudgment() {
        return judgment;
    }

    public void setJudgment(String judgment) {
        this.judgment = judgment;
    }

    public String getLoanstatusbank() {
        return loanstatusbank;
    }

    public void setLoanstatusbank(String loanstatusbank) {
        this.loanstatusbank = loanstatusbank;
    }

    public double getApprovedamount() {
        return approvedamount;
    }

    public void setApprovedamount(double approvedamount) {
        this.approvedamount = approvedamount;
    }

    public double getInstalllments() {
        return installlments;
    }

    public void setInstalllments(double installlments) {
        this.installlments = installlments;
    }

    public String getTimerepayment() {
        return timerepayment;
    }

    public void setTimerepayment(String timerepayment) {
        this.timerepayment = timerepayment;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public String getUpdateby() {
        return updateby;
    }

    public void setUpdateby(String updateby) {
        this.updateby = updateby;
    }

    public String getUpdated() {
        return updated;
    }

    public void setUpdated(String updated) {
        this.updated = updated;
    }
   
   
   
   
}
