package org.springframework.social.showcase.common;

import org.hibernate.validator.constraints.NotEmpty;

public class PostFeed {

	@NotEmpty
	private	String twpost;
	
	@NotEmpty
	private String fbpost;
	
	@NotEmpty
	private String lipost;
	

	public String getTwpost() {
		return twpost;
	}
	public void setTwpost(String twpost) {
		this.twpost = twpost;
	}
	public String getFbpost() {
		return fbpost;
	}
	public void setFbpost(String fbpost) {
		this.fbpost = fbpost;
	}
	public String getLipost() {
		return lipost;
	}
	public void setLipost(String lipost) {
		this.lipost = lipost;
	}

}
