package com.inti.sipel.wim

class Basevehiculo {

	String descripcion
	Integer tipoVehiculo
	Integer cantEjes

	static hasMany = [baseclasifs: Baseclasif,
	                  basedistejes: Basedisteje]

  static belongsTo = Baseclasif

	static mapping = {
		id generator: "assigned"
		version false
    cantEjes column: "CantEjes"
    tipoVehiculo column: "tipoVehiculo"
	}

	static constraints = {
		descripcion nullable: true, maxSize: 20
		tipoVehiculo nullable: true
		cantEjes nullable: true
	}
}
