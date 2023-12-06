package dao;

import dto.Payment;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PaymentRepository {

    // Database connection details
    private static final String URL = "jdbc:your_database_url";
    private static final String USER = "your_database_username";
    private static final String PASSWORD = "your_database_password";

    // SQL Query for inserting payment
    private static final String INSERT_PAYMENT_SQL = "INSERT INTO payments (userID, gymProductId, paymentId, paymenyPrice, paymentDate, payWith) VALUES (?, ?, ?, ?, ?, ?);";

    public PaymentRepository() {
        // Optional: Load database driver class if required
        // Class.forName("com.your.jdbc.Driver");
    }

    // Method to save payment details
    public void savePayment(Payment payment) throws SQLException {
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PAYMENT_SQL)) {

            preparedStatement.setString(1, payment.getUserID());
            preparedStatement.setString(2, payment.getGymProductId());
            preparedStatement.setString(3, payment.getPaymentId());
            preparedStatement.setInt(4, payment.getPaymenyPrice()); // Note: Ensure this matches the data type in your database
            preparedStatement.setString(5, payment.getPaymentDate());
            preparedStatement.setString(6, payment.getPayWith());

            int affectedRows = preparedStatement.executeUpdate();

            // Optional: Check if the insert was successful
            if (affectedRows > 0) {
                System.out.println("Payment saved successfully!");
            } else {
                System.out.println("Saving payment failed.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw e; // Rethrow the exception to handle it in the calling method
        }
    }

}
