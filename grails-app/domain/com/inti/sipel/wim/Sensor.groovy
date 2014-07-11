package com.inti.sipel.wim

class Sensor {

	String descripcion
	Dispositivo dispositivo
	Sensortipo sensortipo

	static hasMany = [sensorcorrecs: Sensorcorrec]
	static belongsTo = [Dispositivo, Sensortipo]

	static mapping = {
		id generator: "assigned"
		version false
	}

	static constraints = {
		descripcion nullable: true, maxSize: 20
	}
}
