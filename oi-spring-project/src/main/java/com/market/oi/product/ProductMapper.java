package com.market.oi.product;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface ProductMapper {

	public List<ProductVO> getProductList(Map<String, Object> map)throws Exception;
	public List<ProductVO> getProductSeparatedList(ProductVO productVO)throws Exception;
	public ProductVO getProductSelect(ProductVO productVO)throws Exception;
	public int getProductNum()throws Exception;
	public int setProductInsert(ProductVO productVO)throws Exception;
	public int setFileInsert(ProductFilesVO productFilesVO)throws Exception;
	
	public int setDeleteProduct(ProductVO productVO)throws Exception;
	public int setDeleteFile(ProductFilesVO productFilesVO)throws Exception;
	public List<ProductFilesVO> getFileSelect(ProductFilesVO productFilesVO)throws Exception;
}
