package com.servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.SQLException;
import java.util.logging.Logger;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			Db db = new Db();
	        ServletOutputStream out = response.getOutputStream();
	        
	      
			try {
				java.sql.Connection con = db.getConnection();

			} catch (URISyntaxException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			  out.write("Wow, it actually worked, can't be this easy.".getBytes());
		        out.flush();
		        out.close();
	}

}
