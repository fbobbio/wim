package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DispositivoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Dispositivo.list(params), model:[dispositivoInstanceCount: Dispositivo.count()]
    }

    def show(Dispositivo dispositivoInstance) {
        respond dispositivoInstance
    }

    def create() {
        respond new Dispositivo(params)
    }

    @Transactional
    def save(Dispositivo dispositivoInstance) {
        if (dispositivoInstance == null) {
            notFound()
            return
        }

        if (dispositivoInstance.hasErrors()) {
            respond dispositivoInstance.errors, view:'create'
            return
        }

        dispositivoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'dispositivo.label', default: 'Dispositivo'), dispositivoInstance.id])
                redirect dispositivoInstance
            }
            '*' { respond dispositivoInstance, [status: CREATED] }
        }
    }

    def edit(Dispositivo dispositivoInstance) {
        respond dispositivoInstance
    }

    @Transactional
    def update(Dispositivo dispositivoInstance) {
        if (dispositivoInstance == null) {
            notFound()
            return
        }

        if (dispositivoInstance.hasErrors()) {
            respond dispositivoInstance.errors, view:'edit'
            return
        }

        dispositivoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Dispositivo.label', default: 'Dispositivo'), dispositivoInstance.id])
                redirect dispositivoInstance
            }
            '*'{ respond dispositivoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Dispositivo dispositivoInstance) {

        if (dispositivoInstance == null) {
            notFound()
            return
        }

        dispositivoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Dispositivo.label', default: 'Dispositivo'), dispositivoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'dispositivo.label', default: 'Dispositivo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
