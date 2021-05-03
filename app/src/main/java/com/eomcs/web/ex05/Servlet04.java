// HTTP 프로토콜 다루기 - HttpServlet 클래스를 활용하기
// 실무에서 주로 쓰는 방법
package com.eomcs.web.ex05;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex05/s4")
public class Servlet04 extends HttpServlet {

  // 톰캣 서버에서 doGet, doPost를 호출하는 것이 아니다!
  // HttpServlet 에서 이를 호출되게끔 프로그램을 짜두었고
  // HttpServlet을 상속받음으로써 이를 호출할 수 있게 되는 것이다.

  // 톰캣 서버에서 호출되는 메서드는 init, service, destroy, getServletConfig, getServletInfo() 등 5가지이다.
  private static final long serialVersionUID = 1L;

  // HTTP GET 요청에 응답하고 싶다면
  // 상속 받은 메서드 중에서 doGet()을 오버라이딩 한다.
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    // 테스트
    // - http://localhost:8080/web/ex05/test04.html 실행
    //
    response.setContentType("text/plain;charset=UTF-8");
    PrintWriter out = response.getWriter();
    out.println("GET 요청입니다.");
  }

  // HTTP POST 요청에 응답하고 싶다면
  // 상속 받은 메서드 중에서 doPost()을 오버라이딩 한다.
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    // 테스트
    // - http://localhost:8080/web/ex05/test04.html 실행
    //
    response.setContentType("text/plain;charset=UTF-8");
    PrintWriter out = response.getWriter();
    out.println("POST 요청입니다.");
  }
}

