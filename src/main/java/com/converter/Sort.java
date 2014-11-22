package com.converter;

public class Sort {
	
	private final int TOTAL_LENGTH = 21; //22 items
	private int[] sortedAttributePreferences = new int[21];
	
	public Sort(String [] attributePreferences){
		
		int i = 0;
		
		//sortedAttributePreferences = new int[21];//only has space for 21 ints
		
		while(i <= TOTAL_LENGTH){
			
			if(attributePreferences[i] == "1"){
				
				sortedAttributePreferences[i] = 1;
				i++;
			}else{
				
				sortedAttributePreferences[i] = 0;
				i++;
			}
			
		}
		
		
	}
	
	public int[] generateList(int[] list){
		
		int i = 0;
		
		while(i <= TOTAL_LENGTH){
			
			sortedAttributePreferences[i] = list[i];
			i++;
		}
		return list;
	}


	
}
