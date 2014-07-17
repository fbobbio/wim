package com.inti.sipel.wim

class Alarma {

	String descripcion

	static hasMany = [alarmaregs: Alarmareg]

	static mapping = {
		id generator: "assigned"
		version false
	}

	static constraints = {
		descripcion nullable: true, maxSize: 30
	}
}
