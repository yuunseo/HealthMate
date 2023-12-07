package dao;

import dto.Payment;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PaymentRepository {

    // 데이터베이스 연결 설정
    private String jdbcURL = "jdbc:mysql://localhost:3306/yourdatabase"; // 데이터베이스 URL
    private String jdbcUsername = "username"; // 데이터베이스 사용자 이름
    private String jdbcPassword = "password"; // 데이터베이스 비밀번호

    // 데이터베이스 연결을 위한 메소드
    private Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // SQL 연결 예외 처리
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // JDBC 드라이버 클래스를 찾을 수 없을 때의 예외 처리
            e.printStackTrace();
        }
        return connection;
    }

    // Payment 객체를 데이터베이스에 저장
    public void savePayment(Payment payment) {
        String sql = "INSERT INTO payments (userId, gymProductId, paymentDate, paymentMethod, paymentMonth) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setString(1, payment.getUserId());
            pstmt.setString(2, payment.getGymProductId());
            pstmt.setString(3, payment.getPaymentDate());
            pstmt.setString(4, payment.getPaymentMethod());
            pstmt.setString(5, payment.getPaymentMonth());

            pstmt.executeUpdate();
        } catch (SQLException e) {
            // SQL 실행 예외 처리
            e.printStackTrace();
        }
    }
}

