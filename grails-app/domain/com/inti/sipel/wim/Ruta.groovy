package com.inti.sipel.wim

class Ruta {

	String descripcion

	static hasMany = [rutatramos: Rutatramo]

	static mapping = {
		id generator: "assigned"
		version false
	}

	static constraints = {
		descripcion nullable: true, maxSize: 50
	}
}
