package com.isolutions4u.indiciumtor.repository;

import com.isolutions4u.indiciumtor.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("userRepository")
public interface UserRepository extends JpaRepository<User,Long> {
    User findUserByEmail(String email);
}
