//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vhudson-jaxb-ri-2.2-147 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2011.12.26 at 05:54:18 PM IST 
//


package com.csc.core.framework.repository.workspace.ws;

import javax.xml.bind.annotation.XmlRegistry;


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


    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.ws
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link SearchIndex }
     * 
     */
    public SearchIndex createSearchIndex() {
        return new SearchIndex();
    }

    /**
     * Create an instance of {@link Param }
     * 
     */
    public Param createParam() {
        return new Param();
    }

    /**
     * Create an instance of {@link Workspace }
     * 
     */
    public Workspace createWorkspace() {
        return new Workspace();
    }

    /**
     * Create an instance of {@link FileSystem }
     * 
     */
    public FileSystem createFileSystem() {
        return new FileSystem();
    }

    /**
     * Create an instance of {@link PersistenceManager }
     * 
     */
    public PersistenceManager createPersistenceManager() {
        return new PersistenceManager();
    }

}
