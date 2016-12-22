/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.bean.RequestLoanBean;
import com.bean.UserBean;
import com.dao.RequestLoanDao;
import com.dao.UserDao;
import com.form.RequestLoanForm;
import com.form.registerForm;
import com.util.FileUploadUtil;
import java.io.FileOutputStream;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.actions.DispatchAction;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
import org.apache.struts.upload.FormFile;

/**
 *
 * @author brass
 */
public class LoanRequstAction extends DispatchAction {

    public ActionForward insertbank(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        RequestLoanForm loanform = (RequestLoanForm) form;
        RequestLoanBean loanbean = new RequestLoanBean();
        loanbean.setLoan_id(0);
        loanbean.setLoanreq_id(loanform.getLoanreq_id());
        loanbean.setCitizen_id(loanform.getCitizen_id());
        loanbean.setTitle_type(loanform.getTitle_type());
        loanbean.setFirstName(loanform.getFirstName());
        loanbean.setLastName(loanform.getLastName());
        loanbean.setBirthdate(loanform.getBirthdate());
        loanbean.setAge(loanform.getAge());
        loanbean.setStatustype(loanform.getStatustype());
        loanbean.setMobile(loanform.getMobile());
        loanbean.setEmail(loanform.getEmail());
        
        loanbean.setNationality(loanform.getNationality());
        loanbean.setJobtype(loanform.getJobtype());
         loanbean.setProvince(loanform.getProvince());
        loanbean.setAmphur(loanform.getAmphur());
        loanbean.setDistrict(loanform.getDistrict());
        loanbean.setAddress(loanform.getAddress());
        loanbean.setHometype(loanform.getHometype());
        loanbean.setTradingprice(loanform.getTradingprice());
        loanbean.setCreditloan(loanform.getCreditloan());
        loanbean.setLncome_per_month(loanform.getLncome_per_month());
        loanbean.setPeriodloan(loanform.getPeriodloan());
        loanbean.setNetprofit(loanform.getNetprofit());
//        
//        
//        FileUploadUtil upload = new FileUploadUtil();
//       FileOutputStream outputStream = null;
//        FormFile file = null;
//        String file1 = loanform.getCopyidcard().getFileName();
//        if (file1.equals("")) {
//            loanbean.setCopyidcard("nofile");
//        } else {
//       loanbean.setCopyidcard(upload.fileinputStream(loanform.getCopyidcard()));
//        }
//        String file2 = loanform.getCopylicenses().getFileName();
//       if(file2.equals("")){
//           loanbean.setCopylicenses("nofile");
//       }else{
//       loanbean.setCopylicenses(upload.fileinputStream(loanform.getCopylicenses()));
//       }
//          String file3 = loanform.getCopydocumenthome().getFileName();
//       if(file3.equals("")){
//           loanbean.setCopydocumenthome("nofile");
//       }else{
//       loanbean.setCopydocumenthome(upload.fileinputStream(loanform.getCopydocumenthome()));
//       }
//          String file4 = loanform.getCopymarriage().getFileName();
//       if(file4.equals("")){
//           loanbean.setCopymarriage("nofile");
//       }else{
//       loanbean.setCopymarriage(upload.fileinputStream(loanform.getCopymarriage()));
//       }
//            String file5 = loanform.getCopy_rename().getFileName();
//       if(file5.equals("")){
//           loanbean.setCopy_rename("nofile");
//       }else{
//       loanbean.setCopy_rename(upload.fileinputStream(loanform.getCopy_rename()));
//       }
//            String file6 = loanform.getSalary_slip().getFileName();
//       if(file6.equals("")){
//           loanbean.setSalary_slip("nofile");
//       }else{
//       loanbean.setSalary_slip(upload.fileinputStream(loanform.getSalary_slip()));
//       }
//            String file7 = loanform.getCopy_bankaccount().getFileName();
//       if(file7.equals("")){
//           loanbean.setCopy_bankaccount("nofile");
//       }else{
//       loanbean.setCopy_bankaccount(upload.fileinputStream(loanform.getCopy_bankaccount()));
//       }
//        System.out.println("++++++++++++"+loanform.getCopyidcard().getFileName());

        loanbean.setCopyidcard(loanform.getCopyidcard());
        loanbean.setCopylicenses(loanform.getCopylicenses());
        loanbean.setCopydocumenthome(loanform.getCopydocumenthome());
        loanbean.setCopymarriage(loanform.getCopymarriage());
        loanbean.setCopy_rename(loanform.getCopy_rename());
        loanbean.setSalary_slip(loanform.getSalary_slip());
        loanbean.setCopy_bankaccount(loanform.getCopy_bankaccount());
        
          //=============================================คุ๋สมรส==========================================================================================
//        String statustype = loanform.getStatustype();
//        if (statustype.equals("สมรส")) {
            loanbean.setCitizen_p(loanform.getCitizen_p());
            loanbean.setTitle_p(loanform.getTitle_p());
            loanbean.setFirstname_p(loanform.getFirstname_p());
            loanbean.setLastname_p(loanform.getLastname_p());
            loanbean.setBirthdate_p(loanform.getBirthdate_p());
            loanbean.setAge_p(loanform.getAge_p());
            loanbean.setNationality_p(loanform.getNationality_p());
            loanbean.setStatustype_p(loanform.getStatustype_p());
            loanbean.setMobile_p(loanform.getMobile_p());
            loanbean.setEmail_p(loanform.getEmail_p());
            loanbean.setProvince_p(loanform.getProvince_p());
            loanbean.setAmphur_p(loanform.getAmphur_p());
            loanbean.setDistrict_p(loanform.getDistrict_p());
            loanbean.setAddress_p(loanform.getAddress_p());
            loanbean.setJobtype_p(loanform.getJobtype_p());
            loanbean.setPeriodloan_p(loanform.getPeriodloan_p());
            loanbean.setNetprofit_p(loanform.getNetprofit_p());
//        
            loanbean.setCopyidcard_p(loanform.getCopyidcard_p());
            loanbean.setCopydocumenthome_p(loanform.getCopydocumenthome_p());
            loanbean.setSalary_slip_p(loanform.getSalary_slip_p());
            loanbean.setCopy_bankaccount_p(loanform.getCopy_bankaccount_p());

//            String file8 = loanform.getCopyidcard_p();
//            if (file8.equals("")) {
//                loanbean.setCopyidcardP(loan.getCopyidcard_p());
//            } else {
//                loanbean.setCopyidcardP(file8);
//                loanbean.setCopyidcardPbyte(upload.fileToByteArray(file8));
//            }
//
//            String file9 = loanform.getCopydocumenthome_p();
//            if (file9.equals("")) {
//                loanbean.setCopydocumenthomeP(loan.getCopydocumenthome_p());
//            } else {
//                loanbean.setCopydocumenthomeP(file9);
//                loanbean.setCopydocumenthomePbyte(upload.fileToByteArray(file9));
//            }
//            String file10 = loanform.getSalary_slip_p();
//            if (file10.equals("")) {
//                loanbean.setSalarySlipP(loan.getSalary_slip_p());
//            } else {
//                loanbean.setSalarySlipP(file10);
//                loanbean.setSalarySlipPbyte(upload.fileToByteArray(file10));
//            }
//            String file11 = loanform.getCopy_bankaccount_p();
//            if (file11.equals("")) {
//                loanbean.setCopyBankaccountP(loan.getCopy_bankaccount_p());
//            } else {
//                loanbean.setCopyBankaccountP(file11);
//                loanbean.setCopyBankaccountPbyte(upload.fileToByteArray(file11));
//            }

//        } else {
//        }
//==================================================ผู้ค้ำประกัน=====================================================================================

        loanbean.setCitizen_k(loanform.getCitizen_k());
        loanbean.setTitle_k(loanform.getTitle_k());
        loanbean.setFirstname_k(loanform.getFirstname_k());
        loanbean.setLastname_k(loanform.getLastname_k());
        loanbean.setBirthdate_k(loanform.getBirthdate_k());
        loanbean.setAge_k(loanform.getAge_k());
        loanbean.setNationality_k(loanform.getNationality_k());
        loanbean.setStatustype_k(loanform.getStatustype_k());
        loanbean.setMobile_k(loanform.getMobile_k());
        loanbean.setEmail_k(loanform.getEmail_k());
        loanbean.setProvince_k(loanform.getProvince_k());
        loanbean.setAmphur_k(loanform.getAmphur_k());
        loanbean.setDistrict_k(loanform.getDistrict_k());
        loanbean.setAddress_k(loanform.getAddress_k());
        loanbean.setJobtype_k(loanform.getJobtype_k());
        loanbean.setPeriodloan_k(loanform.getPeriodloan_k());
        loanbean.setNetprofit_k(loanform.getNetprofit_k());
//        
        loanbean.setCopyidcard_k(loanform.getCopyidcard_k());
        loanbean.setCopydocumenthome_k(loanform.getCopydocumenthome_k());
        loanbean.setSalary_slip_k(loanform.getSalary_slip_k());
        loanbean.setCopy_bankaccount_k(loanform.getCopy_bankaccount_k());

//        String file12 = loanform.getCopyidcard_k();
//            if (file12.equals("")) {
//                loanbean.setCopyidcardK(loan.getCopyidcard_k());
//            } else {
//                loanbean.setCopyidcardK(file12);
//                loanbean.setCopyidcardKv(upload.fileToByteArray(file12));
//            }
//
//            String file13 = loanform.getCopydocumenthome_k();
//            if (file13.equals("")) {
//                loanbean.setCopydocumenthomeK(loan.getCopydocumenthome_p());
//            } else {
//                loanbean.setCopydocumenthomeK(file13);
//                loanbean.setCopydocumenthomeKv(upload.fileToByteArray(file13));
//            }
//            String file14 = loanform.getSalary_slip_k();
//            if (file14.equals("")) {
//                loanbean.setSalarySlipK(loan.getSalary_slip_p());
//            } else {
//                loanbean.setSalarySlipP(file14);
//                loanbean.setSalarySlipKbyte(upload.fileToByteArray(file14));
//            }
//            String file15 = loanform.getCopy_bankaccount_p();
//            if (file15.equals("")) {
//                loanbean.setCopyBankaccountK(loan.getCopy_bankaccount_k());
//            } else {
//                loanbean.setCopyBankaccountK(file15);
//                loanbean.setCopyBankaccountKbyte(upload.fileToByteArray(file15));
//            }
//=======================================================================================================================================
        loanbean.setLoanstatustype(loanform.getLoanstatustype());
        loanbean.setCreateby(loanform.getCreateby());
        loanbean.setCreated(loanform.getCreated());
        loanbean.setUpdateby(loanform.getUpdateby());
        loanbean.setUpdated(loanform.getUpdated());

        RequestLoanDao dao = new RequestLoanDao();
        dao.insertbank(loanbean);
        List<RequestLoanBean> loanList = new ArrayList<RequestLoanBean>();
        loanList = dao.selectAll();

        request.getSession().setAttribute("loanList", loanList);
        return mapping.findForward("gotoPageManagermentLoan");

    }

   
    
    public ActionForward gotoshowdatarequest(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception  {
     RequestLoanForm loanform = (RequestLoanForm)form;
     RequestLoanDao loandao  =new RequestLoanDao();
      RequestLoanBean loanbean = new RequestLoanBean();
      
 loanbean = loandao.selectById(loanform.getLoanreq_id());
     
     request.getSession().setAttribute("loanbean", loanbean);
        return mapping.findForward("gotoshowdatarequest");
    }
      public ActionForward gotoapprov(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception  {
     RequestLoanForm loanform = (RequestLoanForm)form;
     RequestLoanDao loandao  =new RequestLoanDao();
      RequestLoanBean loanbean = new RequestLoanBean();
      
 loanbean = loandao.selectloanstatustype(loanform.getLoanstatustype());
     
     request.getSession().setAttribute("loanbean", loanbean);
        return mapping.findForward("gotoapprov");
        
    }
    
//          public ActionForward Detle(ActionMapping mapping, ActionForm form,
//            HttpServletRequest request, HttpServletResponse response)
//            throws Exception {
//         RequestLoanForm loanform = (RequestLoanForm)form;
//     RequestLoanDao loandao  =new RequestLoanDao();
//       RequestLoanBean bean = loandao.selectById(loanform.getLoanreq_id());
//        
//        request.getSession().setAttribute("editBean", bean);
//        return mapping.findForward("gotoDetle_requestloan");
//    }
//          
//          
//      public ActionForward delete(ActionMapping mapping,ActionForm form,
//              HttpServletRequest request,HttpServletResponse response)throws Exception{
//        RequestLoanForm loanform = (RequestLoanForm)form;
//        RequestLoanBean bean = new RequestLoanBean();
//     RequestLoanDao loandao  =new RequestLoanDao();
//     
//     loandao.deleteloanreqId(loanform.getLoanreq_id());
//     
//     List<RequestLoanBean> requestList = new ArrayList<RequestLoanBean>();
//     requestList = loandao.selectAll();
//     request.getSession().setAttribute("requestList", requestList);
//      return mapping.findForward("gotoPageManagermentLoan");
//      }
      
        public ActionForward DetleRcheck(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        RequestLoanForm loanform = (RequestLoanForm) form;
        RequestLoanDao loandao = new RequestLoanDao();
        RequestLoanBean bean = new RequestLoanBean();
        String msg = null;
            try {
             bean = loandao.selectById(loanform.getLoanreq_id());
                msg = "ok";
            } catch (Exception e) {
                e.printStackTrace();
                msg = "no";
            }
        request.getSession().removeAttribute("checkApprove");
        request.getSession().setAttribute("checkApprove", bean);
        request.removeAttribute("msg");
        request.setAttribute("msg", msg);
        return mapping.findForward("gotoDetle_requestloan");
    }
        
    public ActionForward deleteRcheck(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response) throws Exception {
        RequestLoanForm loanform = (RequestLoanForm) form;
        RequestLoanBean bean = new RequestLoanBean();
        RequestLoanDao loandao = new RequestLoanDao();
        String msg = "";
        try {
            loandao.deleteloanreqId(loanform.getLoanreq_id());
            System.out.println("ok");
            msg = "ok";
        } catch (Exception e) {
            e.printStackTrace();
            msg = "no";
        }

        List<RequestLoanBean> loanList = new ArrayList<RequestLoanBean>();
        loanList = loandao.selectAll();
        request.getSession().removeAttribute("loanList");
        request.getSession().setAttribute("loanList", loanList);
        request.removeAttribute("deletesuccess");
        request.setAttribute("deletesuccess", msg);
        return mapping.findForward("gotoPageManagermentLoan");
    }
}
