package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SensorcorrecController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Sensorcorrec.list(params), model:[sensorcorrecInstanceCount: Sensorcorrec.count()]
    }

    def show(Sensorcorrec sensorcorrecInstance) {
        respond sensorcorrecInstance
    }

    def create() {
        respond new Sensorcorrec(params)
    }

    @Transactional
    def save(Sensorcorrec sensorcorrecInstance) {
        if (sensorcorrecInstance == null) {
            notFound()
            return
        }

        if (sensorcorrecInstance.hasErrors()) {
            respond sensorcorrecInstance.errors, view:'create'
            return
        }

        sensorcorrecInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sensorcorrec.label', default: 'Sensorcorrec'), sensorcorrecInstance.id])
                redirect sensorcorrecInstance
            }
            '*' { respond sensorcorrecInstance, [status: CREATED] }
        }
    }

    def edit(Sensorcorrec sensorcorrecInstance) {
        respond sensorcorrecInstance
    }

    @Transactional
    def update(Sensorcorrec sensorcorrecInstance) {
        if (sensorcorrecInstance == null) {
            notFound()
            return
        }

        if (sensorcorrecInstance.hasErrors()) {
            respond sensorcorrecInstance.errors, view:'edit'
            return
        }

        sensorcorrecInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Sensorcorrec.label', default: 'Sensorcorrec'), sensorcorrecInstance.id])
                redirect sensorcorrecInstance
            }
            '*'{ respond sensorcorrecInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Sensorcorrec sensorcorrecInstance) {

        if (sensorcorrecInstance == null) {
            notFound()
            return
        }

        sensorcorrecInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Sensorcorrec.label', default: 'Sensorcorrec'), sensorcorrecInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sensorcorrec.label', default: 'Sensorcorrec'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
