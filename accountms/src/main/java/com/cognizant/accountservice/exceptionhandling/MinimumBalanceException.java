package com.cognizant.accountservice.exceptionhandling;

public class MinimumBalanceException extends RuntimeException {

	
	private static final long serialVersionUID = 1L;

	public MinimumBalanceException() {
		super();
	}

	public MinimumBalanceException(String message) {
		super(message);
	}

}
