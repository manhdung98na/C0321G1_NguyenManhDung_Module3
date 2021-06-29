package model.service;

import model.bean.Product;
import model.repository.ProductRepositoryImpl;

import java.util.List;

public class ProductServiceImpl implements ProductService {
    ProductRepositoryImpl repository = new ProductRepositoryImpl();
    @Override
    public boolean create(Product product) {
        List<Product> list = repository.getAll();
        for (Product o : list){
            if (product.getId() == o.getId()){
                return false;
            }
        }
        repository.save(product);
        return true;
    }

    @Override
    public List<Product> getAll() {
        return repository.getAll();
    }

    @Override
    public void save(Product product) {
        repository.save(product);
    }

    @Override
    public void delete(int id) {
        repository.delete(id);
    }

    @Override
    public Product getDetail(int id) {
        return repository.getDetail(id);
    }

    @Override
    public List<Product> searchByName(String name) {
        return null;
    }
}
