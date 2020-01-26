package com.example.dao;

import com.example.entity.User;
import com.example.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class UserDaoImpl implements UserDao {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public UserDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<User> findAll() {
        String sql = "select * from users";
        return jdbcTemplate.query(sql, new UserMapper());
    }

    public User getById(int id) {
        String sql = "select * from users where id=?";
        return jdbcTemplate.queryForObject(sql, new UserMapper(), id);
    }

    public void save(User user) {
        String sql = "insert into users (name, email, age) values (?, ?, ?);";
        jdbcTemplate.update(sql, user.getName(), user.getEmail(), user.getAge());
    }

    public void update(User user) {
        String sql = "update users set name=?, email=?, age=? where id=?;";
        jdbcTemplate.update(sql, user.getName(), user.getEmail(), user.getAge(), user.getId());
    }

    public void delete(int id) {
        String sql = "delete from users where id=?";
        jdbcTemplate.update(sql, id);
    }
}
