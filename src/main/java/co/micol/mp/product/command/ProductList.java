package co.micol.mp.product.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;
import co.micol.mp.controller.Paging;
import co.micol.mp.product.service.ProductService;
import co.micol.mp.product.service.ProductVO;
import co.micol.mp.product.serviceImpl.ProductServiceImpl;

public class ProductList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		List<ProductVO> products = new ArrayList<>();
		
		//페이징처리
		Paging paging = new Paging();
		paging.setPageUnit(6);
		//현재 페이지번호
		String page = request.getParameter("page");
		int p = 1;
		if (page != null)
			p = Integer.parseInt(page);
		paging.setPage(p);
		// 전체 건수
		int total = ps.listPage();
		paging.setTotalRecord(total);
		
		ProductVO vo = new ProductVO();
		vo.setFirst(paging.getFirst());
		vo.setLast(paging.getLast());
		
		products = ps.productList(vo);
		
		request.setAttribute("products", products);
		request.setAttribute("paging", paging);
		
		return "product/productList";
	}

}
