package com.inti.sipel.wim

class Rutatramo {

	String descripcion
	Integer kmDesde
	Integer kmHasta
	Ruta ruta

	static hasMany = [dispositivos: Dispositivo,
	                  registros: Registro]
	static belongsTo = [Ruta]

	static mapping = {
		id generator: "assigned"
    kmDesde column: "KmDesde"
    kmHasta column: "KmHasta"
    ruta column: "idRuta"
		version false
	}

	static constraints = {
		descripcion nullable: true, maxSize: 20
		kmHasta nullable: true
	}
}
