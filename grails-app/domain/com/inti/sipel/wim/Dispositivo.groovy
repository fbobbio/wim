package com.inti.sipel.wim

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Dispositivo {

	String descripcion
	String ipservidor
	Planoperacion planoperacion
	Rutatramo rutatramo
	Baseclasif baseclasif

	static hasMany = [alarmaregs: Alarmareg,
	                  registros: Registro,
	                  sensors: Sensor]
	static belongsTo = [Baseclasif, Planoperacion, Rutatramo]

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append id
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append id, other.id
		builder.isEquals()
	}

	static mapping = {
		id generator: "assigned"
		version false
    baseclasif column: "idBaseClasifPorDef"
    planoperacion column: "idPlanOp"
    rutatramo column: "idTramo"
	}

	static constraints = {
		descripcion nullable: true, maxSize: 30
		ipservidor nullable: true, maxSize: 20
	}
}
