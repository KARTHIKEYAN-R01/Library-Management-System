package com.example.librarymanage.entity;

import jakarta.persistence.*;


@Entity
@Table(name = "books")

public class BooksEntity {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public int getYearPublished() {
		return yearPublished;
	}

	public void setYearPublished(int yearPublished) {
		this.yearPublished = yearPublished;
	}

	@Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String author;

    @Column(name = "genre", nullable = false)
    private String genre;
    
    @Column(name = "yearPublished",nullable = false)
    private int yearPublished;
   
	
	    
}
