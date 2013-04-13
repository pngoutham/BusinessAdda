package com.businessAdda.rest.services;

import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

import com.csc.core.framework.hibernate.properties.User;
import com.csc.core.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

@Path("/registrationService")
public class RegistrationWebService {
	
	@Autowired UserService userService;

	@POST
	@Path("/register")
	public Response registerService(@FormParam("firstname") String firstname,
			@FormParam("lastname") String lastname,
			@FormParam("email") String email,
			@FormParam("requestedUsername") String requestedUsername) {

		User user = new User();
		user.setUsername(requestedUsername);
		System.out.println("The firstname got :" + firstname);
		System.out.println("The lastname got :" + lastname);
		System.out.println("The email got :" + email);
		System.out.println("The requestedUsername got :" + requestedUsername);
		String Content = "User successfully registered, login to email for password";
		return Response.status(200).entity(Content).build();
	}
}
