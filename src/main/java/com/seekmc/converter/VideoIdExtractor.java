package com.seekmc.converter;

public class VideoIdExtractor {
	
	private String id;
	
	public String getVideoId(String youtubeLink){
		
		for(int i = 0, n = youtubeLink.length() ; i < n ; i++) { 
		    char c = youtubeLink.charAt(i);
		    if(c == 'v'){
		    	id = youtubeLink.substring(i+2, i+13);
		    	break;
		    }
		}
		return id;
	}



}
