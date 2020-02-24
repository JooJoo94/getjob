package com.kim.getjob.model.board.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RespListDto {
	
	private String companyName;
	private String title;
	private String deadline;

}
