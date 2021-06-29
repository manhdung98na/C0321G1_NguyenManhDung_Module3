package model.service;

import model.bean.Product;

import java.util.List;

public interface ProductService {
    boolean create(Product product);
    List<Product> getAll();
    void save(Product product);
    void delete(int id);
    Product getDetail(int id);
    List<Product> searchByName(String name);
}
