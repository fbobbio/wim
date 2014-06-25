package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BasevehiculoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Basevehiculo.list(params), model:[basevehiculoInstanceCount: Basevehiculo.count()]
    }

    def show(Basevehiculo basevehiculoInstance) {
        respond basevehiculoInstance
    }

    def create() {
        respond new Basevehiculo(params)
    }

    @Transactional
    def save(Basevehiculo basevehiculoInstance) {
        if (basevehiculoInstance == null) {
            notFound()
            return
        }

        if (basevehiculoInstance.hasErrors()) {
            respond basevehiculoInstance.errors, view:'create'
            return
        }

        basevehiculoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'basevehiculo.label', default: 'Basevehiculo'), basevehiculoInstance.id])
                redirect basevehiculoInstance
            }
            '*' { respond basevehiculoInstance, [status: CREATED] }
        }
    }

    def edit(Basevehiculo basevehiculoInstance) {
        respond basevehiculoInstance
    }

    @Transactional
    def update(Basevehiculo basevehiculoInstance) {
        if (basevehiculoInstance == null) {
            notFound()
            return
        }

        if (basevehiculoInstance.hasErrors()) {
            respond basevehiculoInstance.errors, view:'edit'
            return
        }

        basevehiculoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Basevehiculo.label', default: 'Basevehiculo'), basevehiculoInstance.id])
                redirect basevehiculoInstance
            }
            '*'{ respond basevehiculoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Basevehiculo basevehiculoInstance) {

        if (basevehiculoInstance == null) {
            notFound()
            return
        }

        basevehiculoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Basevehiculo.label', default: 'Basevehiculo'), basevehiculoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'basevehiculo.label', default: 'Basevehiculo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
