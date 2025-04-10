package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.OrdersEntity;
import com.grownited.entity.UserEntity;

@Repository
public interface OrdersRepository extends JpaRepository<OrdersEntity, Integer>{

	@Query(value="select o.*, u.first_name, u.last_name from orders o, users u where u.user_id = o.user_id",nativeQuery = true)
	List<Object[]> getAll();
	
	@Query(value="select o.*, u.first_name, u.last_name from orders o, users u where u.user_id = o.user_id and o.order_id = :orderId",nativeQuery = true)
	List<Object[]> getByOrderId(Integer orderId);
	
	@Query(value = "select o.status,o.total_amount,u.first_name,u.last_name from orders o join users u on o.user_id = u.user_id and o.status = 'Pending'", nativeQuery = true)
	List<Object[]> getAllPendingOrders();
}