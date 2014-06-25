package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AlarmaregController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Alarmareg.list(params), model:[alarmaregInstanceCount: Alarmareg.count()]
    }

    def show(Alarmareg alarmaregInstance) {
        respond alarmaregInstance
    }

    def create() {
        respond new Alarmareg(params)
    }

    @Transactional
    def save(Alarmareg alarmaregInstance) {
        if (alarmaregInstance == null) {
            notFound()
            return
        }

        if (alarmaregInstance.hasErrors()) {
            respond alarmaregInstance.errors, view:'create'
            return
        }

        alarmaregInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'alarmareg.label', default: 'Alarmareg'), alarmaregInstance.id])
                redirect alarmaregInstance
            }
            '*' { respond alarmaregInstance, [status: CREATED] }
        }
    }

    def edit(Alarmareg alarmaregInstance) {
        respond alarmaregInstance
    }

    @Transactional
    def update(Alarmareg alarmaregInstance) {
        if (alarmaregInstance == null) {
            notFound()
            return
        }

        if (alarmaregInstance.hasErrors()) {
            respond alarmaregInstance.errors, view:'edit'
            return
        }

        alarmaregInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Alarmareg.label', default: 'Alarmareg'), alarmaregInstance.id])
                redirect alarmaregInstance
            }
            '*'{ respond alarmaregInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Alarmareg alarmaregInstance) {

        if (alarmaregInstance == null) {
            notFound()
            return
        }

        alarmaregInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Alarmareg.label', default: 'Alarmareg'), alarmaregInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'alarmareg.label', default: 'Alarmareg'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
