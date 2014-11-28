package com.bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ResultSetBean {

	public static List<String> songNameList;
	public static List<String> linkList;
	
	private ResultSet privateResultSet;
	
	
	public void addToSongNameList(String songName){
		
		songNameList.add(songName);
		
	}
	
	public void addToLinkList(String linkName){
		
		linkList.add(linkName);
		
	}
	
	public List<String> getSongNameList(){
		return songNameList;

	}
	
	public List<String> getLinkList(){
		return linkList;
	}
	
	public boolean next(){		
	
		try {
			return privateResultSet.next();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;//come back here
		}
		
	}
	
	public String getString(String column){
		
		try {
			return privateResultSet.getString(column);
		} catch (SQLException e) {
			e.printStackTrace();
			return "SQL Error";//Come back here
		}
		
	}
	public void setResultSet(ResultSet rs){
		
		rs = privateResultSet;
		
	}
	
}
