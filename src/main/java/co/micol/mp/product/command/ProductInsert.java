package co.micol.mp.product.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.micol.mp.common.Command;
import co.micol.mp.product.service.ProductService;
import co.micol.mp.product.service.ProductVO;
import co.micol.mp.product.serviceImpl.ProductServiceImpl;

public class ProductInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		
		//String dir =File.separator+ "img" +File.separator + "product" + File.separator;
		String dir =File.separator+ "images" + File.separator;
		String saveDir = request.getSession().getServletContext().getRealPath(dir);
		
		saveDir += File.separator;
		int maxSize = 100*1024*1024;
		System.out.println(dir);
		System.out.println(saveDir);
		
		try {
			MultipartRequest multi = new MultipartRequest(
												request, 
												saveDir, 
												maxSize, 
												"utf-8", 
												new DefaultFileRenamePolicy());
			String pfile = multi.getFilesystemName("pfile");
			System.out.println(pfile);
			String ofile = multi.getOriginalFileName("pfile");
			System.out.println(ofile);
			vo.setProductId(multi.getParameter("productId"));
			vo.setProductName(multi.getParameter("productName"));
			vo.setProductPrice(Integer.valueOf(multi.getParameter("productPrice")));
			vo.setProductText(multi.getParameter("productText"));
			
			if(ofile != null) {
				vo.setProductImg(ofile);
				vo.setProductDir(pfile);
			}
			
			ps.productInsert(vo);
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		
		return "main/main";
	}

}
