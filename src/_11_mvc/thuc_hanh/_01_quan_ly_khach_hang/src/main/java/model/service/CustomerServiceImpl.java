package model.service;

import model.bean.Customer;

import java.util.List;

public class CustomerServiceImpl implements CustomerService{
    CustomerServiceImpl customerService = new CustomerServiceImpl();
    @Override
    public List<Customer> findAll() {
        return customerService.findAll();
    }

    @Override
    public void save(Customer customer) {
        customerService.save(customer);
    }

    @Override
    public Customer findById(int id) {
        return customerService.findById(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customerService.update(id, customer);
    }

    @Override
    public void remove(int id) {
        customerService.remove(id);
    }
}
