package interfaces;

import objects.Order;

public interface OrderService {
    void paymentOrder(Order order);
    void deleteOrder(Order order);
    void editOrder(Order order);
    void saveOrder(Order order);
}
