/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.bean.RequestLoanBean;
import com.bean.SenddatawsapproveBean;
import com.bean.UserBean;
import com.dao.ApproveLoanDao;
import com.dao.RequestLoanDao;
import com.dao.UserDao;
import com.form.SenddatawsapproveForm;
import com.ws.ApproveLoanBankWs;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

/**
 *
 * @author brass
 */
public class SenddatawsapproveAction extends DispatchAction {

  public ActionForward approve(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        String msg = "";
        SenddatawsapproveForm loanform = (SenddatawsapproveForm) form;
        SenddatawsapproveBean loan = new SenddatawsapproveBean();
        ApproveLoanDao  senddao = new ApproveLoanDao();
        RequestLoanBean loanb = new  RequestLoanBean();
        RequestLoanDao rdao = new RequestLoanDao();
            com.ws.ApproveLoanBean loanbean = new com.ws.ApproveLoanBean();
//        UserBean user = new UserBean();
        UserDao dao = new UserDao();
      UserBean user = (UserBean) request.getSession().getAttribute("userLogin");
         String name1 = user.getFirstName();
////    
        loan.setApprove_id(0);
        loan.setBank_id(loanform.getBank_id());
        loan.setLoanreq_id(loanform.getLoanreq_id());
         loan.setCitizen_id(loanform.getCitizen_id());
        loan.setJudgment(loanform.getJudgment());
        loan.setLoanstatusbank(loanform.getLoanstatusbank());
        loan.setApprovedamount(loanform.getApprovedamount());
        loan.setInstalllments(loanform.getInstalllments());
        loan.setTimerepayment(loanform.getTimerepayment());
        loan.setPosition(loanform.getPosition());
        loan.setCreatedby(name1);
        loan.setUpdateby(name1);
        
        
         loanbean.setApproveId(0);
        loanbean.setBankId(loanform.getBank_id());
        loanbean.setLoanreqId(loanform.getLoanreq_id());
         loan.setCitizen_id(loanform.getCitizen_id());
        loanbean.setJudgment(loanform.getJudgment());
        loanbean.setLoanstatusbank(loanform.getLoanstatusbank());
        loanbean.setApprovedamount(loanform.getApprovedamount());
        loanbean.setInstalllments(loanform.getInstalllments());
        loanbean.setTimerepayment(loanform.getTimerepayment());
        loanbean.setPosition(loanform.getPosition());
        loanbean.setCreatedby(name1);
        loanbean.setUpdateby(name1);
        
//        updatestatusloan
        loanb.setLoanstatustype(loanform.getLoanstatusbank());
        try {
            rdao.updateBystatus(loanb);
            senddao.insert(loan);
            ApproveLoanBankWs approveLoanbankws = new ApproveLoanBankWs();
            approveLoanbankws.insertApproveClient(loanbean);
            System.out.println("ok");
            msg = "ok";
        } catch (Exception e) {
            e.printStackTrace();
            msg  ="no";
        }

//         List<RequestLoanBean> loanList = new ArrayList<RequestLoanBean>();
//        loanList = dao.selectloanstatustypeRcheck();
//        request.getSession().setAttribute("loanList", loanList);
//        return mapping.findForward("gotoPageManagermentLoan");
        request.removeAttribute("msg");
        request.setAttribute("msgapprove", msg);
        return mapping.findForward("gotoDetle_requestloan");

    }
//
   public ActionForward checkburo(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
       SenddatawsapproveForm formcheck = (SenddatawsapproveForm)form;
       String msg = "";
       formcheck.getCheckburo();
       try{
          msg ="ok";
       }catch (Exception e){
           e.printStackTrace();
           msg="no";
       }
       request.setAttribute("buro", msg);
       return mapping.findForward("gotoDetle_requestloan");
   }
}
