package com.csc.core.login.dao;

import java.io.Serializable;

import com.csc.core.framework.hibernate.GenericDao;
import com.csc.core.framework.hibernate.properties.Login;
import com.csc.core.framework.hibernate.properties.Security;

public interface LoginDao{
	boolean authenticate(Login login);

	Security forgotPassword(String username);

	boolean validate(Security security);

	Login addLoginData(Login login);
}
