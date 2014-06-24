package com.inti.sipel.wim

class Sensortipo {

	String descripcion

	static hasMany = [sensors: Sensor]

	static mapping = {
		id generator: "assigned"
		version false
	}

	static constraints = {
		descripcion nullable: true, maxSize: 20
	}
}
