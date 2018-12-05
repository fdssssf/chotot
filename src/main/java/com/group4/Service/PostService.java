package com.group4.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;

import com.group4.entity.*;

public interface PostService {
	List<Post> findAll();

	Optional<Post> findById(UUID id);

	Post save(Post p);

	void deleteById(UUID id);
	List<List<Post>> findByCategory(UUID id, Pageable pageable);
    List<Post> findAllByUser(User user);
    Page<Post>findAllByUser( User user,Specification<Post> spec,Pageable pageable);
    Page<Post>findAllByUser( User user,Pageable pageable);
    Page<Post> findAllByIsAcceptTrue(Pageable pageable);
    Page<Post> findAllByIsAcceptFalse(Pageable pageable);
    List<Post> findAllByCreatedAtBetween(Date start,Date end);
    Page<Post> findAllByUserAndIsAcceptTrue(User user,Pageable pageable);
    Page<Post> findAllByUserAndIsAcceptFalse(User user,Pageable pageable);
    Page<Post> findAll(Specification<Post> spec, Pageable pageable);
}
