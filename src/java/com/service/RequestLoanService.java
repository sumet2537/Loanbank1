/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.service;

import com.bean.RequestLoanBean;
import com.dao.RequestLoanDao;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MAX
 */
public class RequestLoanService {

    public int RequestLoanService(RequestLoanBean requestLoanBean) {
        RequestLoanDao dao = new RequestLoanDao();
        int result = 0;
        FileTransferer fileTransferer = new FileTransferer();

        try {
            fileTransferer.upload(requestLoanBean.getCopyidcard(), requestLoanBean.getCopyidcardbyte());
            fileTransferer.upload(requestLoanBean.getCopylicenses(), requestLoanBean.getCopylicensesbyte());
            fileTransferer.upload(requestLoanBean.getCopydocumenthome(), requestLoanBean.getCopydocumenthomebyte());
            fileTransferer.upload(requestLoanBean.getCopymarriage(), requestLoanBean.getCopymarriagebyte());
            fileTransferer.upload(requestLoanBean.getCopy_rename(), requestLoanBean.getCopy_renamebyte());
            fileTransferer.upload(requestLoanBean.getSalary_slip(), requestLoanBean.getSalary_slipbyte());
            result = dao.insertbank(requestLoanBean);
        } catch (Exception ex) {
            Logger.getLogger(com.ws.RequestLoanService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
}
