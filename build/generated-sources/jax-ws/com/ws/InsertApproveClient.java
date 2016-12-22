
package com.ws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for insertApproveClient complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="insertApproveClient"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="approveLoanBean" type="{http://ws.com/}approveLoanBean" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "insertApproveClient", propOrder = {
    "approveLoanBean"
})
public class InsertApproveClient {

    protected ApproveLoanBean approveLoanBean;

    /**
     * Gets the value of the approveLoanBean property.
     * 
     * @return
     *     possible object is
     *     {@link ApproveLoanBean }
     *     
     */
    public ApproveLoanBean getApproveLoanBean() {
        return approveLoanBean;
    }

    /**
     * Sets the value of the approveLoanBean property.
     * 
     * @param value
     *     allowed object is
     *     {@link ApproveLoanBean }
     *     
     */
    public void setApproveLoanBean(ApproveLoanBean value) {
        this.approveLoanBean = value;
    }

}
