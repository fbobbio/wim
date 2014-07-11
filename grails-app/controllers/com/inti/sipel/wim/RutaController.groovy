package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RutaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Ruta.list(params), model:[rutaInstanceCount: Ruta.count()]
    }

    def show(Ruta rutaInstance) {
        respond rutaInstance
    }

    def create() {
        respond new Ruta(params)
    }

    @Transactional
    def save(Ruta rutaInstance) {
        if (rutaInstance == null) {
            notFound()
            return
        }

        if (rutaInstance.hasErrors()) {
            respond rutaInstance.errors, view:'create'
            return
        }

        rutaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ruta.label', default: 'Ruta'), rutaInstance.id])
                redirect rutaInstance
            }
            '*' { respond rutaInstance, [status: CREATED] }
        }
    }

    def edit(Ruta rutaInstance) {
        respond rutaInstance
    }

    @Transactional
    def update(Ruta rutaInstance) {
        if (rutaInstance == null) {
            notFound()
            return
        }

        if (rutaInstance.hasErrors()) {
            respond rutaInstance.errors, view:'edit'
            return
        }

        rutaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Ruta.label', default: 'Ruta'), rutaInstance.id])
                redirect rutaInstance
            }
            '*'{ respond rutaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Ruta rutaInstance) {

        if (rutaInstance == null) {
            notFound()
            return
        }

        rutaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Ruta.label', default: 'Ruta'), rutaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'ruta.label', default: 'Ruta'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
