package org.nebeyou.music.dao;

import org.nebeyou.music.model.Product;

import java.util.List;

/**
 * Created by Neb on 4/1/2017.
 */
public interface ProductDao {
     void addProduct(Product product);
    Product getProductById(String productId);
    List<Product> getAllProduct();

    void  deleteProduct(String productId);
}
