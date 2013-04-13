/**
 * 
 */
package com.csc.core.framework.hibernate.properties;

import java.io.Serializable;
import javax.persistence.Entity;

/**
 * @author goutham_PN
 * 
 */
@Entity
public abstract class Member extends Resource implements Serializable {
	public Member() {

	}
}
