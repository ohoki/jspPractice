package co.micol.notice.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.notice.common.Command;
import co.micol.notice.service.NoticeService;
import co.micol.notice.service.NoticeVO;
import co.micol.notice.service.Impl.NoticeServiceImpl;

public class NoticeUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 db에 수정 저장
		NoticeService ns = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeId(Integer.parseInt(request.getParameter("noticeId")));
		vo.setNoticeWdate(Date.valueOf(request.getParameter("noticeWdate")));
		vo.setNoticeSubject(request.getParameter("noticeTitle"));
		vo.setNoticeSubject(request.getParameter("noticeSubject"));
		
		int n = ns.noticeUpdate(vo);
		if(n != 0) {
			request.setAttribute("message", "정상적으로 수정되었습니다.");
		}else {
			request.setAttribute("message", "게시글 수정이 실패했습니다.");
		}
		return "notice/noticeMessage";
	}

}
