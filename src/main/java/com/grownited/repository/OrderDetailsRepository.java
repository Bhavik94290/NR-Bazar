package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.OrderDetailsEntity;

@Repository
public interface OrderDetailsRepository extends JpaRepository<OrderDetailsEntity, Integer> {

	
	@Query(value="select od.*,o.status, p.product_name from order_detail od, orders o, product_details p where od.order_id = o.order_id and od.product_id = p.product_id",nativeQuery = true)
	List<Object[]> getAll();
	
	@Query(value="select od.*,o.status, p.product_name from order_detail od, orders o, product_details p where od.order_id = o.order_id and od.product_id = p.product_id and od.order_detail_id = :orderDetailId",nativeQuery = true)
	List<Object[]> getByOrderDetailId(Integer orderDetailId);
}