/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.service;

import com.bean.RequestLoanBean;
import com.dao.RequestLoanDao;
import com.ws.RequestLoanService;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.ws.WebServiceException;

/**
 *
 * @author MAX
 */
public class FileTransferer {

    public String upload(String fileName, byte[] imageBytes) {
        if(imageBytes!= null){
                    
               
        String filePath = "/Users/brass/Documents/Loanbank1/web/image/uploade/" + fileName;
          System.out.println("Received imageBytes:  " + imageBytes);

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
         }
        return  "SUCCESS";
    }

    public byte[] download(String fileName) {
        String filePath = "/Users/brass/Documents/Loanbank1/web/image/uploade/" + fileName;
        System.out.println("Sending file: " + filePath);

        try {
            File file = new File(filePath);
            FileInputStream fis = new FileInputStream(file);
            BufferedInputStream inputStream = new BufferedInputStream(fis);
            byte[] fileBytes = new byte[(int) file.length()];
            inputStream.read(fileBytes);
            inputStream.close();

            return fileBytes;
        } catch (IOException ex) {
            System.err.println(ex);
            throw new WebServiceException(ex);
        }
    }
    
    

}
