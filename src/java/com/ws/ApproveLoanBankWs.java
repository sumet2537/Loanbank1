/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ws;

/**
 *
 * @author brass
 */
public class ApproveLoanBankWs {

    public  int insertApproveClient(com.ws.ApproveLoanBean approveLoanBean) {
        com.ws.ApproveClientWebService_Service service = new com.ws.ApproveClientWebService_Service();
        com.ws.ApproveClientWebService port = service.getApproveClientWebServicePort();
        return port.insertApproveClient(approveLoanBean);
    }
    
    
}
