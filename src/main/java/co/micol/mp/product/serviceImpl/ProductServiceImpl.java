package co.micol.mp.product.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.mp.common.DataSource;
import co.micol.mp.product.service.ProductMapper;
import co.micol.mp.product.service.ProductService;
import co.micol.mp.product.service.ProductVO;

public class ProductServiceImpl implements ProductService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ProductMapper map = sqlSession.getMapper(ProductMapper.class);
	
	
	@Override
	public List<ProductVO> productList(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productList(vo);
	}

	@Override
	public ProductVO product(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.product(vo);
	}
	
	@Override
	public int productInsert(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productInsert(vo);
	}

	@Override
	public List<ProductVO> productSerch(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productSerch(vo);
	}

	@Override
	public List<ProductVO> productRecentList() {
		// TODO Auto-generated method stub
		return map.productRecentList();
	}

	@Override
	public int productDelete(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productDelete(vo);
	}

	@Override
	public List<ProductVO> productCateList(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productCateList(vo);
	}

	@Override
	public int listPage() {
		// TODO Auto-generated method stub
		return map.listPage();
	}

	public int productUpdate(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productUpdate(vo);
	}
	
	@Override
	public ProductVO productCategory(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productCategory(vo);
	}

	@Override
	public List<ProductVO> productAllSerch(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productAllSerch(vo);
	}


	

}
