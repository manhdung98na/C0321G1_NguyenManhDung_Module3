package model.service;

import model.bean.User;

import java.sql.SQLException;
import java.util.List;

public interface UserService {
    public void insertUser(User user) throws SQLException;

    public User selectUser(int id);

    public List<User> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

    public List<User> searchByCountry(String country);

    User getUserById(int id);

    void insertUserStore(User user) throws SQLException;

    void addUserTransaction(User user, int[] permisions);

    public void insertUpdateWithoutTransaction();

    public void insertUpdateUseTransaction();

    public List<User> selectAllUsersByProcedure() throws SQLException;

    public boolean updateUserByProcedure(User user) throws SQLException;

    public boolean deleteUserByProcedure(int id) throws SQLException;
}
