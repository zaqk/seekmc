package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URISyntaxException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.converter.DecoderRing;
import com.db.Db;

/**
 * Servlet implementation class PostgresConnectionn
 */
public class PostgresConnect extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public PostgresConnect() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
	     out.print("outside of try loop");
	      
			try {
				java.sql.Connection con = Db.getConnection();

				out.print("inside of try loop");
	            

	            out.print("<center><h1>F U 2</h1></center>");
	            out.print("<html><body>");
	            out.print("<br/>");
	            out.print("<b>Attributes: </b>");
	            out.print("<br/>");
	            out.print("<br/>");
	            {	
	            	
	            	
	                out.print("<tr>");
	                out.print("Song Name: </b>" + "</td>");
	                out.print("</tr><br/>");
	                out.print("&nbsp;&nbsp;&nbsp;&nbsp;");
	                out.print("<b>Link: </b> &nbsp;&nbsp;");
	                out.print("<tr>");
	                out.print("<td>yo</td>");
	                out.print("</tr>"); 
	                out.print("<br/>"); 
	                out.print("<br/>");
	            }
	        		out.print("</body></html>"); 
				
				
				
				
				
				
				
			} catch (URISyntaxException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}

	}

}
