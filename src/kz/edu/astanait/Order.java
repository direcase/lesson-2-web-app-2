package kz.edu.astanait;

public class Order {
    String order_id;
    String customer_name;
    String customer_number;
    String drink;
    String sizeOrder;

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getCustomer_name() {
        return customer_name;
    }

    public void setCustomer_name(String customer_name) {
        this.customer_name = customer_name;
    }

    public String getCustomer_number() {
        return customer_number;
    }

    public void setCustomer_number(String customer_number) {
        this.customer_number = customer_number;
    }

    public String getDrink() {
        return drink;
    }

    public void setDrink(String drink) {
        this.drink = drink;
    }

    public String getSizeOrder() {
        return sizeOrder;
    }

    public void setSizeOrder(String sizeOrder) {
        this.sizeOrder = sizeOrder;
    }
}
