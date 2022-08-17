package com.jeongmini.movie.post;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PostController {

	@RequestMapping("/main")
	public String mainView() {
		return "post/main";
	}
	
	@RequestMapping("/detail")
	public String detailView() {
		return "post/detail";
	}
	
	@RequestMapping("/community")
	public String communityView() {
		return "post/community";
	}
}
