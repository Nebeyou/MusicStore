package org.nebeyou.music.dao.imp;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.nebeyou.music.dao.ProductDao;
import org.nebeyou.music.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Neb on 4/1/2017.
 */
@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
    @Autowired
    private SessionFactory sessionFactory;
    public void addProduct(Product product) {
        Session session=sessionFactory.getCurrentSession();
        session.beginTransaction();
        session.save(product);
        session.flush();

    }

    public Product getProductById(String productId) {
        Session session=sessionFactory.getCurrentSession();
       Product product=(Product) session.get(Product.class,productId);

        return product;
    }

    public List<Product> getAllProduct() {
        Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery("from Product ");
        List<Product> products=query.list();
        return products;
    }


    public void deleteProduct(String productId) {
            Session session=sessionFactory.getCurrentSession();
            session.delete(getProductById(productId));
            session.flush();
    }
}
