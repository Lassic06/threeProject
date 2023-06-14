package co.micol.mp.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;
import co.micol.mp.product.service.ProductService;
import co.micol.mp.product.service.ProductVO;
import co.micol.mp.product.serviceImpl.ProductServiceImpl;

public class ProductForm implements Command{
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 상품상세보기 호출
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		
		vo.setProductId(request.getParameter("productId"));
		vo=ps.product(vo);
		request.setAttribute("product", vo);
		
		return "product/productForm";
	}
}
