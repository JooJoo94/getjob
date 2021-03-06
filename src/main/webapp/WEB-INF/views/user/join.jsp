<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/nav.jsp"%>

<section class="section_padding p-5">
	<div class="container">
		<div class="row d-flex justify-content-center">
			<div class="col-12 text-center">
				<h2 class="join-title">회원가입</h2>
			</div>
			<div class="col-lg-8 col-md-6 col-sm-8 ">
				<form class="joinForm" id="joinForm">
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label for="userName">이름</label> 
								<input class="form-control" id="userName" type="text"
									onfocus="this.placeholder = ''" placeholder="이름을 입력하세요" />
							</div>
						</div>
						<div class="col-sm-12">
							<div class="form-group">
								<label for="userId">아이디</label>
								<button class="btn boxed-btn pull-right">중복확인</button>
								<input class="form-control" id="userId" type="text"
									onfocus="this.placeholder = ''" placeholder="아이디를 입력하세요" />
							</div>
						</div>
						<br />
						<div class="col-sm-12">
							<div class="form-group">
								<label for="password">비밀번호</label> 
								<input class="form-control" id="password" type="password" onfocus="this.placeholder = ''" 
								placeholder="비밀번호를 입력하세요" />
							</div>
						</div>
						<div class="col-sm-12">
							<div class="form-group">
								<label for="passwordCK">비밀번호 확인</label> 
								<input class="form-control" id="passwordCK" type="password" onfocus="this.placeholder = ''" 
								placeholder="비밀번호를 다시 입력하세요" />
							</div>
						</div>
						<div class="col-sm-12">
							<div class="form-group">
								<label for="email">이메일</label> <input class="form-control" id="email"
									type="text" onfocus="this.placeholder = ''" placeholder="이메일을 입력하세요" />
							</div>
						</div>
						<div class="col-sm-12">
							<div class="form-group">
								<label for="phone">전화번호</label> <input class="form-control" id="phone"
									type="text" onfocus="this.placeholder = ''" placeholder="전화번호 입력하세요" />
							</div>
						</div>
						<div class="col-sm-12">
							<div class="form-group">
								<label for="address">주소</label>
								<button class="btn boxed-btn pull-right">주소찾기</button>
								<input class="form-control" id="address" type="text"
									onfocus="this.placeholder = ''" placeholder="주소를 입력하세요" />
							</div>
						</div>
					</div>
					<div class="form-group mt-3">
						<button type="submit" id="join--submit" class="button btn-block  button-contactForm btn_4 boxed-btn">
							회원가입</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<%@include file="../include/script.jsp"%>
<script>
$('#join--submit').on('click', function() {
	var data = {
		userName : $('#userName').val(),
		userId : $('#userId').val(), 
		password : $('#password').val(),
		email : $('#email').val(),
		phone : $('#phone').val(),
		address : $('#address').val()
	};

	$.ajax({
		type : 'POST',
		url : '/user/join',
		data : JSON.stringify(data),
		contentType : 'application/json; charset=utf-8',
		dataType : 'json'
	}).done(function(r) {
		if (r.statusCode == 200) {
			console.log(r);
			alert('회원가입 성공');
			location.href = '/user/login';
		} else {
			if (r.msg == '아이디중복') {
				console.log(r);
				alert('아이디가 중복되었습니다.');
			} else {
				console.log(r);
				alert('회원가입 실패');
			}
		}
	}).fail(function(r) {
		var message = JSON.parse(r.responseText);
		console.log((message));
		alert('서버 오류');
	});
});
</script>
<%@include file="../include/footer.jsp"%>