package dto;

public class Payment {
    
	private String userId;         // 유저 코드 (FK)
    private String paymentDate;    // 지불 날짜
    private String paymentMethod;  // 지불 방법
    private String paymentMonth;   // 할부 개월수
    private String gymProductId;   // 헬스장 상품 코드

    // Constructors
    public Payment() {

    }

    // Constructor 
    public Payment(String userId, String paymentDate, String paymentMethod, String paymentMonth, String gymProductId) {
        this.userId = userId;
        this.paymentDate = paymentDate;
        this.paymentMethod = paymentMethod;
        this.paymentMonth = paymentMonth;
        this.gymProductId = gymProductId;
    }

    // Getters and setters

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(String paymentDate) {
        this.paymentDate = paymentDate;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getPaymentMonth() {
        return paymentMonth;
    }

    public void setPaymentMonth(String paymentMonth) {
        this.paymentMonth = paymentMonth;
    }

    public String getGymProductId() {
        return gymProductId;
    }

    public void setGymProductId(String gymProductId) {
        this.gymProductId = gymProductId;
    }

}
