package com.inti.sipel.wim

class Dispositivo {

	String descripcion
	String ipservidor
	Planoperacion planoperacion
	Rutatramo rutatramo
	Baseclasif baseclasif

	static hasMany = [alarmaregs: Alarmareg,
	                  registros: Registro,
	                  sensors: Sensor]
	static belongsTo = [Baseclasif, Planoperacion, Rutatramo]

	static mapping = {
		id generator: "assigned"
		version false
	}

	static constraints = {
		descripcion nullable: true, maxSize: 30
		ipservidor nullable: true, maxSize: 20
	}
}
