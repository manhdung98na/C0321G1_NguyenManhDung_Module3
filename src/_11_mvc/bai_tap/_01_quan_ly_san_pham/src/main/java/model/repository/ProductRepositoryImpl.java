package model.repository;

import model.bean.Product;

import java.util.*;

public class ProductRepositoryImpl implements ProductRepository{
    private static HashMap<Integer, Product> products;
    static {
        products = new HashMap<>();
        products.put(1, new Product(1,"Vở kẻ ngang", 10000, "Vở kẻ ngang", "Hải Tiến"));
        products.put(2, new Product(2,"Bút", 5000, "Bút bi", "Thiên Long"));
        products.put(3, new Product(3,"Bút xoá", 15000, "Bút xoá", "Thiên Long"));
        products.put(4, new Product(4,"Thước", 20000, "Thước kẻ", "M&G"));
        products.put(5, new Product(5,"Vở ô li", 80000, "Vở ô li", "Hồng Hà"));
        products.put(6, new Product(6,"Vở Campus", 14000, "Vở Campus", "Campus"));
    }
    @Override
    public List<Product> getAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public void delete(int id) {
        products.remove(id);
    }

    @Override
    public Product getDetail(int id) {
        return products.get(id);
    }

    @Override
    public List<Product> searchByName(String name) {
        List<Product> list = new ArrayList<>();
        Set<Integer> set = products.keySet();
        for (Integer key : set) {
            if (products.get(key).getName().contains(name)){
                list.add(products.get(key));
            }
        }
        return list;
    }
}
