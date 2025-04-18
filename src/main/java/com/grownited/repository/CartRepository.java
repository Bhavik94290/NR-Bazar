
package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.CartEntity;

@Repository
public interface CartRepository extends JpaRepository<CartEntity, Integer>{

	
	@Query(value="select c.*, p.product_name,u.first_name, u.last_name from cart_details c, product_details p, users u where p.product_id = c.product_id and u.user_id = c.user_id",nativeQuery = true)
	List<Object[]> getAll();
	
	@Query(value="select c.*, p.product_name,u.first_name, u.last_name from cart_details c, product_details p, users u where p.product_id = c.product_id and u.user_id = c.user_id and c.cart_id = :cartId",nativeQuery = true)
	List<Object[]> getByCartId(Integer cartId);
	
	@Query(value=" select c.*,p.product_name,p.offer_price,p.product_imageurl1 from cart_details c,product_details p where c.product_id=p.product_id and c.user_id = :userId",nativeQuery = true)
	List<Object[]> getAllCartItemByUserId(Integer userId);
	
	List<CartEntity> findByUserId(Integer userId);
}
