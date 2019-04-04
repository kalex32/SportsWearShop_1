package interfaces;

import objects.User;

public interface SecurityShop {
    boolean login(User user);
    void logout(User user);
}
