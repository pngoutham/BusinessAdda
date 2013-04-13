package com.csc.core.framework.repository.properties;

import java.util.List;

import com.csc.core.framework.hibernate.GenericDao;
import com.csc.core.framework.repository.exceptions.RepositoryPropertiesNotFoundException;


/**
 * A Dao Interface to fetch jackrabbit repository properties.
 *
 * @author goutham_PN
 */
public interface RepositoryPropertiesDao extends GenericDao<JackRabbitRepositoryProperties, String> {

    JackRabbitRepositoryProperties getRepositoryDetails(String repositoryId) throws RepositoryPropertiesNotFoundException;

    List<JackRabbitRepositoryProperties> getRepositoryList() throws RepositoryPropertiesNotFoundException;
}
