package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.ReviewEntity;

@Repository
public interface ReviewRepository extends JpaRepository<ReviewEntity, Integer> {

	
@Query(value=" select r.*,p.product_name, u.first_name, u.last_name from review r,product_details p, users u where p.product_id = r.product_id and r.user_id = u.user_id",nativeQuery = true)
List<Object[]> getAll();

@Query(value=" select r.*,p.product_name, u.first_name, u.last_name from review r,product_details p, users u where p.product_id = r.product_id and r.user_id = u.user_id and r.review_id = :reviewId",nativeQuery = true)
List<Object[]> getByReviewId(Integer reviewId);
}