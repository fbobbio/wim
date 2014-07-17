package com.inti.sipel.wim

class Sysdiagrams {

	String name
	Integer principalId
	byte[] definition

	static mapping = {
		id column: "diagram_id"
	}

	static constraints = {
		name maxSize: 160, unique: ["principalId"]
		definition nullable: true
	}
}
