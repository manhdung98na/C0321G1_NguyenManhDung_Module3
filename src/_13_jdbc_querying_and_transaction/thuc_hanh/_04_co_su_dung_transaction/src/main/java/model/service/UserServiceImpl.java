package model.service;

import model.bean.User;
import model.repository.UserRepositoryImpl;

import java.sql.SQLException;
import java.util.List;

public class UserServiceImpl implements UserService {
    UserRepositoryImpl repository = new UserRepositoryImpl();

    @Override
    public void insertUser(User user) throws SQLException {
        repository.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return repository.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return repository.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return repository.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return repository.updateUser(user);
    }

    @Override
    public List<User> searchByCountry(String country) {
        return repository.searchByCountry(country);
    }

    @Override
    public User getUserById(int id) {
        return repository.getUserById(id);
    }

    @Override
    public void insertUserStore(User user) throws SQLException {
        repository.insertUserStore(user);
    }

    @Override
    public void addUserTransaction(User user, int[] permisions) {
        repository.addUserTransaction(user,permisions);
    }

    @Override
    public void insertUpdateWithoutTransaction() {
        repository.insertUpdateWithoutTransaction();
    }

    @Override
    public void insertUpdateUseTransaction() {
        repository.insertUpdateUseTransaction();
    }

}
