package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TmmensualController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Tmmensual.list(params), model:[tmmensualInstanceCount: Tmmensual.count()]
    }

    def show(Tmmensual tmmensualInstance) {
        respond tmmensualInstance
    }

    def create() {
        respond new Tmmensual(params)
    }

    @Transactional
    def save(Tmmensual tmmensualInstance) {
        if (tmmensualInstance == null) {
            notFound()
            return
        }

        if (tmmensualInstance.hasErrors()) {
            respond tmmensualInstance.errors, view:'create'
            return
        }

        tmmensualInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tmmensual.label', default: 'Tmmensual'), tmmensualInstance.id])
                redirect tmmensualInstance
            }
            '*' { respond tmmensualInstance, [status: CREATED] }
        }
    }

    def edit(Tmmensual tmmensualInstance) {
        respond tmmensualInstance
    }

    @Transactional
    def update(Tmmensual tmmensualInstance) {
        if (tmmensualInstance == null) {
            notFound()
            return
        }

        if (tmmensualInstance.hasErrors()) {
            respond tmmensualInstance.errors, view:'edit'
            return
        }

        tmmensualInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Tmmensual.label', default: 'Tmmensual'), tmmensualInstance.id])
                redirect tmmensualInstance
            }
            '*'{ respond tmmensualInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Tmmensual tmmensualInstance) {

        if (tmmensualInstance == null) {
            notFound()
            return
        }

        tmmensualInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Tmmensual.label', default: 'Tmmensual'), tmmensualInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tmmensual.label', default: 'Tmmensual'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
