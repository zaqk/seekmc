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

import com.seekmc.converter.DecoderRing;


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
		 *		Save database url into a blank file 
		 *		then set path to file in String above to run unit tests against the database.
		 *		Contact me directly for url.
		 */
	
		String dbURL = new String(Files.readAllBytes(Paths.get(path)));
		Map<String, String> dbEnv = new HashMap<String, String>();
		dbEnv.put("DATABASE_URL", dbURL);
		UnitTestDatabaseConnect.setEnv(dbEnv);
		

	}
	
	@Test
	public void shouldNotReturnResults() throws ServletException, IOException {

	     String[] attributePreferences = null;
	     
	     when(request.getSession()).thenReturn(session);
	     when(request.getParameterValues("attributePreference"))
	     .thenReturn(attributePreferences);
	     when(servlet.getServletContext().getRequestDispatcher("/Search.jsp"))
	     .thenReturn(dispatcher);
	    
	     servlet.doPost(request, response);
	     
	     verify(session).setAttribute("noResults", false);
	     verify(session).setAttribute("attributePreferences", null);
	     verify(session).setAttribute("emptyArray", true);
	     verify(session).setAttribute("length", 1);
	     
	    
	     /*
	      * 	"length" is 1 instead of 0 because a 
	      *		dummy value is set to avoid a ArrayOutOfBoundsException 
	      *		there should be a cleaner way to avoid this exception
	      */
	     
	}
	
	@Test
	public void shouldReturnExperimental() throws ServletException, IOException {
		
		String[] attributePreferences = {"experimental"};
		
		when(request.getSession()).thenReturn(session);
	    when(request.getParameterValues("attributePreference"))
	    .thenReturn(attributePreferences);
	    when(servlet.getServletContext().getRequestDispatcher("/Search.jsp"))
	    .thenReturn(dispatcher);
		
	    servlet.doPost(request, response);
	    
	    verify(session).setAttribute("noResults", false);
	    verify(session).setAttribute("attributePreferences", attributePreferences);
	    verify(session).setAttribute("emptyArray", false);
	    verify(session).setAttribute("length", 1);
	}
	
	@Test
	public void shouldReturnExperimentalAndIndie() throws ServletException, IOException {
		
		String[] attributePreferences = {"experimental", "Indie"};
		
		when(request.getSession()).thenReturn(session);
	    when(request.getParameterValues("attributePreference"))
	    .thenReturn(attributePreferences);
	    when(servlet.getServletContext().getRequestDispatcher("/Search.jsp"))
	    .thenReturn(dispatcher);
		
	    servlet.doPost(request, response);
	    
	    verify(session).setAttribute("noResults", false);
	    verify(session).setAttribute("attributePreferences", attributePreferences);
	    verify(session).setAttribute("emptyArray", false);
	    verify(session).setAttribute("length", 2);
	}

}
