package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


import com.converter.DecoderRing;


/**
 * Servlet implementation class Connection
 */
//@WebServlet("/connection")
public class Connection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Connection() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Context envContext = null;
        try {
            envContext = new InitialContext();
            Context initContext  = (Context)envContext.lookup("java:/comp/env");
            DataSource ds = (DataSource)initContext.lookup("jdbc/testDB");
           // DataSource ds = (DataSource)envContext.lookup("java:/comp/env/jdbc/testDB");
            java.sql.Connection con = ds.getConnection();
                         
            
            
            
            String qryExperimental = DecoderRing.EXPERIMENTAL;
            String qryHouse_Influenced = DecoderRing.HOUSE_INFLUENCED;
            String qryHip_Hop_Influenced = DecoderRing.HIP_HOP_INFLUENCED;
            String qryIndie_Influenced = DecoderRing.INDIE_INFLUENCED;
            String qryDeep_House = DecoderRing.DEEP_HOUSE;
            String qryHip_Hop = DecoderRing.HIP_HOP;
            String qryIndie = DecoderRing.INDIE;
            String qryHeavy_Sub_Bass = DecoderRing.HEAVY_SUB_BASS;
            String qryPoppy = DecoderRing.POPPY;
            String qryEnergetic = DecoderRing.ENERGETIC;
            String qryCalm = DecoderRing.CALM;
            String qryAggressive = DecoderRing.AGGRESSIVE;
            String qryEthereal = DecoderRing.ETHEREAL;//note spelling error string=etheral
            String qryJazz_Influenced = DecoderRing.JAZZ_INFLUENCED;
            String qryTrap_Influenced = DecoderRing.TRAP_INFLUENCED;
            String qryRnb_Influenced = DecoderRing.RNB_INFLUENCED;
            String qryFunk_Influenced = DecoderRing.FUNK_INFLUENCED;
            String qryOld_School_Vibes = DecoderRing.OLD_SCHOOL_VIBES;
            String qryMale_Vocals = DecoderRing.MALE_VOCALS;
            String qryFemale_Vocals = DecoderRing.FEMALE_VOCALS;
            String qryHeavy_Vocal_Manipulation = DecoderRing.HEAVY_VOCAL_MANIPULATION;
            String qryInstrumental = DecoderRing.INSTRUMENTAL;
            
            
            
          //Search Engine---------------------------------------------------------------------------------
            
            
            
            String [] attributePreferences = request.getParameterValues("attributePreference");
            
            
            if(attributePreferences.length != 0){
            	
            	//response.sendRedirect("/MajesticX2/Search.jsp");
            	//this line makes submit button submit to Search page
            	
            	List<String> attributePreferencesList = Arrays.asList(attributePreferences);
            
            
            	if(attributePreferencesList.contains(DecoderRing.EXPERIMENTAL)){
            		qryExperimental = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.HOUSE_INFLUENCED)){
            		qryHouse_Influenced = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.HIP_HOP_INFLUENCED)){
            		qryHip_Hop_Influenced = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.INDIE_INFLUENCED)){
            		qryIndie_Influenced = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.DEEP_HOUSE)){
            		qryDeep_House = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.HIP_HOP)){
            		qryHip_Hop = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.INDIE)){
            		qryIndie = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.HEAVY_SUB_BASS)){
            		qryHeavy_Sub_Bass = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.POPPY)){
            		qryPoppy = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.ENERGETIC)){
            		qryEnergetic = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.CALM)){
            		qryCalm = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.AGGRESSIVE)){
            		qryAggressive = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.ETHEREAL)){
            		qryEthereal = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.JAZZ_INFLUENCED)){
            		qryJazz_Influenced = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.TRAP_INFLUENCED)){
            		qryTrap_Influenced = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.RNB_INFLUENCED)){
            		qryRnb_Influenced = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.FUNK_INFLUENCED)){
            		qryFunk_Influenced = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.OLD_SCHOOL_VIBES)){
            		qryOld_School_Vibes = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.MALE_VOCALS)){
            		qryMale_Vocals = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.FEMALE_VOCALS)){
            		qryFemale_Vocals = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.HEAVY_VOCAL_MANIPULATION)){
            		qryHeavy_Vocal_Manipulation = "\"1\"";
            	}
            	if(attributePreferencesList.contains(DecoderRing.INSTRUMENTAL)){
            		qryInstrumental = "\"1\"";
            	}
            	
            } else {
            	PrintWriter out = response.getWriter();
            	out.print("<html><body>");
                out.print("<center><h1>Pick at least one attribute!!</h1></center>");
                out.print("</body></html>");
                
            	
            }
            Statement stmt = con.createStatement();
            String query = "select * from webshop.`database`"
            + "WHERE experimental =" 
            + qryExperimental + " " + "AND" + " "
            + "house_influenced =" + " "
            + qryHouse_Influenced + " " + "AND" + " "
            + "hip_hop_influenced =" + " "
            + qryHip_Hop_Influenced + " " + "AND" + " "
            + "indie_influenced =" + " "
            + qryIndie_Influenced + " " + "AND" + " "
            + "deep_house =" + " "
            + qryDeep_House + " " + "AND" + " "
            + "hip_hop =" + " "
            + qryHip_Hop + " " + "AND" + " "
            + "indie =" + " "
            + qryIndie + " " + "AND" + " "
            + "heavy_sub_bass =" + " "
            + qryHeavy_Sub_Bass + " " + "AND" + " "
            + "poppy =" + " "
            + qryPoppy + " " + "AND" + " "
            + "energetic =" + " "
            + qryEnergetic + " " + "AND" + " "
            + "calm =" + " "
            + qryCalm + " " + "AND" + " "
            + "aggressive =" + " "
            + qryAggressive + " " + "AND" + " "
            + "ethereal =" + " "
            + qryEthereal + " " + "AND" + " "
            + "jazz_influenced =" + " "
            + qryJazz_Influenced + " " + "AND" + " "
            + "trap_influenced =" + " "
            + qryTrap_Influenced + " " + "AND" + " "
            + "rnb_influenced =" + " "
            + qryRnb_Influenced + " " + "AND" + " "
            + "funk_influenced =" + " "
            + qryFunk_Influenced + " " + "AND" + " "
            + "old_school_vibes =" + " "
            + qryOld_School_Vibes + " " + "AND" + " "
            + "male_vocals =" + " "
            + qryMale_Vocals + " " + "AND" + " "
            + "female_vocals =" + " "
            + qryFemale_Vocals + " " + "AND" + " "
            + "heavy_vocal_manipulation =" + " "
            + qryHeavy_Vocal_Manipulation + " " + "AND" + " "
            + "instrumental =" + " "
            + qryInstrumental + " " + "AND" + " "
            + "count = count";
            
            ResultSet rs = stmt.executeQuery(query);
            
            
            
            

            
            //Search Engine-------------------------------------------------------------------------------------
            
            
            
            
            
            PrintWriter out = response.getWriter();
            out.print("<center><h1>F U 2</h1></center>");
            out.print("<html><body>");
            //out.print(query);
            out.print("<br/>");
            out.print("<b>Attributes: </b>");
            for(String s : attributePreferences){
            	out.print(s+", ");
            }
            out.print("<br/>");
            out.print("<br/>");
            int i = 1;
            while(rs.next())
            {	
            	
            	
                out.print("<tr>");
                out.print("<td><b>"+ i +". ");
                out.print("Song Name: </b>" + rs.getString("song_name") + "</td>");
                out.print("</tr><br/>");
                out.print("&nbsp;&nbsp;&nbsp;&nbsp;");
                out.print("<b>Link: </b> &nbsp;&nbsp;");
                out.print("<tr>");
                out.print("<td><a href =\"" +  rs.getString("link") + "\">" +rs.getString("link") + "</a></td>");
                out.print("</tr>"); 
                out.print("<br/>"); 
                out.print("<br/>");
                i++;
            }
        		out.print("</body></html>"); 
        }catch (SQLException e) {
            e.printStackTrace();
        } catch (NamingException e) {
            e.printStackTrace();
        }
    
	}
}

