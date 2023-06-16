package co.micol.mp.auction.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.micol.mp.auction.service.AuctionService;
import co.micol.mp.auction.service.AuctionVO;
import co.micol.mp.auction.serviceImpl.AuctionServiceImpl;
import co.micol.mp.common.Command;

public class AuctionInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
				AuctionService as = new AuctionServiceImpl();
				AuctionVO vo = new AuctionVO();
				
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
					vo.setAuctionId(multi.getParameter("AuctionId"));
					vo.setAuctionName(multi.getParameter("AuctionName"));
					vo.setAuctionPrice(Integer.valueOf(multi.getParameter("AuctionPrice")));
					vo.setAuctionText(multi.getParameter("AuctionText"));
					
					if(ofile != null) {
						vo.setAuctionImg(ofile);
					}
					
					as.auctionInsert(vo);
					
					
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}	
				
				
				return "main/main";
			}

		
			

	}


