package kr.or.product.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.cart.model.vo.Cart;
import kr.or.product.model.vo.Product;
import kr.or.product.model.vo.ProductFileVO;
import kr.or.product.model.vo.ProductReview;

@Repository
public class ProductDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Product> allProduct(HashMap<String, Object> map) {
		List list = sqlSession.selectList("product.allProduct",map);
		return (ArrayList<Product>)list;
	}
	
	public int selectProductCount() {
		return sqlSession.selectOne("product.selectCount");
	}

	public int insertProduct(Product p) {
		int result = sqlSession.insert("product.insertProduct",p);
		return result;
	}

	public int insertProductFile(ProductFileVO pf) {
		int result = sqlSession.insert("product.insertProductFile",pf);
		return result;
	}

	public ArrayList<ProductFileVO> allProductFile(int productNo) {
		List list = sqlSession.selectList("product.allProductFile",productNo);
		return (ArrayList<ProductFileVO>)list;
	}

	public Product productView(int productNo) {
		return sqlSession.selectOne("product.productView",productNo);
	}

	public int deleteProduct(int productNo) {
		return sqlSession.delete("product.deleteProduct",productNo);
	}

	public Product selectOneProduct(int productNo) {
		return sqlSession.selectOne("product.productView",productNo);
	}

	public int productUpdate(Product p) {
		return sqlSession.update("product.productUpdate",p);
	}

	public int deleteProductFile(int productNo) {
		
		return sqlSession.delete("product.deleteProductFile",productNo);
	}

	public int insertReview(ProductReview pr) {
		
		return sqlSession.insert("product.insertReview",pr);
	}

	public ArrayList<ProductReview> productReviewList(int productNo) {
		List list = sqlSession.selectList("product.productReviewList",productNo);
		return (ArrayList<ProductReview>)list;
	}

	public int deleteReview(int reviewNo) {
		return sqlSession.delete("product.deleteReview",reviewNo);
	}

	public int reviewTotalCount(int productNo) {
		return sqlSession.selectOne("product.reviewTotalCount",productNo);
	}


	public int reviewUpdate(ProductReview pr) {
		return sqlSession.update("product.reviewUpdate",pr);
	}

//	public int insertCart(Cart c) {
//		return sqlSession.insert("product.insertCart", c);
//	}

	public boolean searchSameBook(Cart c) {
		boolean sameCheck = false;
		List list = sqlSession.selectList("cart.sameCheck",c);
		if(list.size() != 0) {	// 뭔가 있음
			sameCheck=true;
		}else {
			sameCheck=false;
		}
		return sameCheck;
	}

	public int updateCartQuan(Cart c) {
		return sqlSession.update("cart.updateAmount", c);
	}

	public int productReviewCount(HashMap<String, Object> map) {
		
		return sqlSession.selectOne("product.productReviewCount",map);
	}

	public int searchLowNum(int productNo) {
		return sqlSession.selectOne("product.searchLowNum",productNo);
	}

	public int updateProductImg(ProductFileVO mainFile) {
		return sqlSession.update("product.updateProductImg",mainFile);
	}

	public Product directBuyProduct(int productNo) {
		Product list = sqlSession.selectOne("product.directBuyProduct",productNo);
		return list;
	}

	



	

}
