package com.db;

//import java.net.URI;
import java.net.URISyntaxException;
import java.sql.*;




public class Db {
	public static Connection getConnection() throws URISyntaxException, SQLException {
		
		final String URL = "jdbc:postgres://yygnxivbnbtjqp:hhipD09VgH29_AwFgJiKV-PcI_@ec2-54-243-245-159.compute-1.amazonaws.com:5432/d3f68tgt8qdh4u";   
		final String USERNAME = "yygnxivbnbtjqp";
		final String PASSWORD = "hhipD09VgH29_AwFgJiKV-PcI_"; 
	    //URI dbUri = new URI(System.getenv("DATABASE_URL"));

	    //String username = dbUri.getUserInfo().split(":")[0];
	    //String password = dbUri.getUserInfo().split(":")[1];
	    //String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + dbUri.getPath();

	    return DriverManager.getConnection(URL, USERNAME,PASSWORD);
		

		
	}
}