package com.kim.getjob.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kim.getjob.model.board.dto.BoardCrawling;
import com.kim.getjob.model.board.dto.RespListDto;

import lombok.NoArgsConstructor;

@Service

@NoArgsConstructor
public class BoardService {
	
	
	private BoardCrawling crawling;
	
	public List<RespListDto> get목록보기() {
		
	
	return crawling.목록보기();
	}
	
}
