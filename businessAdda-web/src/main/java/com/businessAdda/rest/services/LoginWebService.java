package com.businessAdda.rest.services;

import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

import com.csc.core.login.service.LoginService;
import javax.ws.rs.GET;
import org.springframework.beans.factory.annotation.Autowired;

@Path("/loginService")
public class LoginWebService {

	@Autowired
	private LoginService loginService;

	@POST
	@Path("/login")
	public Response loginService(@FormParam("username") String username, @FormParam("password") String password) {
		
/*		Login login = new Login();
		login.setUsername(username);
		login.setPassword(password);*/
		
		System.out.println("The username got"+username);
		System.out.println("The password got"+password);
/*		if (loginService.authenticate(login)) {
			return Response.status(200).entity("Login Successful").build();
		} else {
			return Response.status(401).entity("Unauthorised").build();
		}*/
		return Response.status(200).entity("Success").build();
	}

	@GET
	@Path("/hello")
	public Response getMsg() {
		String output = "Jersey say : bollo";
		return Response.status(200).entity(output).build();

	}
}
