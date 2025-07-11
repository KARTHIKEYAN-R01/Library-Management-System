package com.example.librarymanage.rep;

import com.example.librarymanage.entity.entity;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface EntityRepository extends JpaRepository<entity, Long> {

	boolean existsByEmail(String email);
	
	Optional<entity> findByEmailAndPassword(String email, String password);
}
