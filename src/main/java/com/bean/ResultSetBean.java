package com.bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



public class ResultSetBean {

	public  List<String> songNameList = new ArrayList<String>();
	private List<String> linkList = new ArrayList<String>();
	
	
	
	private int songNameListLength;
	private int linkListLength;
	private int songNameArrayLength;
	private int linkArrayLength;

	
	
	
	private ResultSet privateResultSet;
	
	
	public String[] getSongNameListArray(){

		String[] songNameListArray = songNameList.toArray(new String[songNameListLength]);
		
		return songNameListArray;
	}
	


	public void setSongNameListLength(int songNameListLength) {
		this.songNameListLength = songNameListLength;

	}

	public void setLinkListLength(int linkListLength) {
		this.linkListLength = linkListLength;
	}

	public int getSongNameListLength() {
		return songNameListLength;

	}

	public int getLinkListLength() {
		return linkListLength;
	}

	public String[] createSongNameListArray() {

		//String[] songNameArray = new String[getSongNameListLength()];
		
		String[] songNameArray = (String[]) songNameList.toArray(new String[0]);
		
		//songNameList.toArray(songNameArray);
		
		return songNameArray;
	}

	public String[] createLinkListArray() {

		String[] linkArray = new String[getLinkListLength()];

		//linkList.toArray(linkArray);
		
		return linkArray;
		
	}

	
	
	public void createSongNameList(List<String> songNameList) {
		this.songNameList = new ArrayList<String>(songNameList);

	}

	public void createLinkList(List<String> linkList) {
		this.linkList = new ArrayList<String>(linkList);
	}


	
//--------------------------------NEW STUFF----------------------------------------------

	public void cloneLists(List<String> initialSongNameList, List<String> initialLinkNameList){
		for(int i = 0; i < initialSongNameList.size(); i++){
			songNameList.add(initialSongNameList.get(i));
		}
		for(int i = 0; i < initialLinkNameList.size(); i++){
			linkList.add(initialLinkNameList.get(i));
		}
	}

}
