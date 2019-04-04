package objects;

import java.util.Set;

public class User {
    private Long id;
    private String login;
    private String password;
    private Set<Role> roles;
}
