package com.nexmotion.sample;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SampleController {
  @RequestMapping("/{url}.do")
  public String samplePage(@PathVariable String url, ModelMap model) {
    //프론트단에서 필요한 데이터 전달
    model.addAttribute("message", "HELLO WORLD!!");
    
    return "/" + url;
  }
}