package com.seekmc.servlet;

import static org.junit.Assert.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mockito;


public class PostgresConnectTest extends Mockito{
	 private HttpServletRequest request = mock(HttpServletRequest.class);       
	 private HttpServletResponse response = mock(HttpServletResponse.class);
	 private HttpSession session = mock(HttpSession.class);
	 private RequestDispatcher dispatcher = mock(RequestDispatcher.class);
	 private final ServletContext servletContext = mock(ServletContext.class);
	 
	 private PostgresConnect servlet = new PostgresConnect(){
			public ServletContext getServletContext(){
	    		 return servletContext;
	    	 }
	     };
	
	@Before
	public void setUp() throws IOException{
		
		String path = "C:\\repo\\java\\seekmcDB.txt";
		/*
		Save database url into a blank file 
		then set path to file in String above to run unit tests against the database.
		Contact me directly for url.
		*/
	
		String dbURL = new String(Files.readAllBytes(Paths.get(path)));
		Map<String, String> dbEnv = new HashMap<String, String>();
		dbEnv.put("DATABASE_URL", dbURL);
		UnitTestDatabaseConnect.setEnv(dbEnv);
		

	}
	
	@Test
	public void shouldNotReturnSongs() throws ServletException, IOException {

	     String[] attributePreference = null;
	     
	     when(request.getSession()).thenReturn(session);
	     when(request.getParameterValues("attributePreference")).thenReturn(attributePreference);
	     when(servlet.getServletContext().getRequestDispatcher("/Search.jsp")).thenReturn(dispatcher);
	    
	     servlet.doPost(request, response);
	     
	     ;
	     
	     verify(session).setAttribute("emptyArray", true);

	}

}
