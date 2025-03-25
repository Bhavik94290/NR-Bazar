package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="productDetails")
public class ProductEntity {
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Integer	productId;
		private String productName;
		private Integer categoryId;//fk
		private Integer subCategoryId;//fk
		private String basePrice;
		private String offerPrice;
		private String offerePercentage;
		private String productDetail;
		private String productImageURL1;
		private String productImageURL2;
		private String productImageURL3;
		private String quantity;
		private String createdAt;
		
		public Integer getProductId() {
			return productId;
		}
		public void setProductId(Integer productId) {
			this.productId = productId;
		}
		public String getProductName() {
			return productName;
		}
		public void setProductName(String productName) {
			this.productName = productName;
		}
		public Integer getCategoryId() {
			return categoryId;
		}
		public void setCategoryId(Integer categoryId) {
			this.categoryId = categoryId;
		}
		public Integer getSubCategoryId() {
			return subCategoryId;
		}
		public void setSubCategoryId(Integer subCategoryId) {
			this.subCategoryId = subCategoryId;
		}
		public String getBasePrice() {
			return basePrice;
		}
		public void setBasePrice(String basePrice) {
			this.basePrice = basePrice;
		}
		public String getOfferPrice() {
			return offerPrice;
		}
		public void setOfferPrice(String offerPrice) {
			this.offerPrice = offerPrice;
		}
		public String getOfferePercentage() {
			return offerePercentage;
		}
		public void setOfferePercentage(String offerePercentage) {
			this.offerePercentage = offerePercentage;
		}
		public String getProductDetail() {
			return productDetail;
		}
		public void setProductDetail(String productDetail) {
			this.productDetail = productDetail;
		}
		public String getProductImageURL1() {
			return productImageURL1;
		}
		public void setProductImageURL1(String productImageURL1) {
			this.productImageURL1 = productImageURL1;
		}
		public String getProductImageURL2() {
			return productImageURL2;
		}
		public void setProductImageURL2(String productImageURL2) {
			this.productImageURL2 = productImageURL2;
		}
		public String getProductImageURL3() {
			return productImageURL3;
		}
		public void setProductImageURL3(String productImageURL3) {
			this.productImageURL3 = productImageURL3;
		}
		public String getQuantity() {
			return quantity;
		}
		public void setQuantity(String quantity) {
			this.quantity = quantity;
		}
		public String getCreatedAt() {
			return createdAt;
		}
		public void setCreatedAt(String createdAt) {
			this.createdAt = createdAt;
		}
		
		

}