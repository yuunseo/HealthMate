package dto;
import dto.Gym;

public class GymProduct {
	
	private String gymId; //헬스장 ID(fk)
	private String gymProductId; //헬스장 상품ID
	private Integer period; //상품별 기간
	private Integer unitPrice; //상품 가격
	
	public GymProduct() {
		super();
	}
	
	
	
	public GymProduct(String gymId, String gymProductId) {
		super();
		this.gymId = gymId;
		this.gymProductId = gymProductId;
	}

	public String getGymId() {
		return gymId;
	}

	public void setGymId(String gymId) {
		this.gymId = gymId;
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
