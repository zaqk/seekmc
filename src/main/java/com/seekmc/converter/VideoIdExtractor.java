package com.seekmc.converter;

public class VideoIdExtractor {
	
	private String id;
	
	public String getVideoId(String youtubeLink){
		
		for(int i = 0, n = youtubeLink.length() ; i < n ; i++) { 
		    char c = youtubeLink.charAt(i);
		    if(c == '?'){
		    	id = youtubeLink.substring(i+3, i+14);
		    	break;
		    }
		}
		return id;
	}



}
