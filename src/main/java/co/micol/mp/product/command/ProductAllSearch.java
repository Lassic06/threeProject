package co.micol.mp.product.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;
import co.micol.mp.notice.service.NoticeService;
import co.micol.mp.notice.service.NoticeVO;
import co.micol.mp.notice.serviceImpl.NoticeServiceImpl;
import co.micol.mp.product.service.ProductService;
import co.micol.mp.product.service.ProductVO;
import co.micol.mp.product.serviceImpl.ProductServiceImpl;

public class ProductAllSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		String search = request.getParameter("productSearch");
		vo.setProductSearch(search);
		List<ProductVO> products = ps.productAllSerch(vo);
		System.out.println(request.getParameter("productSearch"));

		

		request.setAttribute("products", products);
		
		return "product/productList";
		
		
	}

}
