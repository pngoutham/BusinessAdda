/**
 * 
 */
package com.csc.core.login.dao;

import java.io.Serializable;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.csc.core.framework.hibernate.GenericDaoHibernate;
import com.csc.core.framework.hibernate.properties.Login;
import com.csc.core.framework.hibernate.properties.Security;

/**
 * @author goutham
 * 
 */
@Transactional
@Repository
public class LoginDaoImpl implements LoginDao {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		// super.setSessionFactory(sessionFactory);
		this.sessionFactory = sessionFactory;
	}

	@Override
	public boolean authenticate(Login login) {
		boolean result = false;
		try {
			// Session session = sessionFactory.getCurrentSession();
			// session.beginTransaction();
			Login res = login;
			if (res.getUsername().equals(login.getUsername())) {
				result = true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Security forgotPassword(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean validate(Security security) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Login addLoginData(Login login) {

		Login result = null;
		try {
			/*
			 * getSession().save(login); getSession().getTransaction().commit();
			 * if (exists(login.getId())) { result = find(login.getId());
			 */
			Session session = sessionFactory.getCurrentSession();
			session.save(login);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return result;

	}
}
