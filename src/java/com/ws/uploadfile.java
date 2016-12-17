/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ws;

import com.service.FileTransferer;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author brass
 */
@WebService(serviceName = "uploadfile")
public class uploadfile {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "uploadFilePDF")
    public String uploadFilePDF(@WebParam(name = "filename") String filename, @WebParam(name = "pdf") byte [] pdf) {
        //TODO write your implementation code here:
        FileTransferer ls = new FileTransferer();
        return ls.upload(filename, pdf);
    }
}
