package com.online.dealz.deal.controller;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.online.dealz.deal.bean.ProductBean;

public class ProductCtlTest {
	
	ProductCtl pc = new ProductCtl();

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testValidate() {
		
	}

	@Test
	public void testPopulateBean() {
		
	}

	@Test
	public void testGetView() {
		String myView = pc.getView();
		assertNotNull(myView);
		System.out.println(myView);
		System.out.println("String Received");
		
	}

	@Test
	public void testDoGetHttpServletRequestHttpServletResponse() {
		
	}

	@Test
	public void testDoPostHttpServletRequestHttpServletResponse() {
		
	}

	@Test
	public void testSubImage() {
		
	}

}
