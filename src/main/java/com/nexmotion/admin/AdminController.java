package com.nexmotion.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

  @RequestMapping("/admin/{menu1}/{menu2}.do")
  public String admin(@PathVariable String menu1,
      @PathVariable String menu2, ModelMap model) {
    model.addAttribute("menu1", menu1);
    model.addAttribute("menu2", menu2);

    return String.format("/admin/%s/%s", menu1, menu2);
  }
}
