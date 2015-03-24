package com.seekmc.bean;

public class Attribute {


	private String heavySubBassString;
	private String hipHopString;

	// boolean is converted to string for sql queries.

	// Data starts out as a boolean and then setter converts it to a string.
	// get method returns a string that is either "1" if boolean was true
	// or "0" if boolean was false.

	public String getHeavySubBass() {
		return heavySubBassString;
	}

	public void setHeavySubBass(Boolean heavySubBass) {
		if (heavySubBass == true) {
			heavySubBassString = "1";
		} else {
			heavySubBassString = "0";
		}
	}
	
	

	public String getHipHop() {
		return hipHopString;
	}

	public void setHipHop(Boolean hipHop) {
		if (hipHop == true) {
			hipHopString = "1";
		} else {
			heavySubBassString = "0";
		}

	}

}
