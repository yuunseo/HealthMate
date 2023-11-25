package dto;

public class Payment {
	private String paymentId; //결제ID
	private Integer paymenyPrice; //결제 금액
	private String paymentDate; //결제 일자
	private String payWith; //결제 방법
	
	public Payment() {
		super();
	}

	public String getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(String paymentId) {
		this.paymentId = paymentId;
	}

	public Integer getPaymenyPrice() {
		return paymenyPrice;
	}

	public void setPaymenyPrice(Integer paymenyPrice) {
		this.paymenyPrice = paymenyPrice;
	}

	public String getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}

	public String getPayWith() {
		return payWith;
	}

	public void setPayWith(String payWith) {
		this.payWith = payWith;
	}
	
	
}
