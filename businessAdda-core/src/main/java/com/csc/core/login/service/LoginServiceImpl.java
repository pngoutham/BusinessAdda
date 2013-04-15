package com.csc.core.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csc.core.framework.hibernate.properties.Login;
import com.csc.core.framework.hibernate.properties.Security;
import com.csc.core.login.dao.LoginDao;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

	private LoginDao loginDao;

	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}

	@Override
	public boolean authenticate(Login login) {
		// TODO Auto-generated method stub
		return loginDao.authenticate(login);
	}

	@Override
	public Security forgotPassword(String username) {
		// TODO Auto-generated method stub
		return loginDao.forgotPassword(username);
	}

	@Override
	public boolean validate(Security security) {
		// TODO Auto-generated method stub
		return loginDao.validate(security);
	}

	@Override
	public Login addLoginData(Login login) {
		// TODO Auto-generated method stub
		return loginDao.addLoginData(login);
	}

}
