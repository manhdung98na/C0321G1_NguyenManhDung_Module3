package model.repository;

import model.bean.Product;

import java.util.List;

public interface ProductRepository {
    List<Product> getAll();
    void save(Product product);
    void delete(int id);
    Product getDetail(int id);
    List<Product> searchByName(String name);
}
