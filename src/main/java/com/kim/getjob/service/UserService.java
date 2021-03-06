package com.kim.getjob.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kim.getjob.model.ReturnCode;
import com.kim.getjob.model.user.dto.ReqJoinDto;
import com.kim.getjob.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	@Transactional
	public int 회원가입(ReqJoinDto dto) {

		try {
			int result = userRepository.findByUserId(dto.getUserId());

			if(result == 1) {
				return ReturnCode.아이디중복;
			}else {

				return userRepository.save(dto);
			}
			
		} catch (Exception e) {

			throw new RuntimeException();
		}
		
	}
}
