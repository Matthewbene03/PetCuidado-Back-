package com.petCuidado.PetCuidado.entities;

import java.time.LocalDateTime;
import java.util.Objects;

import com.petCuidado.PetCuidado.enuns.Metodo;
import com.petCuidado.PetCuidado.enuns.Status;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_pagamento")
public class Pagamento {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(nullable = false)
	private LocalDateTime dataVencimento;
	
	@Column(nullable = true)
	private LocalDateTime dataPagamento;
	
	@Column(nullable = true)
	private float valor;
	
	@Column(nullable = true)
	private Metodo metodo;
	
	@Column(nullable = true)
	private Status status;	
	
	@ManyToOne
	@JoinColumn(name = "id_agendamento", nullable = false)
	private Agendamento agendamento;
	
	public Pagamento() {
		
	}
	
	public Pagamento(long id, LocalDateTime dataVencimento, LocalDateTime dataPagamento, float valor, Metodo metodo, Agendamento agendamento, Status status) {
		this.id = id;
		this.dataVencimento = dataVencimento;
		this.dataPagamento = dataPagamento;
		this.valor = valor;
		this.metodo = metodo;
		this.agendamento = agendamento;
		this.status = status;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public LocalDateTime getDataVencimento() {
		return dataVencimento;
	}

	public void setDataVencimento(LocalDateTime dataVencimento) {
		this.dataVencimento = dataVencimento;
	}

	public LocalDateTime getDataPagamento() {
		return dataPagamento;
	}

	public void setDataPagamento(LocalDateTime dataPagamento) {
		this.dataPagamento = dataPagamento;
	}

	public float getValor() {
		return valor;
	}

	public void setValor(float valor) {
		this.valor = valor;
	}

	public Metodo getMetodo() {
		return metodo;
	}

	public void setMetodo(Metodo metodo) {
		this.metodo = metodo;
	}

	public Agendamento getAgendamento() {
		return agendamento;
	}

	public void setAgendamento(Agendamento agendamento) {
		this.agendamento = agendamento;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	@Override
	public int hashCode() {
		return Objects.hash(agendamento, dataPagamento, dataVencimento, id, metodo, status, valor);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Pagamento other = (Pagamento) obj;
		return Objects.equals(agendamento, other.agendamento) && Objects.equals(dataPagamento, other.dataPagamento)
				&& Objects.equals(dataVencimento, other.dataVencimento) && id == other.id && metodo == other.metodo
				&& Objects.equals(status, other.status)
				&& Float.floatToIntBits(valor) == Float.floatToIntBits(other.valor);
	}
}
