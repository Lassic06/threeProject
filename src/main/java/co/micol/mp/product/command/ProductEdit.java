package co.micol.mp.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;
import co.micol.mp.product.service.ProductService;
import co.micol.mp.product.service.ProductVO;
import co.micol.mp.product.serviceImpl.ProductServiceImpl;

public class ProductEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		
		vo.setProductId(request.getParameter("productId"));
		vo=ps.product(vo);
		request.setAttribute("product", vo);
		
		return "product/productUpdateForm";
	}

}
