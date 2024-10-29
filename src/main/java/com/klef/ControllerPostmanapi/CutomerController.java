package com.klef.ControllerPostmanapi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CutomerController {

    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/products")
    public String products() {
        return "products"; // Returns the products.jsp view
    }

    @GetMapping("/categories")
    public String categories() {
        return "categories"; // Returns the categories.jsp view
    }

    @GetMapping("/deals")
    public String deals() {
        return "deals"; // Returns the deals.jsp view
    }

    @GetMapping("/contact")
    public String contact() {
        return "contact"; // Returns the contact.jsp view
    }

    @GetMapping("/account")
    public String account() {
        return "account";
    }

    @GetMapping("/cart")
    public String cart() {
        return "cart";
    }

    @GetMapping("/checkout")
    public String payment() {
        return "checkout";
    }

    @GetMapping("/updateProfile")
    public String update() {
        return "updateProfile";
    }

    @PostMapping("/processUpdateProfile")
    public ModelAndView processUpdateProfile() {
        // Add your logic to update the profile here
        // For example, you can perform database operations to update the user's profile

        // Create a ModelAndView for success
        ModelAndView modelAndView = new ModelAndView("sucess"); // Ensure success.jsp exists in your views
        modelAndView.addObject("message", "Profile updated successfully!"); // Optional: message to display
        return modelAndView;
    }
}
