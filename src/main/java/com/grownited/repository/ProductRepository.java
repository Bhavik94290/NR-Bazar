package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.grownited.entity.ProductEntity;

@Repository
public interface ProductRepository extends JpaRepository<ProductEntity,Integer> {

	
	@Query(value= "select p.*, c.category_name, sc.sub_category_name from product_details p, category c, sub_category sc where c.category_id = p.category_id and sc.sub_category_id = p.sub_category_id", nativeQuery = true)
	List<Object[]> getAll();
	
	@Query(value= "select p.*, c.category_name, sc.sub_category_name from product_details p, category c, sub_category sc where c.category_id = p.category_id and sc.sub_category_id = p.sub_category_id and p.product_id =:productId", nativeQuery = true)
	List<Object[]> getByProductId(Integer productId);
	
	
	  
	  
	  @Query("SELECT p FROM ProductEntity p WHERE p.id IN (SELECT w.productId FROM WishListEntity w WHERE w.userId = :userId)")
		List<ProductEntity> findWishlistProductsByUserId(@Param("userId") Integer userId);


	List<ProductEntity> findByCategoryId(Integer categoryId);
}