package com.inti.sipel.wim

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Ta implements Serializable {

	Integer id
	Integer año
	Integer transitoanual
	String idtramo
	String idtipo

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append id
		builder.append año
		builder.append transitoanual
		builder.append idtramo
		builder.append idtipo
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append id, other.id
		builder.append año, other.año
		builder.append transitoanual, other.transitoanual
		builder.append idtramo, other.idtramo
		builder.append idtipo, other.idtipo
		builder.isEquals()
	}

	static mapping = {
		id composite: ["id", "año", "transitoanual", "idtramo", "idtipo"]
		version false
	}

	static constraints = {
		id nullable: true
		año nullable: true
		transitoanual nullable: true
		idtramo nullable: true, maxSize: 10
		idtipo nullable: true, maxSize: 10
	}
}
