
package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.WishListEntity;

@Repository
public interface WishListRepository extends JpaRepository<WishListEntity, Integer>{

	@Query(value="select w.*,p.product_name, u.first_name, u.last_name from wish_list w,product_details p, users u where p.product_id = w.product_id and w.user_id = u.user_id",nativeQuery = true)
	List<Object[]> getAll();
	
	@Query(value="select w.*,p.product_name, u.first_name, u.last_name from wish_list w,product_details p, users u where p.product_id = w.product_id and w.user_id = u.user_id and w.wish_list_id = :wishListId",nativeQuery = true)
	List<Object[]> getByWishListId(Integer wishListId);
	
	List<WishListEntity> findByUserId(Integer userId);
}
