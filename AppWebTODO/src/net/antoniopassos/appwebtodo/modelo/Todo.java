package net.antoniopassos.appwebtodo.modelo;

import javax.persistence.*;

@Entity
public class Todo {
	@Id
	@GeneratedValue
	private Long id;
	
	private String tarefa;
	private String prioridade;
	private String prazo;
	
	public Todo() {
		this.tarefa = null;
		this.prioridade = null;
		this.prazo = null;
	}
	
	public Todo(String tarefa, String prioridade, String prazo) {
		
		this.tarefa = tarefa;
		this.prioridade = prioridade;
		this.prazo = prazo;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTarefa() {
		return tarefa;
	}

	public void setTarefa(String tarefa) {
		this.tarefa = tarefa;
	}

	public String getPrioridade() {
		return prioridade;
	}

	public void setPrioridade(String prioridade) {
		this.prioridade = prioridade;
	}

	public String getPrazo() {
		return prazo;
	}

	public void setPrazo(String prazo) {
		this.prazo = prazo;
	}
	
	
	
}
