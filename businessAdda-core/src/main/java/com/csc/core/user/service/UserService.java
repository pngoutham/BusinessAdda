package com.csc.core.user.service;

import com.csc.core.framework.hibernate.properties.Address;
import com.csc.core.framework.hibernate.properties.Role;
import com.csc.core.framework.hibernate.properties.User;

public interface UserService {
	User registerUser(User user);

	User getUserDetails(Long user_id);

	Address getAddress(Long address_id);

	Role getRole(Long role_id);
}
