package com.jeongmini.movie.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@RequestMapping("/signup")
	public String signupView() {
		return "user/signupForm";
	}
}
