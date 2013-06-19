Spring Social Showcase Security (XML)
=====================================
This sample app demonstrates many of the capabilities of the Spring Social project, including:
* Connect to Facebook
* Connect to Twitter
* Sign in using Facebook
* Sign in using Twitter
* Using SocialAuthenticationFilter for provider-signin instead of ProviderSignInController
* Using Spring Social's XML configuration namespace
For Configuring the Spring Social into mysql database do the following Changes

1)  Remove the data.xml with database.xml in root-context.xml
 
	data.xml is configured to embeded HQ Database
	database.xml is now configured to MYSQL Database.
    In Database.xml add the following entries

 <tx:annotation-driven transaction-manager="transactionManager" /> 	
  
   <bean class="org.springframework.jdbc.datasource.DriverManagerDataSource"
		id="dataSource">
		<property name="driverClassName" value="${database.driverClassName}" />
		<property name="url" value="${database.url}" />
		<property name="username" value="${database.username}" />
		  <property name="password" value="${database.password}" />	
		<!--  <property name="validationQuery" value="SELECT 1+1" /> -->
	</bean>

	<bean id="transactionManager" class="org.springframework.jdbc.datasource.DataSourceTransactionManager"
		c:_-ref="dataSource" />

   We are using JdbcTemplate because Spring Social uses internal JDBC for communication with FB/LI/Twitter during OUAuth2 Validation. 
		
	<bean id="jdbcTemplate" class="org.springframework.jdbc.core.JdbcTemplate"
		c:_-ref="dataSource" />
		

2) Add all the database properties in Application.properties file
   * Default location is specified to application.properties in the root-context.xml
   
3) In the root-context.xml change the file name from data to database.xml
   * Changing from HQ to MYSQL Database 
   
4) Add the following Entry into POM.xml

	<dependency>
		<groupId>mysql</groupId>
		<artifactId>mysql-connector-java</artifactId>
		<version>5.1.25</version>
	</dependency>

This loads the mysql related jar into your workspace.

5) Last Step Copy the following table and paste it into your local database.

 CREATE TABLE UserConnection (userId VARCHAR(255) NOT NULL,
	providerId VARCHAR(255) NOT NULL,
	providerUserId VARCHAR(255),
	rank INT NOT NULL,
	displayName VARCHAR(255),
	profileUrl VARCHAR(512),
	imageUrl VARCHAR(512),
	accessToken VARCHAR(255) NOT NULL,					
	secret VARCHAR(255),
	refreshToken VARCHAR(255),
	expireTime BIGINT,
	PRIMARY KEY (userId, providerId, providerUserId));
 CREATE UNIQUE INDEX UserConnectionRank ON UserConnection(userId, providerId, rank);
 
 CREATE TABLE Account (id INT NOT NULL AUTO_INCREMENT,username VARCHAR(10) UNIQUE,PASSWORD VARCHAR(10) NOT NULL,firstName VARCHAR(10) NOT NULL, lastName VARCHAR(10) NOT NULL, PRIMARY KEY (id));

Following tables are required during authentication and authorization of user credentials.

 


To run, simply import the project into your IDE and deploy to a Servlet 2.5 or > container such as Tomcat 6 or 7.
Access the project at http://localhost:8080/spring-social-showcase

Discuss at forum.springsource.org and collaborate with the development team at jira.springframework.org/browse/SOCIAL.
