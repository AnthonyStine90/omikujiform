package com.anthony.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class OmikujiController {
  //route to index
  @RequestMapping("/")
  public String index() {
    return "index.jsp";
  }
  //route to omikuji
  @RequestMapping("/omikuji")
  public String omikuji() {

    return "omikuji.jsp";
  }
  //route to display
  @RequestMapping("/omikuji/show")
  public String show() {
    return "display.jsp";
  }
  // form -- post method
  @PostMapping("/form")
  public String form(
      // value must be the same as the value in the index form
      @RequestParam(value = "number") String number,
      @RequestParam(value = "city") String city,
      @RequestParam(value = "person") String person,
      @RequestParam(value = "hobby") String hobby,
      @RequestParam(value = "living") String living,
      @RequestParam(value = "nice") String nice,
      HttpSession session) {
    // sets each attribute to current session
    session.setAttribute("number", number);
    session.setAttribute("city", city);
    session.setAttribute("person", person);
    session.setAttribute("hobby", hobby);
    session.setAttribute("living", living);
    session.setAttribute("nice", nice);

    return "redirect:/omikuji/show";
  }

}
