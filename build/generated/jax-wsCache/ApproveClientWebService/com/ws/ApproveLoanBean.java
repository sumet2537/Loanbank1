
package com.ws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for approveLoanBean complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="approveLoanBean"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="approve_id" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="approvedamount" type="{http://www.w3.org/2001/XMLSchema}double" minOccurs="0"/&gt;
 *         &lt;element name="bankName" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="bank_id" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="citizen_id" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="created" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="createdby" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="firstName" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="installlments" type="{http://www.w3.org/2001/XMLSchema}double" minOccurs="0"/&gt;
 *         &lt;element name="judgment" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="loanreq_id" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="loanstatusbank" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="loanstatustype" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="position" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="timerepayment" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="todo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="updateby" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="updated" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "approveLoanBean", propOrder = {
    "approveId",
    "approvedamount",
    "bankName",
    "bankId",
    "citizenId",
    "created",
    "createdby",
    "firstName",
    "installlments",
    "judgment",
    "loanreqId",
    "loanstatusbank",
    "loanstatustype",
    "position",
    "timerepayment",
    "todo",
    "updateby",
    "updated"
})
public class ApproveLoanBean {

    @XmlElement(name = "approve_id")
    protected int approveId;
    protected Double approvedamount;
    protected String bankName;
    @XmlElement(name = "bank_id")
    protected String bankId;
    @XmlElement(name = "citizen_id")
    protected String citizenId;
    protected String created;
    protected String createdby;
    protected String firstName;
    protected Double installlments;
    protected String judgment;
    @XmlElement(name = "loanreq_id")
    protected int loanreqId;
    protected String loanstatusbank;
    protected String loanstatustype;
    protected String position;
    protected String timerepayment;
    protected String todo;
    protected String updateby;
    protected String updated;

    /**
     * Gets the value of the approveId property.
     * 
     */
    public int getApproveId() {
        return approveId;
    }

    /**
     * Sets the value of the approveId property.
     * 
     */
    public void setApproveId(int value) {
        this.approveId = value;
    }

    /**
     * Gets the value of the approvedamount property.
     * 
     * @return
     *     possible object is
     *     {@link Double }
     *     
     */
    public Double getApprovedamount() {
        return approvedamount;
    }

    /**
     * Sets the value of the approvedamount property.
     * 
     * @param value
     *     allowed object is
     *     {@link Double }
     *     
     */
    public void setApprovedamount(Double value) {
        this.approvedamount = value;
    }

    /**
     * Gets the value of the bankName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getBankName() {
        return bankName;
    }

    /**
     * Sets the value of the bankName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setBankName(String value) {
        this.bankName = value;
    }

    /**
     * Gets the value of the bankId property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getBankId() {
        return bankId;
    }

    /**
     * Sets the value of the bankId property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setBankId(String value) {
        this.bankId = value;
    }

    /**
     * Gets the value of the citizenId property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCitizenId() {
        return citizenId;
    }

    /**
     * Sets the value of the citizenId property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCitizenId(String value) {
        this.citizenId = value;
    }

    /**
     * Gets the value of the created property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCreated() {
        return created;
    }

    /**
     * Sets the value of the created property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCreated(String value) {
        this.created = value;
    }

    /**
     * Gets the value of the createdby property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCreatedby() {
        return createdby;
    }

    /**
     * Sets the value of the createdby property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCreatedby(String value) {
        this.createdby = value;
    }

    /**
     * Gets the value of the firstName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * Sets the value of the firstName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFirstName(String value) {
        this.firstName = value;
    }

    /**
     * Gets the value of the installlments property.
     * 
     * @return
     *     possible object is
     *     {@link Double }
     *     
     */
    public Double getInstalllments() {
        return installlments;
    }

    /**
     * Sets the value of the installlments property.
     * 
     * @param value
     *     allowed object is
     *     {@link Double }
     *     
     */
    public void setInstalllments(Double value) {
        this.installlments = value;
    }

    /**
     * Gets the value of the judgment property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getJudgment() {
        return judgment;
    }

    /**
     * Sets the value of the judgment property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setJudgment(String value) {
        this.judgment = value;
    }

    /**
     * Gets the value of the loanreqId property.
     * 
     */
    public int getLoanreqId() {
        return loanreqId;
    }

    /**
     * Sets the value of the loanreqId property.
     * 
     */
    public void setLoanreqId(int value) {
        this.loanreqId = value;
    }

    /**
     * Gets the value of the loanstatusbank property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getLoanstatusbank() {
        return loanstatusbank;
    }

    /**
     * Sets the value of the loanstatusbank property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLoanstatusbank(String value) {
        this.loanstatusbank = value;
    }

    /**
     * Gets the value of the loanstatustype property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getLoanstatustype() {
        return loanstatustype;
    }

    /**
     * Sets the value of the loanstatustype property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLoanstatustype(String value) {
        this.loanstatustype = value;
    }

    /**
     * Gets the value of the position property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPosition() {
        return position;
    }

    /**
     * Sets the value of the position property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPosition(String value) {
        this.position = value;
    }

    /**
     * Gets the value of the timerepayment property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTimerepayment() {
        return timerepayment;
    }

    /**
     * Sets the value of the timerepayment property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTimerepayment(String value) {
        this.timerepayment = value;
    }

    /**
     * Gets the value of the todo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTodo() {
        return todo;
    }

    /**
     * Sets the value of the todo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTodo(String value) {
        this.todo = value;
    }

    /**
     * Gets the value of the updateby property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getUpdateby() {
        return updateby;
    }

    /**
     * Sets the value of the updateby property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setUpdateby(String value) {
        this.updateby = value;
    }

    /**
     * Gets the value of the updated property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getUpdated() {
        return updated;
    }

    /**
     * Sets the value of the updated property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setUpdated(String value) {
        this.updated = value;
    }

}
