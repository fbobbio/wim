package com.inti.sipel.wim

class Baseclasif {

	String descripcion

	static hasMany = [basevehiculos: Basevehiculo,
	                  dispositivos: Dispositivo,
	                  planoperacions: Planoperacion]

	static mapping = {
		id generator: "assigned"
		version false
	}

	static constraints = {
		descripcion nullable: true, maxSize: 20
	}
}
