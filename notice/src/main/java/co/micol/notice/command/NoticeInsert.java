package co.micol.notice.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.notice.common.Command;
import co.micol.notice.service.NoticeService;
import co.micol.notice.service.NoticeVO;
import co.micol.notice.service.Impl.NoticeServiceImpl;

public class NoticeInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//회원가입을 수행한다.
		NoticeService ns = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeWriter(request.getParameter("noticeWriter"));
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeSubject(request.getParameter("noticeSubject"));
		vo.setNoticeWdate(Date.valueOf(request.getParameter("noticeWdate")));
		
		int result = ns.noticeInsert(vo);
		
		if(result != 0) {
			request.setAttribute("message", "게시글 등록이 정상적으로 처리되었습니다.");
		}else {
			request.setAttribute("message", "게시글 등록에 실패했습니다. 다시 작성해주세요.");
		}
		
		return "notice/noticeMessage";
	}
}
