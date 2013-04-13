package com.csc.core.framework.hibernate;


import java.io.Serializable;

import com.csc.core.framework.hibernate.exceptions.InstanceNotFoundException;

public interface GenericDao <E, PK extends Serializable>{

	void create(E entity);
		
	E find(PK id) throws InstanceNotFoundException;
	
	boolean exists(PK id);
	
	E update(E entity);

	void remove(PK id) throws InstanceNotFoundException;	
	
}
