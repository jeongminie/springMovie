package com.jeongmini.movie;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.Month;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/movie")
public class PostController {

	@RequestMapping("/main")
	public String mainView() {
		return "post/main";
	}
	
	@RequestMapping("/theaterList")
	public String detailView(Model model) {
		// 컴퓨터의 현재 날짜 정보
		LocalDate localDate = LocalDate.now();
		System.out.println(localDate);
		
		//월
		Month month = localDate.getMonth();
		//일
		int date = localDate.getDayOfMonth();
		//요일
		//DayOfWeek day = localDate.getDayOfWeek();
		//월 첫날
		int firstDate = localDate.withDayOfMonth(1).getDayOfMonth();
		//월 마지막날
		int lastDate = localDate.withDayOfMonth(localDate.lengthOfMonth()).getDayOfMonth();
		//2주치
//		LocalDate twoWeek = localDate.plusDays(13);
		
		System.out.println(month);
		System.out.println(firstDate);
		System.out.println(lastDate);
//		System.out.println(twoWeek.toString());
		
		List<String> dateList = new ArrayList<>();
		List<String> dayOfWeek = new ArrayList<>();

		for(int i = 0; i <= 13; i++) {
			LocalDate twoWeek = localDate.plusDays(i);
			String twoWeekStr = twoWeek.format(DateTimeFormatter.ofPattern("d"));
			
			DayOfWeek day = twoWeek.getDayOfWeek();
			String dayStr = "";
			
				switch (day) {
				case SUNDAY:
					dayStr = "일";
					break;
				case MONDAY:
					dayStr = "월";
					break;
				case TUESDAY:
					dayStr = "화";
					break;
				case WEDNESDAY:
					dayStr = "수";
					break;
				case THURSDAY:
					dayStr = "목";
					break;
				case FRIDAY:
					dayStr = "금";
					break;
				case SATURDAY:
					dayStr = "토";
					break;
				}
	
			dateList.add(twoWeekStr);
			dayOfWeek.add(dayStr);
			
		}

				
		model.addAttribute("dayOfWeek", dayOfWeek);
		model.addAttribute("dateList", dateList);
		
		return "post/theaterList";
	}
	
	@RequestMapping("/community")
	public String communityView() {
		return "post/community";
	}
	
	@RequestMapping("/create")
	public String createView() {
		return "post/create";
	}
}
