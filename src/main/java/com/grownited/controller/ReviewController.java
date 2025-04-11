package com.grownited.controller;

import java.time.LocalDate;
import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CartEntity;
import com.grownited.entity.ProductEntity;
import com.grownited.entity.ReviewEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.ProductRepository;
import com.grownited.repository.ReviewRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class ReviewController {
	
	@Autowired
	ProductRepository productRepository;
	
	@Autowired
	ReviewRepository reviewRepo;
	
	@GetMapping("review")
	public String review(Model model) {
		
		List<ProductEntity> allProduct = productRepository.findAll();// all state
		model.addAttribute("allProduct",allProduct);
		return"Review";
	}
	
	@PostMapping("savereviews")
	public String saveReviews(ReviewEntity entityReview,HttpSession session) {
		System.out.println(entityReview.getReviewText());
		System.out.println(entityReview.getRating());
		System.out.println(entityReview.getCreatedAt());
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId(); 
		entityReview.setUserId(userId);
		entityReview.setCreatedAt(LocalDate.now());
		
		reviewRepo.save(entityReview);
		return"redirect:/review";
	}
	
	@GetMapping("listreview")
	public String listReview(Model model) {
		List<Object[]> reviewList = reviewRepo.getAll();
		
		model.addAttribute("allReviewList", reviewList);
		
		return"ListReview";
	}
	
	@GetMapping("viewreview")
	public String viewReview(Integer reviewId, Model model) {
		List<Object[]> op = reviewRepo.getByReviewId(reviewId);
		model.addAttribute("review", op);
		return "ViewReview";
	}

	
	@GetMapping("deletereview")
	public String deleteReview(Integer reviewId) {
		reviewRepo.deleteById(reviewId);//delete from members where memberID = :memberId
		return "redirect:/listreview";
	}
	
	@GetMapping("editreview")
	public String editReview(Integer reviewId,Model model) {
		Optional<ReviewEntity> op = reviewRepo.findById(reviewId);
		if (!op.isPresent()) {
			return "redirect:/listreview";
		} else {
			model.addAttribute("review",op.get());
			return "EditReview";

		}
	}

	@PostMapping("updatereview")
	public String updateReview(ReviewEntity reviewEntity) {//pcode vhreg type vid 
		
		System.out.println(reviewEntity.getReviewId());//id? db? 

		Optional<ReviewEntity> op = reviewRepo.findById(reviewEntity.getReviewId());
		
		if(op.isPresent())
		{
			ReviewEntity dbReview = op.get(); //pcode vhreg type id userId 
			dbReview.setReviewText(reviewEntity.getReviewText());//type 
			dbReview.setRating(reviewEntity.getRating());
			//
			reviewRepo.save(dbReview);
		}
		return "redirect:/listreview";
	}

}