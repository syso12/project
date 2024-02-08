package com.study.free.web;

import com.study.code.ParentCode;
import com.study.code.service.ICommService;
import com.study.code.vo.CommVO;
import com.study.free.service.IFreeService;
import com.study.free.vo.FreeVO;
import com.study.paging.vo.PagingVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.inject.Inject;
import java.util.List;
@Controller
public class FreeController {
    @Inject
    IFreeService freeService;
    @Inject
    ICommService commService;

    @GetMapping("/freeBoard/freeBoardList")
    public String freeList(Model model, @ModelAttribute("paging")PagingVO paging){
        List<FreeVO> freeList = freeService.freeList(paging);
        List<CommVO> LocationList = commService.CodeList(ParentCode.LO00.name());
        model.addAttribute("freeList", freeList);
        model.addAttribute("LocationList", LocationList);
        return "freeBoard/freeBoardList";
    }
    @GetMapping("/freeBoard/freeBoardView")
    public String freeView(Model model, int boNo){
        FreeVO freeView = freeService.getFreeView(boNo);
        List<CommVO> LocationList = commService.CodeList(ParentCode.LO00.name());
        model.addAttribute("freeView", freeView);
        model.addAttribute("LocationList", LocationList);
        return "freeBoard/freeBoardView";
    }
    @GetMapping("/freeBoard/freeBoardEdit")
    public String freeEdit(Model model, int boNo){
        FreeVO freeEdit = freeService.getFreeView(boNo);
        List<CommVO> LocationList = commService.CodeList(ParentCode.LO00.name());
        System.out.println(LocationList);
        model.addAttribute("freeEdit", freeEdit);
        model.addAttribute("LocationList", LocationList);
        return "freeBoard/freeBoardEdit";
    }
    @PostMapping("/freeBoard/freeBoardModify")
    public String freeModify(FreeVO free){
        freeService.updateBoard(free);
        return "redirect:/freeBoard/freeBoardList";
    }

    @PostMapping("/freeBoard/freeBoardDelete")
    public String freeDelete(FreeVO free){
        freeService.deleteBoard(free);
        System.out.println("컨트롤러삭제됨");
        return "redirect:/freeBoard/freeBoardList";
    }

    @GetMapping("/freeBoard/freeBoardForm")
    public String freeForm(Model model){
        List<CommVO> LocationList = commService.CodeList(ParentCode.LO00.name());
        model.addAttribute("LocationList", LocationList);
        return "/freeBoard/freeBoardForm";
    }

    @PostMapping("/freeBoard/freeBoardRegister")
    public String freeRegister(FreeVO free, Model model) {
        freeService.registerBoard(free);
        return "redirect:/freeBoard/freeBoardList";


    }



}
