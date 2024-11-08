package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Employee;
import com.example.demo.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService emps;
	
	 @GetMapping("/")
	    public String viewHomePage(Model model){
	         return findPaginated(1, "firstName", "asc", model);
	    }
	 
	 @GetMapping("/showNewEmployeeForm")
	 public String showNewEmployeeForm(Model model) {
		 
		// create model attribute to bind from data
		 Employee emp= new Employee();
//		 Purpose: Create a new, empty Employee object.
//		 Employee is an entity class that represents the employee data structure.
//		 Creating this empty Employee instance allows the form fields in the view to be bound to this object, so that when the form is submitted, the data will be automatically mapped to this Employee instance.
		 
		 model.addAttribute("employee", emp);
		 
		 return "add_new";//we will use the action tag to (saveEmployee) method name post
	 }
//	 Parameter: Model model
//
//	 Model is an interface in Spring MVC that allows you to pass data to the view.
//	 Here, model will hold attributes that can be accessed in the view (HTML template) that displays the form.
	 
	 
	 @PostMapping("/saveEmployee")
	 public String saveEmployee(@ModelAttribute("employee")Employee employee)
	 
	 {
		 
//		 Method Purpose: This method is designed to handle the submission of a form that captures employee details. When a user submits this form, this method is called to save the provided data.
//
//		 Parameter: @ModelAttribute("employee") Employee employee
//
//		 @ModelAttribute("employee"): This annotation binds the form data from the "employee" attribute in the view (e.g., HTML form) to the Employee object parameter in the method.
//		 How It Works: When the form is submitted, Spring MVC automatically populates the fields of the Employee object (employee) with the data entered in the form based on field names.
//		 Example: If the form has fields with names like firstName or lastName, Spring will automatically set these fields in the employee object with the values submitted in the form.
		 
		 emps.saveEmployee(employee);
		 
		 return "redirect:/";
	 }
	 
	 
	 
	 @GetMapping("/showFormForUpdate/{id}")
	    public String showFormForUpdate(@PathVariable(value = "id") long id, Model model){
	        // get employee from the service
	        Employee employee = emps.getEmployeeById(id);

	        //set employee a model attribute to pre-population the form
	        model.addAttribute("employee", employee);
	        return "update_employee";
	    }
	 
	 @GetMapping("/deleteEmployee/{id}")
	    public String deleteEmployee(@PathVariable (value = "id") long id) {

	        // call delete employee method
	        this.emps.deleteEmployeeById(id);
	        return "redirect:/";
	    }
	 
	 @GetMapping("/page/{pageNo}")
	    public String findPaginated(@PathVariable (value = "pageNo") int pageNo,
	                                @RequestParam("sortField") String sortField,
	                                @RequestParam("sortDir") String sortDir,
	                                Model model) {
	        int pageSize = 5;

	        Page<Employee> page = emps.findPaginated(pageNo, pageSize, sortField, sortDir);
	        List<Employee> listEmployees = page.getContent();

	        model.addAttribute("currentPage", pageNo);
	        model.addAttribute("totalPages", page.getTotalPages());
	        model.addAttribute("totalItems", page.getTotalElements());

	        model.addAttribute("sortField", sortField);
	        model.addAttribute("sortDir", sortDir);
	        model.addAttribute("reverseSortDir", sortDir.equals("asc") ? "desc" : "asc");

	        model.addAttribute("listEmployees", listEmployees);
	        return "index";
	    }
}
