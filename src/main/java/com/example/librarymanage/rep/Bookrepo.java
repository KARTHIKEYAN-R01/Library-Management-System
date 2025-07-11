package com.example.librarymanage.rep;

import java.awt.print.Book;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.librarymanage.entity.BooksEntity;


	public interface Bookrepo extends JpaRepository<BooksEntity, Long> {
		
	}


