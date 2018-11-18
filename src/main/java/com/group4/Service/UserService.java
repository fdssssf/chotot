package com.group4.Service;


import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.group4.entity.User;;

public interface UserService {
	Page<User> findAll(Pageable pageable);

	Optional<User> findById(UUID id);

    User save(User p);

    void deleteById(UUID id);
    User findByemail(String email);
    User findByToken(String token);

    List<User> findByName(String name);
}