/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.bean.ApproveLoanBean;
import com.bean.RequestLoanBean;
import com.bean.SenddatawsapproveBean;
import com.bean.UserBean;
import com.dao.ApproveLoanDao;
import com.dao.RequestLoanDao;
import com.dao.UserDao;
import com.form.PageForm;
import com.form.RequestLoanForm;
import com.form.registerForm;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.actions.DispatchAction;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;

/**
 *
 * @author kohun_000
 */
public class PageAction extends DispatchAction {

  

    public ActionForward gotoPageRegister(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward("gotoPageRegister");

    }

    public ActionForward gotoPageHome(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        return mapping.findForward("gotoPageHome");
    }

    public ActionForward gotoPageLogin(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        return mapping.findForward("gotoPageLogin");
    }

    public ActionForward gotoPageAdminManagermentLoanrequest(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        return mapping.findForward(" gotoPageAdminManagermentLoanrequest");
    }

    public ActionForward gotoPageManagermentLoan(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        List<RequestLoanBean> requestList = new ArrayList<RequestLoanBean>();
        RequestLoanDao dao = new RequestLoanDao();

        requestList = dao.selectAll();
        request.getSession().setAttribute("requestList", requestList);
        return mapping.findForward("gotoPageManagermentLoan");
    }

    public ActionForward gotoProfile(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        PageForm pageForm = (PageForm) form;
        UserBean userBean = pageForm.getUserSession();

        if (userBean != null) {
            System.out.println("user login : " + userBean.getUsername());
        }
        return mapping.findForward("gotoPageProfile");
    }

    public ActionForward gotoPageProfile(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        PageForm pageForm = (PageForm) form;
        UserBean userBean = new UserBean();
        userBean = (UserBean) request.getSession().getAttribute("userLogin");
        int userid = userBean.getUser_id();
        UserDao dao = new UserDao();
        userBean = dao.selectByUserId(userid);

        request.getSession().setAttribute("profiledate", userBean);
        return mapping.findForward("gotoPageProfile");
    }


    //    ================================gotoPageAdminManagermen====================================
    public ActionForward gotoPageAdminManagermentLoanApprove(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
          PageForm pageForm = (PageForm) form;
        List<SenddatawsapproveBean> loanList = new ArrayList<SenddatawsapproveBean>();
        ApproveLoanDao dao = new ApproveLoanDao();

        loanList = dao.selectAll();
        request.getSession().setAttribute("loanList", loanList);
        return mapping.findForward("gotoPageAdminManagermentLoanApprove");

    }

}
