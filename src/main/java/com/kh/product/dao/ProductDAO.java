package com.kh.product.dao;

import com.kh.product.Product;

import java.util.List;
import java.util.Optional;

public interface ProductDAO {

  //상품등록
  Long save(Product product);

  //상품목록
  List<Product> findAll();

  //상품조회
  Optional<Product> findByProductId(Long pid);

  //상품변경
  int update(Long pid,Product product);

  //상품삭제
  int deleteByProductId(Long pid);

}
