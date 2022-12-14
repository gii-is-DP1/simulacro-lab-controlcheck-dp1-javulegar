package org.springframework.samples.petclinic.product;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;



public interface ProductRepository extends CrudRepository<Product,Integer>{
    List<Product> findAll();
    @Query("SELECT pt FROM ProductType pt")
    List<ProductType> findAllProductTypes();
    @Query("SELECT pt FROM ProductType pt WHERE pt.name = ?1")
    ProductType findProductByName(String name);
    @Query("SELECT pt FROM Product pt WHERE pt.price < ?1")
    List<Product> findbyProceLessThan(Double price);
    Optional<Product> findById(int id);
    Product findByName(String name);
    Product save(Product p);
}
