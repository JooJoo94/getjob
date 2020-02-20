<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/nav.jsp"%>

    <section class="contact-section section_padding">
      <div class="container">
        <div class="row d-flex justify-content-center">
          <div class="col-12 text-center">
            <h2 class="contact-title">로그인</h2>
          </div>
          <div class="col-lg-8 col-md-6 col-sm-8 ">
            <form
              class="form-contact contact_form"
              action="contact_process.php"
              method="post"
              id="contactForm"
              novalidate="novalidate"
            >
              <div class="row">
                <div class="col-sm-12">
                  <div class="form-group">
                    <label for="userId">아이디</label>
                    <input
                      class="form-control"
                      name="name"
                      id="name"
                      type="text"
                      onfocus="this.placeholder = ''"
                      onblur="this.placeholder = '아이디를 입력하세요'"
                      placeholder="아이디를 입력하세요"
                    />
                  </div>
                </div>
                <br />
                <div class="col-sm-12">
                  <div class="form-group">
                    <label for="userId">비밀번호</label>
                    <input
                      class="form-control"
                      name="email"
                      id="email"
                      type="email"
                      onfocus="this.placeholder = ''"
                      onblur="this.placeholder = '비밀번호를 입력하세요'"
                      placeholder="비밀번호를 입력하세요"
                    />
                  </div>
                </div>
              </div>
              <div class="form-group mt-3">
                <button
                  type="submit"
                  class="button btn-block  button-contactForm btn_4 boxed-btn"
                >
                  로그인
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

<%@include file="../include/script.jsp"%>
<%@include file="../include/footer.jsp"%>