package com.interceptors;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class InterceptorAcceso extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		// TODO Auto-generated method stub
		String result = Action.LOGIN;
		if(actionInvocation.getInvocationContext().getSession().containsKey("usuario"))
		{
			result = actionInvocation.invoke();
		}
		
		return result;
	}

}
