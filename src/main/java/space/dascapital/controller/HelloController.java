package space.dascapital.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    // endpoint not configured to have any session or authentication
    @RequestMapping("/hello")
    public String sayHello() {
        return "hello";
    }

    // endpoint configured to use basic auth and then set a cookie we can use afterwards
    @RequestMapping("/goodbye")
    public String goodbye() {
        return "goodbye";
    }
}
