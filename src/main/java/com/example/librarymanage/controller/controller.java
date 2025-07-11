package com.example.librarymanage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.librarymanage.entity.entity;
import com.example.librarymanage.rep.EntityRepository;

import jakarta.servlet.http.HttpSession;
import java.util.Optional;

@Controller
//@RequestMapping("/ui")
public class controller {

    @Autowired
    private EntityRepository entityRepository;

    
    @GetMapping("/signup")
    public String showSignupForm(Model model) {
        if (!model.containsAttribute("entity")) {
            model.addAttribute("entity", new entity());
        }
        return "Signup";  
    }

    
    @PostMapping("/home")
    public String registerUser(@ModelAttribute("entity") entity entity,
                               RedirectAttributes redirectAttributes) {

        if (entityRepository.existsByEmail(entity.getEmail())) {
            redirectAttributes.addFlashAttribute("errorMessage", "Email already exists!");
            redirectAttributes.addFlashAttribute("entity", entity);
            return "redirect:/signup";  
        }

        entityRepository.save(entity);
        return "redirect:/home"; 
    }
    
    @GetMapping("/login")
    public String showLoginPage() {
    	return "login";
    }
    
    @PostMapping("/login")
    public String processLogin(@RequestParam String email,
                               @RequestParam String password,
                               Model model,
                               HttpSession session) {

        Optional<entity> userOptional = entityRepository.findByEmailAndPassword(email, password);

        if (userOptional.isPresent()) {
//        	entity user = userOptional.get();
//            session.setAttribute("username", user.getUsername()); // or user.getUsername()
            return "home"; // You can create welcome.jsp
        } else {
            model.addAttribute("errorMessage", "Invalid email or password!");
            return "login";
        }
    }
    
    @GetMapping("/home")
    public String showHomePage() {
        return "home";  
    }

    @GetMapping("/books")
    public String viewbook() {
    	return "Books";
    }
   
    
   
}
