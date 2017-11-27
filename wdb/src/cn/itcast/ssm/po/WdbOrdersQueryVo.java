package cn.itcast.ssm.po;

import java.util.List;

public class WdbOrdersQueryVo extends WdbOrders{
	
	private WdbProductsCustom wdbProductsCustom;
	 private WdbCustomersCustom wdbCustomersCustom;
	 private WdbStagesCustom wdbStagesCustom;
	 private List<WdbStagesCustom> wdbStagesCustomList;
	 private WdbRepayments wdbRepayments;
	
	public WdbRepayments getWdbRepayments() {
		return wdbRepayments;
	}
	public void setWdbRepayments(WdbRepayments wdbRepayments) {
		this.wdbRepayments = wdbRepayments;
	}
	public List<WdbStagesCustom> getWdbStagesCustomList() {
		return wdbStagesCustomList;
	}
	public void setWdbStagesCustomList(List<WdbStagesCustom> wdbStagesCustomList) {
		this.wdbStagesCustomList = wdbStagesCustomList;
	}
	public WdbProductsCustom getWdbProductsCustom() {
		return wdbProductsCustom;
	}
	public void setWdbProductsCustom(WdbProductsCustom wdbProductsCustom) {
		this.wdbProductsCustom = wdbProductsCustom;
	}
	public WdbCustomersCustom getWdbCustomersCustom() {
		return wdbCustomersCustom;
	}
	public void setWdbCustomersCustom(WdbCustomersCustom wdbCustomersCustom) {
		this.wdbCustomersCustom = wdbCustomersCustom;
	}
	public WdbStagesCustom getWdbStagesCustom() {
		return wdbStagesCustom;
	}
	public void setWdbStagesCustom(WdbStagesCustom wdbStagesCustom) {
		this.wdbStagesCustom = wdbStagesCustom;
	}
	
	 
	 
}
