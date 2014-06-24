package com.inti.sipel.wim

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Regeje implements Serializable {

	Integer idRegistro
	Integer ordenEje
	Date instante
	Integer idDispositivo
	Double pesoRuedaDer
	Double pesoRuedaIzq
	Double distancia
	Registro registro

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append idRegistro
		builder.append ordenEje
		builder.append instante
		builder.append idDispositivo
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append idRegistro, other.idRegistro
		builder.append ordenEje, other.ordenEje
		builder.append instante, other.instante
		builder.append idDispositivo, other.idDispositivo
		builder.isEquals()
	}

	static belongsTo = [Registro]

	static mapping = {
		id composite: ["idRegistro", "ordenEje", "instante", "idDispositivo"]
		version false
	}

	static constraints = {
		pesoRuedaDer nullable: true
		pesoRuedaIzq nullable: true
		distancia nullable: true
	}
}
