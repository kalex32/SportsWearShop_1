package interfaces;

import objects.Product;

public interface EditProduct {

    void showProduct(Product product);
    void editProduct(Product product);
    void saveProduct(Product product);
    void addProduct(Product product);
    void deleteProduct(Product product);
}
