package com.bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ResultSetBean {

	private List<String> songNameList;
	private List<String> linkList;
	private int songNameListLength;
	private int linkListLength;

	private ResultSet privateResultSet;

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

	public void addToSongNameList(String songName) {

		songNameList.add(songName);

	}

	public void addToLinkList(String linkName) {

		linkList.add(linkName);

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
		songNameList = this.songNameList;

	}

	public void createLinkList(List<String> linkList) {
		linkList = this.linkList;
	}

	public String getString(String column) {

		try {
			return privateResultSet.getString(column);
		} catch (SQLException e) {
			e.printStackTrace();
			return "SQL Error";// Come back here
		}

	}

	public void compileData(ResultSet rs) {

		try {
			while (rs.next()) {
				songNameList.add((rs.getString("song_name")));
				linkList.add((rs.getString("link")));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
