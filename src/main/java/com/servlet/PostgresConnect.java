package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URISyntaxException;
import java.sql.Array;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.ResultSetBean;
import com.converter.DecoderRing;
import com.db.Db;

/**
 * Servlet implementation class PostgresConnectionn
 */
public class PostgresConnect extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
	     
	     try {
			Class.forName("org.postgresql.Driver");
			Connection con = Db.getConnection();
		
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
         
         
         int arrayLength = 1;
         

        boolean emptyArray = true;
         
         
          if(attributePreferences != null){

         	List<String> attributePreferencesList = Arrays.asList(attributePreferences);
         	
         	arrayLength = attributePreferences.length;
         
         	if(attributePreferencesList.contains(DecoderRing.EXPERIMENTAL)){
         		qryExperimental = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.HOUSE_INFLUENCED)){
         		qryHouse_Influenced = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.HIP_HOP_INFLUENCED)){
         		qryHip_Hop_Influenced = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.INDIE_INFLUENCED)){
         		qryIndie_Influenced = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.DEEP_HOUSE)){
         		qryDeep_House = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.HIP_HOP)){
         		qryHip_Hop = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.INDIE)){
         		qryIndie = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.HEAVY_SUB_BASS)){
         		qryHeavy_Sub_Bass = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.POPPY)){
         		qryPoppy = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.ENERGETIC)){
         		qryEnergetic = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.CALM)){
         		qryCalm = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.AGGRESSIVE)){
         		qryAggressive = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.ETHEREAL)){
         		qryEthereal = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.JAZZ_INFLUENCED)){
         		qryJazz_Influenced = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.TRAP_INFLUENCED)){
         		qryTrap_Influenced = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.RNB_INFLUENCED)){
         		qryRnb_Influenced = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.FUNK_INFLUENCED)){
         		qryFunk_Influenced = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.OLD_SCHOOL_VIBES)){
         		qryOld_School_Vibes = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.MALE_VOCALS)){
         		qryMale_Vocals = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.FEMALE_VOCALS)){
         		qryFemale_Vocals = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.HEAVY_VOCAL_MANIPULATION)){
         		qryHeavy_Vocal_Manipulation = "1::bit";
         		emptyArray = false;
         	}
         	if(attributePreferencesList.contains(DecoderRing.INSTRUMENTAL)){
         		qryInstrumental = "1::bit";
         		emptyArray = false;
         	}
         	
         } 
         Statement stmt = con.createStatement();
         String query = "SELECT * FROM main WHERE "
         + "experimental = " 
         + qryExperimental +  " " + "AND" + " "
         + "house_influenced = " + " "
         + qryHouse_Influenced + " " + "AND" + " "
         + "hip_hop_influenced = " + " "
         + qryHip_Hop_Influenced + " " + "AND" + " "
         + "indie_influenced = " + " "
         + qryIndie_Influenced + " " + "AND" + " "
         + "deep_house = " + " "
         + qryDeep_House + " " + "AND" + " "
         + "hip_hop = " + " "
         + qryHip_Hop + " " + "AND" + " "
         + "indie = " + " "
         + qryIndie + " " + "AND" + " "
         + "heavy_sub_bass = " + " "
         + qryHeavy_Sub_Bass + " " + "AND" + " "
         + "poppy = " + " "
         + qryPoppy + " " + "AND" + " "
         + "energetic = " + " "
         + qryEnergetic + " " + "AND" + " "
         + "calm = " + " "
         + qryCalm + " " + "AND" + " "
         + "aggressive = " + " "
         + qryAggressive + " " + "AND" + " "
         + "ethereal = " + " "
         + qryEthereal + " " + "AND" + " "
         + "jazz_influenced = " + " "
         + qryJazz_Influenced + " " + "AND" + " "
         + "trap_influenced = " + " "	
         + qryTrap_Influenced + " " + "AND" + " "
         + "rnb_influenced = " + " "
         + qryRnb_Influenced + " " + "AND" + " "
         + "funk_influenced = " + " "
         + qryFunk_Influenced + " " + "AND" + " "
         + "old_school_vibes = " + " "
         + qryOld_School_Vibes + " " + "AND" + " "
         + "male_vocals = " + " "
         + qryMale_Vocals + " " + "AND" + " "
         + "female_vocals = " + " "
         + qryFemale_Vocals + " " + "AND" + " "
         + "heavy_vocal_manipulation = " + " "
         + qryHeavy_Vocal_Manipulation + " " + "AND" + " "
         + "instrumental = " + " "
         + qryInstrumental + " " + "AND" + " "
         + "id = id"+";";
         
         ResultSet rs = stmt.executeQuery(query);
         
         List <String> initialSongNameList = new ArrayList<String>();
         
         List <String> initialLinkNameList = new ArrayList<String>();
         
         boolean noResults = false;
         
         if(!rs.isBeforeFirst()){
        	 
        	 noResults = true;
        	 initialSongNameList.add("null");
        	 initialLinkNameList.add("null");
             //if Array is empty the html page will display an ugly error
             //if noResults is true html page will display a more fitting error message.
        	 
        	 //i need to add something to the array list if there are no values 
        	 //because otherwise it would send an array out of bounds error
        	 
         }else{
        

        	 
         while(rs.next()){
        	 String songName = rs.getString("song_name");
        	 String linkName = rs.getString("link");
        	 
        	 initialSongNameList.add(songName);
        	 initialLinkNameList.add(linkName);
        	 
         	}
         }
         
         
         String [] songNameArray = initialSongNameList.toArray(new String[initialSongNameList.size()]);
         
         String [] linkArray = initialLinkNameList.toArray(new String[initialLinkNameList.size()]);
         

         int songListLength = songNameArray.length;
         

         
//------------------------------------------SESSION--------------------------------------------------

         HttpSession session = request.getSession();
         
         session.setAttribute("noResults", noResults);
         session.setAttribute("attributePreferences", attributePreferences);
         session.setAttribute("length", arrayLength);
         session.setAttribute("songListLength", songListLength);
         session.setAttribute("songNameArray", songNameArray);
         session.setAttribute("linkArray", linkArray);  
         session.setAttribute("emptyArray", emptyArray);
         

         
         
//------------------------------What page should we send user to?----------------------------------         
         getServletConfig().getServletContext();
         
         RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Search.jsp");
    	 dispatcher.forward(request, response);
         


       
     		
	     } catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (URISyntaxException e) {
				e.printStackTrace();
				out.print(" URI ");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}


}
