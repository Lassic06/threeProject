package co.micol.mp.product.service;

import java.util.List;

public interface ProductMapper {
	List<ProductVO> productList();
	
	ProductVO product(ProductVO vo);
	
	int productInsert(ProductVO vo);
}
