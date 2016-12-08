/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ws;

import com.bean.RequestLoanBean;
import com.dao.RequestLoanDao;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author brass
 */
@WebService(serviceName = "RequestLoanService")
public class RequestLoanService {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "RequestLoanService")
    public int hello(@WebParam(name = "RequestLoanBean") RequestLoanBean txt) {
        
        RequestLoanDao dao = new RequestLoanDao();
        int result =0;
        try {
           result = dao.insertbank(txt);
        } catch (Exception ex) {
            Logger.getLogger(RequestLoanService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
}
