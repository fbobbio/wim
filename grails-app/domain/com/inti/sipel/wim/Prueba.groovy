package com.inti.sipel.wim

class Prueba {

	Date instante
	Integer idDispositivo
	Integer carril
	Integer sentido
	Integer idRutaTramo
	Integer idBaseClasif
	Integer idBaseVehiculo
	Double tempRuta
	Double pesoTotal
	Integer velocidad
	Double aceleracion
	byte[] updateTimestamp
	byte[] insertTimestamp
	String updateId
	String insertId

	static mapping = {
		id generator: "assigned"
		version false
	}

	static constraints = {
		instante nullable: true
		idDispositivo nullable: true
		carril nullable: true
		sentido nullable: true
		idRutaTramo nullable: true
		idBaseClasif nullable: true
		idBaseVehiculo nullable: true
		tempRuta nullable: true
		pesoTotal nullable: true
		velocidad nullable: true
		aceleracion nullable: true
		updateTimestamp nullable: true
		insertTimestamp nullable: true
		updateId nullable: true, maxSize: 64, unique: true
		insertId nullable: true, maxSize: 64, unique: true
	}
}
