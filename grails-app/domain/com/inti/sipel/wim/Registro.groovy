package com.inti.sipel.wim

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Registro implements Serializable {

	Integer id
	Date instante
	Integer carril
	Integer sentido
	Integer idBaseClasif
	Integer idBaseVehiculo
	Double tempRuta
	Double pesoTotal
	Double velocidad
	Double aceleracion
	Dispositivo dispositivo
	Rutatramo rutatramo

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append id
		builder.append instante
		builder.append idDispositivo
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append id, other.id
		builder.append instante, other.instante
		builder.append idDispositivo, other.idDispositivo
		builder.isEquals()
	}

	static hasMany = [regejes: Regeje]
	static belongsTo = [Dispositivo, Rutatramo]

	static mapping = {
		id composite: ["id", "instante", "dispositivo"]
    dispositivo column: "idDispositivo"
    idBaseClasif column: "idBaseClasif"
    idBaseVehiculo column: "idBaseVehiculo"
    rutatramo column: "idRutaTramo"
    pesoTotal column: "PesoTotal"
    tempRuta column: "TempRuta"
    sentido column: "Sentido"
    carril column: "Carril"
		version false
	}

	static constraints = {
		carril nullable: true
		sentido nullable: true
		idBaseClasif nullable: true
		idBaseVehiculo nullable: true
		tempRuta nullable: true
		pesoTotal nullable: true
		velocidad nullable: true
		aceleracion nullable: true
	}
}
