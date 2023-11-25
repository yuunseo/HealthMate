package dto;

public class GymProduct {
	private String gymProductId; //헬스장 상품ID
	private Integer period; //상품별 기간
	private Integer unitPrice; //상품 가격
	
	public GymProduct() {
		super();
	}

	public String getGymProductId() {
		return gymProductId;
	}

	public void setGymProductId(String gymProductId) {
		this.gymProductId = gymProductId;
	}

	public Integer getPeriod() {
		return period;
	}

	public void setPeriod(Integer period) {
		this.period = period;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}
	
	
}
