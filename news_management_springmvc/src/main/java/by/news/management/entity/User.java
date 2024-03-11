package by.news.management.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

public class User {
	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private String surname;
	private String login;
	private String email;
	private String password;
	private String roles;
	private String status;
	
	@OneToMany(mappedBy="user",
			   cascade= {CascadeType.PERSIST, CascadeType.MERGE,
						 CascadeType.DETACH, CascadeType.REFRESH})
	private List<News> news;
	
	public User() {
		super();
	}
}
