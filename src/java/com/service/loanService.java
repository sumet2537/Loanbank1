/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.xml.ws.WebServiceException;

/**
 *
 * @author brass
 */
public class loanService {
    
    
    public String uploadFile(String fileName, byte[] imageBytes){
        
         String filePath = "/Users/brass/Documents/provider/" + fileName;
         
        try {
            FileOutputStream fos = new FileOutputStream(filePath);
            BufferedOutputStream outputStream = new BufferedOutputStream(fos);
            outputStream.write(imageBytes);
            outputStream.close();
             
            System.out.println("Received file: " + filePath);
             
        } catch (IOException ex) {
            System.err.println(ex);
            throw new WebServiceException(ex);
        }
        
        return "SUCCESS";
    }
    
}
