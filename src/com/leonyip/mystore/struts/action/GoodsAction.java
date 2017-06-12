package com.leonyip.mystore.struts.action;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.leonyip.mystore.biz.GoodsBiz;
import com.leonyip.mystore.biz.GoodsTypeBiz;
import com.leonyip.mystore.biz.impl.GoodsBizImpl;
import com.leonyip.mystore.biz.impl.GoodsTypeBizImpl;
import com.leonyip.mystore.entity.CartItem;
import com.leonyip.mystore.entity.Goods;
import com.leonyip.mystore.entity.GoodsType;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class GoodsAction extends ActionSupport implements ModelDriven<Goods> {

	private Goods goods = new Goods();
	private String keyword;
	private int pageSize;
	private int pageNum;
	private List<File> file;
	private List<String> fileFileName;
	private List<String> fileContentType;
	private List<GoodsType> goodsTypeList;

	public List<GoodsType> getGoodsTypeList() {
		return goodsTypeList;
	}

	public void setGoodsTypeList(List<GoodsType> goodsTypeList) {
		this.goodsTypeList = goodsTypeList;
	}

	public List<File> getFile() {
		return file;
	}

	public void setFile(List<File> file) {
		this.file = file;
	}

	public List<String> getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(List<String> fileFileName) {
		this.fileFileName = fileFileName;
	}

	public List<String> getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(List<String> fileContentType) {
		this.fileContentType = fileContentType;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	GoodsBiz goodsBiz = new GoodsBizImpl();
	GoodsTypeBiz goodsTypeBiz = new GoodsTypeBizImpl();

	/**
	 * @return
	 */
	public String toDetail() {
		goods = goodsBiz.getGoodsById(goods.getId());
		ActionContext.getContext().getValueStack().push(goods);// 压栈
		return "detail";
	}

	public String toAdminDetail() {
		goods = goodsBiz.getGoodsById(goods.getId());
		ActionContext.getContext().getValueStack().push(goods);// 压栈
		return "goodsdetail";
	}

	
	public String doSearch() {
		// List<Goods> goodsList = goodsBiz.searchByKeyword(keyword);
		HttpServletRequest request = ServletActionContext.getRequest();
		if ("GET".equalsIgnoreCase(request.getMethod())) {// 取得提交方式
			try {
				this.keyword = new String(keyword.getBytes("ISO-8859-1"),
						"UTF-8");// URL转码
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		List<Goods> goodsList = goodsBiz.searchByKeywordPaging(keyword,
				pageNum, pageSize);
		ActionContext.getContext().put("goodsList", goodsList);
		return "search";
	}

	public String doSearchByType() {
		List<Goods> goodsList = goodsBiz.searchByType(goods.getGoodsType()
				.getId());
		ActionContext.getContext().put("goodsList", goodsList);
		return "searchResult";
	}

	public String doSearchByTop5Product(){
		List<Goods> goodsList = goodsBiz.searchTop5Product(8);
		ActionContext.getContext().put("goodsList", goodsList);		
		return "";
	}
	
	public String doSearchTop10ProductByCommend(){
		List<Goods> goodsList = goodsBiz.searchTop10ProductByCommend(8);
		ActionContext.getContext().put("goodsList", goodsList);		
		return "";
	}
	
	public String doSearchAllGoods() {
		List<Goods> goodsList = goodsBiz.searchAllGoods(pageNum, pageSize);
		ActionContext.getContext().put("goodsListAll", goodsList);
		return "searchAllGoods";
	}
	
	public String doSearchGoodsPaging() {
		System.out.println(goods.getGoodsType().getId()+"====");
		List<Goods> goodsList = goodsBiz.searchGoodsPaging(goods.getGoodsType().getId(), pageNum, 12);
		ActionContext.getContext().put("goodsList", goodsList);
		return "searchResultGoods";
	}

	public String doDeleteGoods() {
		List<Goods> goodsList = goodsBiz.searchAllGoods(pageNum, pageSize);
		ActionContext.getContext().put("goodsListAll", goodsList);
		return "deleteGoods";
	}

	public String deleteGoods() {
		System.out.println(goods.getId());		
		goodsBiz.deleteGoods(goods.getId().intValue());
		List<Goods> goodsList = goodsBiz.searchAllGoods(pageNum, pageSize);
		ActionContext.getContext().put("goodsListAll", goodsList);
		return "adminDeleteGoods";
	}

	public String doAddGood() {
		goodsTypeList = (ArrayList<GoodsType>) goodsTypeBiz.getAllType();
		this.setGoodsTypeList(goodsTypeList);
		ActionContext.getContext().put("goodsTypeList", goodsTypeList);
		return "addGood";
	}

	public String upload() throws IOException {

		// 得到工程保存图片的路径
		String root = ServletActionContext.getRequest().getRealPath("/upload");

		// 循环上传的文件
		for (int i = 0; i < file.size(); i++) {
			InputStream is = new FileInputStream(file.get(i));

			// 得到图片保存的位置(根据root来得到图片保存的路径在tomcat下的该工程里)
			File destFile = new File(root, this.getFileFileName().get(i));
			this.goods.setImg(destFile.getName());

			// 把图片写入到上面设置的路径里
			OutputStream os = new FileOutputStream(destFile);
			byte[] buffer = new byte[400];
			int length = 0;
			while ((length = is.read(buffer)) > 0) {
				os.write(buffer, 0, length);
			}
			is.close();
			os.close();
		}

		HttpServletRequest request = ServletActionContext.getRequest();
		if ("POST".equalsIgnoreCase(request.getMethod())) {// 取得提交方式
			try {

				this.goods.setGoodsName(new String(this.goods.getGoodsName()
						.getBytes("UTF-8"), "UTF-8"));// URL转码
				GoodsTypeBiz biz = new GoodsTypeBizImpl();

				this.goods.setGoodsType(goods.getGoodsType());
				this.goods.setCreateTime(new Timestamp(System
						.currentTimeMillis()));
				goodsBiz.addGoods(goods);

			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "upload";
	}

	@Override
	public Goods getModel() {
		// TODO Auto-generated method stub
		return goods;
	}
}