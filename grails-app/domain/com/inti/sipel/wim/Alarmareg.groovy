package com.inti.sipel.wim

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Alarmareg implements Serializable {

	Date instante
	Integer idAlarma
	Integer idDispositivo
	Double valor
	String descripcion
	Dispositivo dispositivo
	Alarma alarma

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append instante
		builder.append idAlarma
		builder.append idDispositivo
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append instante, other.instante
		builder.append idAlarma, other.idAlarma
		builder.append idDispositivo, other.idDispositivo
		builder.isEquals()
	}

	static belongsTo = [Alarma, Dispositivo]

	static mapping = {
		id composite: ["instante", "idAlarma", "idDispositivo"]
		version false
	}

	static constraints = {
		valor nullable: true
		descripcion nullable: true, maxSize: 50
	}
}
