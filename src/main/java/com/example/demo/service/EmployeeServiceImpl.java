package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.example.demo.model.Employee;
import com.example.demo.repo.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	@Autowired
	private EmployeeRepository empRepo;
	

	@Override
	public List<Employee> getAllEmployees() {
		// TODO Auto-generated method stub
		return empRepo.findAll();
	}

	@Override
	public void saveEmployee(Employee employee) {
		// TODO Auto-generated method stub
		this.empRepo.save(employee);
	}

	@Override
	public Employee getEmployeeById(long id) {
		// TODO Auto-generated method stub
		Optional<Employee> optional = empRepo.findById(id);
        Employee employee = null;
        if( optional.isPresent()) {
            employee = optional.get();
        } else {
            throw new RuntimeException("Employee not found for id: " + id);
        }
		return employee ;
	}

	@Override
	public void deleteEmployeeById(long id) {
		// TODO Auto-generated method stub
		this.empRepo.deleteById(id);
		
	}

	@Override
	public Page<Employee> findPaginated(int pageNo, int PageSize, String sortField, String sortDirection) {
		// TODO Auto-generated method stub
		
		Sort sort = sortDirection.equalsIgnoreCase(Sort.Direction.ASC.name())?Sort.by(sortField).ascending():Sort.by(sortField).descending();
		
		Pageable pageable= PageRequest.of(pageNo-1, PageSize);
		
		
		return this.empRepo.findAll(pageable);
	}

}
//Parameters:
//pageNo: The page number to retrieve. For example, if pageNo = 1, it will return the first page.
//pageSize: The number of records on each page. For example, if pageSize = 5, each page will show 5 Employee records.
//sortField: The field by which the results should be sorted (e.g., "name" or "salary").
//sortDirection: The direction of sorting, either "ASC" for ascending or "DESC" for descending.
//
//Purpose: This line creates a Sort object that defines how the results should be sorted based on the sortField and sortDirection parameters.
//Explanation:
//It checks if sortDirection is equal to "ASC" (case-insensitive).
//If true, it sorts the records by sortField in ascending order.
//If false, it sorts them in descending order.
//
//Purpose: This line creates a Pageable object, which is used to specify pagination and sorting information for the database query.
//Explanation:
//PageRequest.of(pageNo - 1, pageSize) adjusts pageNo by subtracting 1 because Spring Data JPA uses zero-based page indexing.
//pageSize is the number of records per page.
//So, if you request page 1 with pageSize = 5, it will return records 0-4 in the database.


