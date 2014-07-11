package com.inti.sipel.wim

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Registro implements Serializable {

	Integer idN
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

  /*def getId() {
    return id
  }
  
  static Registro get(Integer idNp, Date instantep, Dispositivo dispop) {
    return get(new Registro(idN: idNp, instante: instantep, dispositivo: dispop))
  }*

  def getId() {
    //println "$idN  $instante  $dispositivo"
    println this
    //return this.id //egistro.get(new Registro(idN: idN,instante: instante,dispositivo: dispositivo))
  }*/

	static hasMany = [regejes: Regeje]
	static belongsTo = [Dispositivo, Rutatramo]

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
    idN(unique: ["instante","dispositivo"])
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
