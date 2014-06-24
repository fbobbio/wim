package com.inti.sipel.wim

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Planperiodo implements Serializable {

	Date inicio
	Integer idPlanOp
	Date fin
	Integer estado
	Planoperacion planoperacion

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append inicio
		builder.append idPlanOp
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append inicio, other.inicio
		builder.append idPlanOp, other.idPlanOp
		builder.isEquals()
	}

	static belongsTo = [Planoperacion]

	static mapping = {
		id composite: ["inicio", "idPlanOp"]
		version false
	}

	static constraints = {
		estado nullable: true
	}
}
