package com.inti.sipel.wim

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Sensorcorrec implements Serializable {

	Integer idSensor
	Double tempMin
	Double tempMax
	Double factor
	Sensor sensor

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append idSensor
		builder.append tempMin
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append idSensor, other.idSensor
		builder.append tempMin, other.tempMin
		builder.isEquals()
	}

	static belongsTo = [Sensor]

	static mapping = {
		id composite: ["idSensor", "tempMin"]
		version false
	}

	static constraints = {
		tempMax nullable: true
		factor nullable: true
	}
}
