package com.petCuidado.PetCuidado.entitiesDTO;

import java.time.LocalDateTime;

import com.petCuidado.PetCuidado.entities.Agendamento;
import com.petCuidado.PetCuidado.entities.Pagamento;
import com.petCuidado.PetCuidado.enuns.Metodo;

import com.petCuidado.PetCuidado.enuns.Status;

public class PagamentoDTO {

	private long id;
	private LocalDateTime dataVencimento;
	private LocalDateTime dataPagamento;
	private float valor;
	private Metodo metodo;
	private Agendamento agendamento;
	private Status status;
	
	public PagamentoDTO() {
		
	}
	
	public PagamentoDTO(Pagamento pagamento) {
		this.id = pagamento.getId();
		this.dataVencimento = pagamento.getDataVencimento();
		this.dataPagamento = pagamento.getDataPagamento();
		this.valor = pagamento.getValor();
		this.metodo = pagamento.getMetodo();
		this.agendamento = pagamento.getAgendamento();
		this.status = pagamento.getStatus();
	}

	public long getId() {
		return id;
	}

	public LocalDateTime getDataVencimento() {
		return dataVencimento;
	}

	public LocalDateTime getDataPagamento() {
		return dataPagamento;
	}

	public float getValor() {
		return valor;
	}

	public Metodo getMetodo() {
		return metodo;
	}

	public Agendamento getAgendamento() {
		return agendamento;
	}

	public Status getStatus() {
		return status;
	}	
}
