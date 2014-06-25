package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PlanoperacionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Planoperacion.list(params), model:[planoperacionInstanceCount: Planoperacion.count()]
    }

    def show(Planoperacion planoperacionInstance) {
        respond planoperacionInstance
    }

    def create() {
        respond new Planoperacion(params)
    }

    @Transactional
    def save(Planoperacion planoperacionInstance) {
        if (planoperacionInstance == null) {
            notFound()
            return
        }

        if (planoperacionInstance.hasErrors()) {
            respond planoperacionInstance.errors, view:'create'
            return
        }

        planoperacionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'planoperacion.label', default: 'Planoperacion'), planoperacionInstance.id])
                redirect planoperacionInstance
            }
            '*' { respond planoperacionInstance, [status: CREATED] }
        }
    }

    def edit(Planoperacion planoperacionInstance) {
        respond planoperacionInstance
    }

    @Transactional
    def update(Planoperacion planoperacionInstance) {
        if (planoperacionInstance == null) {
            notFound()
            return
        }

        if (planoperacionInstance.hasErrors()) {
            respond planoperacionInstance.errors, view:'edit'
            return
        }

        planoperacionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Planoperacion.label', default: 'Planoperacion'), planoperacionInstance.id])
                redirect planoperacionInstance
            }
            '*'{ respond planoperacionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Planoperacion planoperacionInstance) {

        if (planoperacionInstance == null) {
            notFound()
            return
        }

        planoperacionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Planoperacion.label', default: 'Planoperacion'), planoperacionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'planoperacion.label', default: 'Planoperacion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
