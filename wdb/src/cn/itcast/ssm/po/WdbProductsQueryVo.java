package cn.itcast.ssm.po;

import java.util.List;

public class WdbProductsQueryVo {
private WdbProducts wdbProducts;
private WdbProductsCustom wdbProductsCustom;
//������Ʒ��Ϣ
	private List<WdbProductsCustom> productList;
	public WdbProducts getWdbProducts() {
		return wdbProducts;
	}
	public void setWdbProducts(WdbProducts wdbProducts) {
		this.wdbProducts = wdbProducts;
	}
	public WdbProductsCustom getWdbProductsCustom() {
		return wdbProductsCustom;
	}
	public void setWdbProductsCustom(WdbProductsCustom wdbProductsCustom) {
		this.wdbProductsCustom = wdbProductsCustom;
	}
	public List<WdbProductsCustom> getProductList() {
		return productList;
	}
	public void setProductList(List<WdbProductsCustom> productList) {
		this.productList = productList;
	}
	
	private String detail;

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	
	private String searchkey;
	public String getSearchkey() {
		return searchkey;
	}
	public void setSearchkey(String searchkey) {
		this.searchkey = searchkey;
	}
	@Override
	public String toString() {
		return "WdbProductsQueryVo [wdbProducts=" + wdbProducts
				+ ", wdbProductsCustom=" + wdbProductsCustom + ", productList="
				+ productList + ", detail=" + detail + ", searchkey="
				+ searchkey + "]";
	}
}
