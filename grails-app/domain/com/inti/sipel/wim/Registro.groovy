package com.inti.sipel.wim

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Registro implements Serializable {

	Integer idN
	Date instante
	Integer carril
	Integer sentido
	Double tempRuta
	Double pesoTotal
	Double velocidad
	Double aceleracion
  Boolean detencion
  Boolean fuga
  Baseclasif baseClasif
  Basevehiculo baseVehiculo
	Dispositivo dispositivo
	Rutatramo rutatramo

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append idN
		builder.append instante
		builder.append dispositivo
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append idN, other.idN
		builder.append instante, other.instante
		builder.append dispositivo, other.dispositivo
		builder.isEquals()
	}

	static hasMany = [regejes: Regeje]
	static belongsTo = [Basevehiculo,Baseclasif,Dispositivo, Rutatramo]

	static mapping = {
		id composite: ["idN", "instante", "dispositivo"]
    columns {
      instante(column: "Instante")
      idN(column: "id")
      dispositivo("idDispositivo")
    }
    idN column: "id"
    instante column: "Instante"
    dispositivo column: "idDispositivo"
    baseClasif column: "idBaseClasif"
    baseVehiculo column: "idBaseVehiculo"
    rutatramo column: "idRutaTramo"
    pesoTotal column: "PesoTotal"
    tempRuta column: "TempRuta"
    sentido column: "Sentido"
    carril column: "Carril"
		version false
	}

	static constraints = {
    idN(unique: ["instante","dispositivo"])
		carril nullable: true
		sentido nullable: true
		baseClasif nullable: true
		baseVehiculo nullable: true
		tempRuta nullable: true
		pesoTotal nullable: true
		velocidad nullable: true
		aceleracion nullable: true
	}
}
