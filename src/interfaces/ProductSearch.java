package interfaces;

import objects.Product;

import java.util.List;

public interface ProductSearch {
    List<Product> getProduct ();
    List<Product> getProduct (String name);
//    List<Product> getProduct (String brand);
//    List<Product> getProduct (String size);

}
