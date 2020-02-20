package com.kim.getjob.repository;

import com.kim.getjob.model.user.dto.ReqJoinDto;

public interface UserRepository {
	
	int save(ReqJoinDto dto);
	int findByUserId(String userId);

}
