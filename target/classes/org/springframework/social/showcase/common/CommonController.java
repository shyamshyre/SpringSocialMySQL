package org.springframework.social.showcase.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.twitter.api.Twitter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CommonController {

	@Autowired
	private  Facebook facebook;

	@Autowired
	private  Twitter twitter;
	
	
	@RequestMapping(value="/common/showfeed",method=RequestMethod.GET)
	public String getFeeds()
	{
		System.out.println("Common Controller");
		return "common/postfeed";
	}


	@RequestMapping(value="/common/postfeed",method=RequestMethod.POST)
	public String postFeeds(PostFeed pf)
	{
		if(facebook!=null)
		{
			if(facebook.isAuthorized())
			facebook.feedOperations().updateStatus(pf.getFbpost());
			
		System.out.println("Common Controller"+pf);
		}
		if(twitter!=null){
			twitter.timelineOperations().updateStatus(pf.getTwpost());
		}
		return "common/showfeed";
	}
}
