package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SensortipoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Sensortipo.list(params), model:[sensortipoInstanceCount: Sensortipo.count()]
    }

    def show(Sensortipo sensortipoInstance) {
        respond sensortipoInstance
    }

    def create() {
        respond new Sensortipo(params)
    }

    @Transactional
    def save(Sensortipo sensortipoInstance) {
        if (sensortipoInstance == null) {
            notFound()
            return
        }

        if (sensortipoInstance.hasErrors()) {
            respond sensortipoInstance.errors, view:'create'
            return
        }

        sensortipoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sensortipo.label', default: 'Sensortipo'), sensortipoInstance.id])
                redirect sensortipoInstance
            }
            '*' { respond sensortipoInstance, [status: CREATED] }
        }
    }

    def edit(Sensortipo sensortipoInstance) {
        respond sensortipoInstance
    }

    @Transactional
    def update(Sensortipo sensortipoInstance) {
        if (sensortipoInstance == null) {
            notFound()
            return
        }

        if (sensortipoInstance.hasErrors()) {
            respond sensortipoInstance.errors, view:'edit'
            return
        }

        sensortipoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Sensortipo.label', default: 'Sensortipo'), sensortipoInstance.id])
                redirect sensortipoInstance
            }
            '*'{ respond sensortipoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Sensortipo sensortipoInstance) {

        if (sensortipoInstance == null) {
            notFound()
            return
        }

        sensortipoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Sensortipo.label', default: 'Sensortipo'), sensortipoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sensortipo.label', default: 'Sensortipo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
