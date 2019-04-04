package objects;

public class Order {
    private Long id;
    private Double sum;
    private Boolean payment;

    public Order() {
    }

    public Order(Long id, Double sum, Boolean payment) {
        this.id = id;
        this.sum = sum;
        this.payment = payment;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Double getSum() {
        return sum;
    }

    public void setSum(Double sum) {
        this.sum = sum;
    }

    public Boolean getPayment() {
        return payment;
    }

    public void setPayment(Boolean payment) {
        this.payment = payment;
    }
}
