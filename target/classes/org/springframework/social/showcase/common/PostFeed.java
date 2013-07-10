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
	
	public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("twpost=").append(twpost).append(",");
        sb.append("fbpost=").append(fbpost).append(",");
        sb.append("lipost=").append(lipost).append(",");
        return sb.toString();
    }

}
