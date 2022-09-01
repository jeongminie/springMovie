package com.jeongmini.movie;

import java.util.ArrayList;
import java.util.Calendar;
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
		Calendar calendar = Calendar.getInstance();
		
		int year = calendar.get(Calendar.YEAR);
		int month = calendar.get(Calendar.MONTH)+1;
		int date = calendar.get(Calendar.DATE);
		
		//해당월의 첫날
		int startDate = calendar.getMinimum(Calendar.DATE);
		//해당월의 마지막 날
		int endDate = calendar.getActualMaximum(Calendar.DATE);
		//1일의 요일
		int startDay = calendar.get(Calendar.DAY_OF_WEEK);
		
		
		List<String> week = new ArrayList<>();
		List<Integer> dateList = new ArrayList<>();
		
		week.add("일요일");

		String dayStr = "";
		
		for(int i = 1; i <= endDate; i++) {
			dateList.add(startDate); 
				
//				switch() {
//				case 0 :
//					dayStr = "일";
//					break;
//				case 1 :
//					dayStr = "월";
//					break;
//				case 2 :
//					dayStr = "화";
//					break;
//				case 3 :
//					dayStr = "수";
//					break;
//				case 4 :
//					dayStr = "목";
//					break;
//				case 5 :
//					dayStr = "금";
//					break;
//				case 6 :
//					dayStr = "토";
//					break;
//				}
				
				System.out.println(dayStr);
				
			
			
			startDate++;
		}
		
		
		model.addAttribute("dateList", dateList);
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("date", date);
		model.addAttribute("endDate", endDate);
		model.addAttribute("startDay", startDay);
		model.addAttribute("dayStr", dayStr);
		
		
		return "post/theaterList";
	}
	
	private Object String(List<Integer> dateList) {
		// TODO Auto-generated method stub
		return null;
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
