package model;

/**
 * @auther: Liu Zedi.
 * @date: Create in 2018/11/25  18:42
 * @package: model
 * @project: javaweb
 */

//管理员信息
public class admin {
    private String id;
    private String adminName;
    private String password;

    public admin() {
        this.id=null;
        this.adminName=null;
        this.password=null;
    }

    public admin(String id, String username, String password) {
        this.id = id;
        this.adminName = username;
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public String getAdminName() {
        return adminName;
    }

    public String getPassword() {
        return password;
    }

    @Override
    public String toString() {
        return "admin{" +
                "id='" + id + '\'' +
                ", username='" + adminName + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
