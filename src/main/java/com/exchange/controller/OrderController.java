package com.exchange.controller;

import com.exchange.domain.Order;
import com.exchange.domain.User;
import com.exchange.domain.enums.Currency;
import com.exchange.domain.enums.Network;
import com.exchange.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class OrderController {
    @Autowired
    private OrderService orderService;

    @GetMapping("/order/{id}")
    public String getOrderByInternalOrderNumber(@PathVariable String id,
                                                Model model) {
        Order order = orderService.getOrderByInternalOrderNumber(id);

        model.addAttribute("order", order);

        return "order";
    }

    @GetMapping("/orders")
    public String getOrders(@AuthenticationPrincipal User user,
                            Model model) {
        Iterable<Order> orders = orderService.getOrders(user.getId());

        model.addAttribute("orders", orders);
        model.addAttribute("isOrderInit", true);
        model.addAttribute("currencies", Currency.values());
        model.addAttribute("networks", Network.values());

        return "order";
    }

    @PostMapping("/initOrder")
    public String initOrder(@Valid Order order,
                            Model model) {
        Order initOrder = orderService.initOrder(order);

        return "redirect:/order/" + initOrder.getOrderNumber();
    }

    @PostMapping("/order")
    public String completeOrder(@Valid Order order,
                                Model model) {
        Order completeOrder = orderService.completeOrder(order);

        model.addAttribute("isOrderInit", true);

        return "redirect:/order/" + completeOrder.getOrderNumber();
    }

}
