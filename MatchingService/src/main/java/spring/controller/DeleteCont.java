package spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.service.BoardService;

@Component
public class DeleteCont {
	@Autowired
	BoardService boardService;
	
	//게시글 삭제하기
		@PostMapping("delete.do")
		public String delete(@RequestParam int code) {
			boardService.delete(code);
			return "redirect:list.do";
		}
}