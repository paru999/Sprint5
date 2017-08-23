package com.Beans;

import java.util.HashMap;
import java.util.Map;

public class Contactform
{
	private Map<Integer, String> contactMap = new HashMap<Integer, String>();

	public Map<Integer, String> getContactMap() {
		return contactMap;
	}

	public void setContactMap(Map<Integer, String> contactMap) {
		this.contactMap = contactMap;
	}


}
