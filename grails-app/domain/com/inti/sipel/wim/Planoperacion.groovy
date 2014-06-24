package com.inti.sipel.wim

class Planoperacion {

	String descripcion
	Integer cantPeriodo
	Baseclasif baseclasif

	static hasMany = [dispositivos: Dispositivo,
	                  planperiodos: Planperiodo]
	static belongsTo = [Baseclasif]

	static mapping = {
		id generator: "assigned"
		version false
	}

	static constraints = {
		descripcion nullable: true, maxSize: 20
		cantPeriodo nullable: true
	}
}
