package co.micol.notice.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.notice.common.Command;

public class MemberLogout implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그아웃
		HttpSession session = request.getSession();
		String name = (String)session.getAttribute("name");
		session.invalidate(); //session 삭제
		request.setAttribute("message", name+"님 안녕히 가세요.");
		return "member/memberMessage";
	}

}
