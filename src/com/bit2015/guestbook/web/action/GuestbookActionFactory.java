package com.bit2015.guestbook.web.action;

import com.bit2015.web.action.Action;
import com.bit2015.web.action.ActionFactory;

public class GuestbookActionFactory extends ActionFactory {

	@Override
	public Action getAction(String actionName) {
		Action action = null;
		
		if("add".equals(actionName)){
			action = new AddAction();
			
		}else if("deleteform".equals(actionName)){
			action = new DeleteFormAction();
			
		}else if("delete".equals(actionName)){
			action = new DeleteAction();
			
		}else{
			action = new IndexAction();
		}
		return action;
	}


}
