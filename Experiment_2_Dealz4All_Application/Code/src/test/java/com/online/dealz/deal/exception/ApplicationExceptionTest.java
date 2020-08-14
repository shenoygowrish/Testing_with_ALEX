package com.online.dealz.deal.exception;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class ApplicationExceptionTest {

	@Before
	public void setUp() throws Exception {
		System.out.println("Setting up test cases...");
	}

	@After
	public void tearDown() throws Exception {
	}
	

	@Test
	public void testApplicationExceptionWithString() {
		String s = "Sample test exception Message";
		
		ApplicationException appExe = new ApplicationException(s);
		assertNotNull(appExe);
		System.out.println(s);
		System.out.println("String Received");
	}
}
