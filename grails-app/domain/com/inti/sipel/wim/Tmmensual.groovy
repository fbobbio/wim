package com.inti.sipel.wim

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Tmmensual implements Serializable {

	Integer idTramo
	Integer idBaseClasif
	Integer idBaseVehiculo
	Integer year
	Integer mes
	Float tmm

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append idTramo
		builder.append idBaseClasif
		builder.append idBaseVehiculo
		builder.append year
		builder.append mes
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append idTramo, other.idTramo
		builder.append idBaseClasif, other.idBaseClasif
		builder.append idBaseVehiculo, other.idBaseVehiculo
		builder.append year, other.year
		builder.append mes, other.mes
		builder.isEquals()
	}

	static mapping = {
		id composite: ["idTramo", "idBaseClasif", "idBaseVehiculo", "year", "mes"]
		version false
	}

	static constraints = {
		tmm nullable: true
	}
}
