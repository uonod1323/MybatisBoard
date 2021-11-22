package com.example.mybatisboard.controller;

import com.example.mybatisboard.domain.Board;
import com.example.mybatisboard.service.BoardService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller // 컨트롤러의 역할을 수행하는 클래스임을 명시
@RequestMapping("/board/**") // "/board/"로 접근하는 모든 url은 BoardController가 처리함
@RequiredArgsConstructor
public class BoardController {

    private final BoardService service;

    @GetMapping("/hello") //hello를 받으면 아래 메서드 실행
    public String Hello() {
        return "/boards/hello"; //boards의 hello.html을 view로 보여줌
    }

    @GetMapping("/test")
    public String test(Model model) { //model은 hashmap 형태를 한 key와 value값으로 사용할 수 있는 객체
        model.addAttribute("cnt", service.boardCount()); // 키,밸류 구성
        model.addAttribute("test", service.boardList());
        return "/boards/hello";
    }

    @GetMapping("/main")
    public String main(Model model) {
        model.addAttribute("list", service.boardList());
        return "/boards/main";
    }

    @GetMapping("/view")
    public String viewBoard(Model model, Long boardId) {
        model.addAttribute("view", service.getBoard(boardId));
        return "/boards/view";
    }

    @GetMapping("/upload")
    public String uploadBoardForm(){
        return "/boards/upload";
    }

    @PostMapping("/upload")
    public String uploadBoard(Board board){
        service.uploadBoard(board);
        return "redirect:/board/main";
    }

    @PutMapping("/update")
    public String updateBoard(Board board){
        service.updateBoard(board);
        return "redirect:/board/main";
    }

    @DeleteMapping("/delete")
    public String deleteBoard(Long boardId){
        service.deleteBoard(boardId);
        return "redirect:/board/main";
    }
}