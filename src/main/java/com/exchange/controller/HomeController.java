package com.exchange.controller;

import com.exchange.domain.enums.Currency;
import com.exchange.domain.enums.Network;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String greeting(Model model) {

        model.addAttribute("currencies", Currency.values());
        model.addAttribute("networks", Network.values());

        return "home";
    }
}
