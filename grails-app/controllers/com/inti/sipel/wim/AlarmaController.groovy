package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AlarmaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Alarma.list(params), model:[alarmaInstanceCount: Alarma.count()]
    }

    def show(Alarma alarmaInstance) {
        respond alarmaInstance
    }

    def create() {
        respond new Alarma(params)
    }

    @Transactional
    def save(Alarma alarmaInstance) {
        if (alarmaInstance == null) {
            notFound()
            return
        }

        if (alarmaInstance.hasErrors()) {
            respond alarmaInstance.errors, view:'create'
            return
        }

        alarmaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'alarma.label', default: 'Alarma'), alarmaInstance.id])
                redirect alarmaInstance
            }
            '*' { respond alarmaInstance, [status: CREATED] }
        }
    }

    def edit(Alarma alarmaInstance) {
        respond alarmaInstance
    }

    @Transactional
    def update(Alarma alarmaInstance) {
        if (alarmaInstance == null) {
            notFound()
            return
        }

        if (alarmaInstance.hasErrors()) {
            respond alarmaInstance.errors, view:'edit'
            return
        }

        alarmaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Alarma.label', default: 'Alarma'), alarmaInstance.id])
                redirect alarmaInstance
            }
            '*'{ respond alarmaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Alarma alarmaInstance) {

        if (alarmaInstance == null) {
            notFound()
            return
        }

        alarmaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Alarma.label', default: 'Alarma'), alarmaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'alarma.label', default: 'Alarma'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
