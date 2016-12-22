
package com.ws;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.ws package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _InsertApproveClient_QNAME = new QName("http://ws.com/", "insertApproveClient");
    private final static QName _InsertApproveClientResponse_QNAME = new QName("http://ws.com/", "insertApproveClientResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.ws
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link InsertApproveClient }
     * 
     */
    public InsertApproveClient createInsertApproveClient() {
        return new InsertApproveClient();
    }

    /**
     * Create an instance of {@link InsertApproveClientResponse }
     * 
     */
    public InsertApproveClientResponse createInsertApproveClientResponse() {
        return new InsertApproveClientResponse();
    }

    /**
     * Create an instance of {@link ApproveLoanBean }
     * 
     */
    public ApproveLoanBean createApproveLoanBean() {
        return new ApproveLoanBean();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link InsertApproveClient }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.com/", name = "insertApproveClient")
    public JAXBElement<InsertApproveClient> createInsertApproveClient(InsertApproveClient value) {
        return new JAXBElement<InsertApproveClient>(_InsertApproveClient_QNAME, InsertApproveClient.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link InsertApproveClientResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.com/", name = "insertApproveClientResponse")
    public JAXBElement<InsertApproveClientResponse> createInsertApproveClientResponse(InsertApproveClientResponse value) {
        return new JAXBElement<InsertApproveClientResponse>(_InsertApproveClientResponse_QNAME, InsertApproveClientResponse.class, null, value);
    }

}
