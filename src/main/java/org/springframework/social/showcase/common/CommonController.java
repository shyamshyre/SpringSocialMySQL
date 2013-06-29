package org.springframework.social.showcase.common;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CommonController {

	@RequestMapping(value="/common/showfeed",method=RequestMethod.GET)
	public String getFeeds()
	{
		System.out.println("Common Controller");
		return "common/create";
	}
	
	
	@RequestMapping(value="/common/postfeed",method=RequestMethod.POST)
	public String postFeeds(Model model)
	{
		System.out.println("Common Controller");
		return "common/create";
	}
}
