/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.bean.RequestLoanBean;
import com.bean.SenddatawsapproveBean;
import com.dao.ApproveLoanDao;
import com.dao.RequestLoanDao;
import com.form.ApproveLoanForm;
import com.ws.ApproveLoanBean;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.actions.DispatchAction;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;

/**
 *
 * @author brass
 */
public class ApproveLoanAction extends DispatchAction {

    public ActionForward gotoPageUserViewStatus(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        ApproveLoanForm loanform = (ApproveLoanForm) form;
        ApproveLoanBean abean = new ApproveLoanBean();
        ApproveLoanDao adao = new ApproveLoanDao();
        RequestLoanBean loanbean = new RequestLoanBean();
        RequestLoanDao rdao = new RequestLoanDao();
        String msg = "";
        ArrayList<SenddatawsapproveBean> list = null;
//        int loanreq_id = loanbean.getLoanreq_id();
        String citizen = loanbean.getCitizen_id();
        try {

            System.out.println("ok");
            msg = "ok";
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("no");
            msg = "no";
        }
        request.getSession().setAttribute("loanList", list);
        return mapping.findForward("gotoPageUserViewStatus");
    }


    public ActionForward delete(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response) throws Exception {
        ApproveLoanForm loanform = (ApproveLoanForm) form;
        RequestLoanBean bean = new RequestLoanBean();
        RequestLoanDao loandao = new RequestLoanDao();
        ApproveLoanBean abean = new ApproveLoanBean();
        RequestLoanDao rdao = new RequestLoanDao();
        RequestLoanBean loanbean = new RequestLoanBean();
        ApproveLoanDao adao = new ApproveLoanDao();
        String msg = "";
        loanbean = (RequestLoanBean) request.getSession().getAttribute("requestLoan");
        ArrayList<ApproveLoanBean> list1 = null;
        ArrayList<ApproveLoanBean> list = null;
        int loanreq_id = loanbean.getLoanreq_id();
        try {
            String citizen_id = loanbean.getCitizen_id();
            adao.deleteloanreqId(loanform.getApprove_id());    //delete approve by id approve

            loanbean = rdao.selectBycitizenid(citizen_id);  
            System.out.println("ok");
            msg = "ok";
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("no");
            msg = "no";
        }
        request.getSession().setAttribute("loanList1", list1);
        request.getSession().setAttribute("loanList", list);

        request.removeAttribute("deletesuccess");
        request.setAttribute("deletesuccess", msg);
        return mapping.findForward("gotoPageUserViewStatus");
    }
//    ========
//    admin=======

    public ActionForward Detleadmin(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        ApproveLoanForm loanform = (ApproveLoanForm) form;
        ApproveLoanDao adao = new ApproveLoanDao();
        SenddatawsapproveBean abean = new SenddatawsapproveBean();
        String msg = "";
        try {
            abean = adao.selectApprove_id(loanform.getApprove_id());
            System.out.println("ok");
            msg = "ok";
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("no");
            msg = "no";
        }
        request.getSession().setAttribute("abean", abean);
        return mapping.findForward("gotoDetle_ap");

    }

    public ActionForward deleteadmin(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response) throws Exception {
        ApproveLoanForm loanform = (ApproveLoanForm) form;
        ApproveLoanDao dao = new ApproveLoanDao();
        String msg = "";

        try {
            dao.deleteloanreqId(loanform.getApprove_id());
            System.out.println("ok");
            msg = "ok";
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("no");
            msg = "no";
        }
        
         List<SenddatawsapproveBean> regisList = new ArrayList<SenddatawsapproveBean>();
        regisList = dao.selectAll();
        request.getSession().removeAttribute("loanList");
        request.getSession().setAttribute("loanList", regisList);
        request.removeAttribute("deletesuccess");
        request.setAttribute("deletesuccess", msg);
        
        return mapping.findForward("gotoPageAdminManagermentLoanApprove");
    }
}
