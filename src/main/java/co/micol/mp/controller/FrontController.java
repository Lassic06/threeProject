package co.micol.mp.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.auction.command.AuctionForm;
import co.micol.mp.auction.command.AuctionInsert;
import co.micol.mp.auction.command.AuctionInsertForm;
import co.micol.mp.auction.command.AuctionList;
import co.micol.mp.buyList.command.BuyList;
import co.micol.mp.buyList.command.BuyListInsert;
import co.micol.mp.buyList.command.ProductBuyList;
import co.micol.mp.buyList.command.auctionBuyList;
import co.micol.mp.cart.command.CartCompare;
import co.micol.mp.cart.command.CartDelete;
import co.micol.mp.cart.command.CartList;
import co.micol.mp.common.Command;
import co.micol.mp.main.command.MainCommand;
import co.micol.mp.member.command.AdminDelete;
import co.micol.mp.member.command.AjaxCheckId;
import co.micol.mp.member.command.LoginAlert;
import co.micol.mp.member.command.MemberDelete;
import co.micol.mp.member.command.MemberInsert;
import co.micol.mp.member.command.MemberList;
import co.micol.mp.member.command.MemberLogOut;
import co.micol.mp.member.command.MemberLogin;
import co.micol.mp.member.command.MemberLoginForm;
import co.micol.mp.member.command.MemberSelect;
import co.micol.mp.member.command.MemberUpdate;
import co.micol.mp.member.command.MemberUpdateForm;
import co.micol.mp.member.command.MyPage;
import co.micol.mp.member.command.RegisterForm;
import co.micol.mp.notice.command.NoticeDelete;
import co.micol.mp.notice.command.NoticeEdit;
import co.micol.mp.notice.command.NoticeInsert;
import co.micol.mp.notice.command.NoticeInsertForm;
import co.micol.mp.notice.command.NoticeList;
import co.micol.mp.notice.command.NoticeSelect;
import co.micol.mp.notice.command.NoticeUpdate;
import co.micol.mp.product.command.ProductCateList;
import co.micol.mp.product.command.ProductCategory;
import co.micol.mp.product.command.ProductDelete;
import co.micol.mp.product.command.ProductForm;
import co.micol.mp.product.command.ProductInsert;
import co.micol.mp.product.command.ProductInsertForm;
import co.micol.mp.product.command.ProductList;
import co.micol.mp.product.command.ProductRecentList;
import co.micol.mp.review.command.AjaxReviewList;
import co.micol.mp.review.command.ReviewInsert;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		map.put("/main.do", new MainCommand());
		map.put("/register.do", new RegisterForm());
		map.put("/ajaxCheckId.do", new AjaxCheckId());
		map.put("/memberInsert.do" , new MemberInsert());
		map.put("/memberLoginForm.do", new MemberLoginForm());
		map.put("/memberLogin.do", new MemberLogin());
		map.put("/memberLogOut.do", new MemberLogOut());
		map.put("/memberUpdateForm.do", new MemberUpdateForm()); //회원정보수정 폼 호출
		map.put("/memberUpdate.do", new MemberUpdate()); //회원정보수정 실행
		map.put("/memberDelete.do", new MemberDelete()); //회원탈퇴
		map.put("/memberList.do", new MemberList()); //회원리스트
		map.put("/memberSelect.do", new MemberSelect()); //관리자 회원 삭제
		map.put("/adminDelete.do", new AdminDelete()); //어드민 회원 삭제 
		//공지사항
		map.put("/noticeList.do", new NoticeList()); // 공지사항 게시판
		map.put("/noticeInsertForm.do", new NoticeInsertForm()); // 인서트 폼 호출
		map.put("/noticeInsert.do", new NoticeInsert()); // 공지사항 인서트 기능
		map.put("/noticeSelect.do", new NoticeSelect()); //공지사항 상세보기

		//23.06.16 -> 공지사항 등록 폼 다 빠져있음 채워야함
		map.put("/noticeDelete.do", new NoticeDelete()); // 공지사항 삭제
		map.put("/noticeEdit.do", new NoticeEdit());  // 공지사항 업데이트 호출 폼
		map.put("/noticeUpdate.do", new NoticeUpdate()); //공지사항 업데이트
		
		//제품등록 폼
		map.put("/productList.do", new ProductList());
		map.put("/productInsertForm.do", new ProductInsertForm());
		map.put("/productInsert.do", new ProductInsert());
		map.put("/productForm.do", new ProductForm());
		map.put("/productCategory.do", new ProductCategory());
		map.put("/productRecentList.do", new ProductRecentList());
		map.put("/productDelete.do", new ProductDelete());
		map.put("/productCateList.do", new ProductCateList());
		
		//리뷰
		map.put("/reviewInsert.do", new ReviewInsert());
		map.put("/ajaxReivewList.do", new AjaxReviewList());


		//마이페이지
		map.put("/myPage.do", new MyPage());

		//장바구니 폼
		map.put("/cartCompare.do", new CartCompare()); // 장바구니 담기
		map.put("/cartList.do", new CartList());
		//23.06.16 - 김재운
		map.put("/buyListInsert.do", new BuyListInsert()); // 구매내역 보내기
		map.put("/cartDelete.do", new CartDelete());
		
		//경매폼
		map.put("/auctionList.do", new AuctionList());
		map.put("/auctionForm.do", new AuctionForm());
		map.put("/auctionInsert.do", new AuctionInsert());
		map.put("/auctionInsertForm.do", new AuctionInsertForm());

		//구매내역 호출 폼
		map.put("/buyList.do", new BuyList()); //구매내역 조회
		map.put("/productBuyList.do", new ProductBuyList());
		map.put("/auctionBuyList.do", new auctionBuyList());

		//로그인 호출
		map.put("/loginAlert.do", new LoginAlert());

		
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());
		
		Command command = map.get(page);
		String viewPage = command.exec(request, response);
		
		if(!viewPage.endsWith(".do")) {
			if(viewPage.startsWith("Ajax:")) {
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			}
//			viewPage = "WEB-INF/views/" + viewPage + ".jsp";
			viewPage += ".tiles";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else {
			response.sendRedirect(viewPage);
		}
	}

}