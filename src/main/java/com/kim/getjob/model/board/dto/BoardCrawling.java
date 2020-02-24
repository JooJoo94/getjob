package com.kim.getjob.model.board.dto;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import lombok.Data;

@Data
public class BoardCrawling {

	
	public List<RespListDto> 목록보기() {		
		String url = "https://www.saramin.co.kr/zf_user/";
		List<RespListDto> list = new ArrayList();
		RespListDto dto = new RespListDto();

		try {
			Document doc = Jsoup.connect(url).get();
			Elements element = doc.select(".inner_cont").select("ul.list_product").select("li");
			
			  for(Element el : element) { 
			  dto.setCompanyName(el.select("strong").text());
			  dto.setTitle(el.select("em").text());
			  dto.setDeadline(el.select(".recruit_func").select("num_dday").text());
			  list.add(dto); 
			  } 
			  System.out.println(list.get(1).getTitle());
			 
		}catch (IOException e) {		
			e.printStackTrace();
		}
		
		return list;
	}
}
