package com.inti.sipel.wim

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Basedisteje implements Serializable {

	Integer orden
	Integer idBaseVehiculo
	Double distanciaMin
	Double distanciaMax
	Basevehiculo basevehiculo

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append orden
		builder.append idBaseVehiculo
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append orden, other.orden
		builder.append idBaseVehiculo, other.idBaseVehiculo
		builder.isEquals()
	}

	static belongsTo = [Basevehiculo]

	static mapping = {
		id composite: ["orden", "idBaseVehiculo"]
		version false
	}

	static constraints = {
		distanciaMin nullable: true
		distanciaMax nullable: true
	}
}
