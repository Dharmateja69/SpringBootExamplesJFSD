package com.klef.ControllerPostmanapi;

//import java.util.ArrayList;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;




@Controller
public class CutomerController {

//    private List<Customer> l = new ArrayList<Customer>();

    // Add customer method, which is a POST method
//    @PostMapping("/add")
//    public String add(@RequestBody Customer c) {
//        l.add(c);
//        return "Added successfully...!!";
//    }
//
//    // View all customers
//    @GetMapping("/viewalldata")
//    public List<Customer> viewalldata() {
//        return l;
//    }
    
    @GetMapping("/")
    public String home() {
        return "home";
    }
    
    @GetMapping("/sidu")
    public String mainpage(@RequestParam String param) {
        return new String();
    }
    
    
    
    
}
