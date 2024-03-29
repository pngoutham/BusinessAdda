package com.businessAdda.rest.services;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.csc.core.framework.hibernate.properties.Login;
import com.csc.core.login.dao.LoginDao;
import com.csc.core.login.dao.LoginDaoImpl;
import com.csc.core.login.service.LoginService;
import com.csc.core.login.service.LoginServiceImpl;
import com.sun.jersey.core.header.FormDataContentDisposition;
import com.sun.jersey.multipart.FormDataParam;
import javax.ws.rs.GET;
import javax.ws.rs.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestParam;

@Path("/loginWebService")
public class LoginManagementService {

	private LoginService loginService;

	@Autowired
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	@POST
	@Path("/loginAuthenticate")
	public Response loginService(@QueryParam("username") String username,
			@QueryParam("password") String password) {

		Login login = new Login();
		login.setUsername(username);
		login.setPassword(password);

		System.out.println(login.getUsername());
		if (loginService.authenticate(login)) {
			return Response.status(200).entity("Login Successful").build();
		} else {
			return Response.status(401).entity("Unauthorised").build();
		}
	}

	@GET
	@Path("/hello")
	public Response getMsg() {
		String output = "Jersey say : bollo";
		// loginService = new LoginServiceImpl();
		Login login = new Login();
		login.setId(1l);
		login.setUsername("admin");
		login.setPassword("admin");
		Login logi = loginService.addLoginData(login);
		return Response.status(200).entity(output).build();
	}
}
