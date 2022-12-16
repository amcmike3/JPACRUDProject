package com.skilldistillery.dadjokes.entities;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Joke {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="set_up")
	private String setUp;
	
	@Column(name="punch_line")
	private String punchLine;
	
	@Column(name="embarass_level")
	private Integer embarassLevel;
	
	@Column(name="laugh_level")
	private Integer laughLevel;
	
	@Column(name="groan_level")
	private Integer groanLevel;
	
	@Column(name="img_url")
	private String imgUrl;

	public Joke() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSetUp() {
		return setUp;
	}

	public void setSetUp(String setUp) {
		this.setUp = setUp;
	}

	public String getPunchLine() {
		return punchLine;
	}

	public void setPunchLine(String punchLine) {
		this.punchLine = punchLine;
	}

	public Integer getEmbarassLevel() {
		return embarassLevel;
	}

	public void setEmbarassLevel(Integer embarassLevel) {
		this.embarassLevel = embarassLevel;
	}

	public Integer getLaughLevel() {
		return laughLevel;
	}

	public void setLaughLevel(Integer laughLevel) {
		this.laughLevel = laughLevel;
	}

	public Integer getGroanLevel() {
		return groanLevel;
	}

	public void setGroanLevel(Integer groanLevel) {
		this.groanLevel = groanLevel;
	}


	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Joke [id=").append(id).append(", setUp=").append(setUp).append(", punchLine=").append(punchLine)
				.append(", embarassLevel=").append(embarassLevel).append(", laughLevel=").append(laughLevel)
				.append(", groanLevel=").append(groanLevel).append("]");
		return builder.toString();
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Joke other = (Joke) obj;
		return id == other.id;
	}
	
	
}
