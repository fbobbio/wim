package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BaseclasifController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Baseclasif.list(params), model:[baseclasifInstanceCount: Baseclasif.count()]
    }

    def show(Baseclasif baseclasifInstance) {
        respond baseclasifInstance
    }

    def create() {
        respond new Baseclasif(params)
    }

    @Transactional
    def save(Baseclasif baseclasifInstance) {
        if (baseclasifInstance == null) {
            notFound()
            return
        }

        if (baseclasifInstance.hasErrors()) {
            respond baseclasifInstance.errors, view:'create'
            return
        }

        baseclasifInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'baseclasif.label', default: 'Baseclasif'), baseclasifInstance.id])
                redirect baseclasifInstance
            }
            '*' { respond baseclasifInstance, [status: CREATED] }
        }
    }

    def edit(Baseclasif baseclasifInstance) {
        respond baseclasifInstance
    }

    @Transactional
    def update(Baseclasif baseclasifInstance) {
        if (baseclasifInstance == null) {
            notFound()
            return
        }

        if (baseclasifInstance.hasErrors()) {
            respond baseclasifInstance.errors, view:'edit'
            return
        }

        baseclasifInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Baseclasif.label', default: 'Baseclasif'), baseclasifInstance.id])
                redirect baseclasifInstance
            }
            '*'{ respond baseclasifInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Baseclasif baseclasifInstance) {

        if (baseclasifInstance == null) {
            notFound()
            return
        }

        baseclasifInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Baseclasif.label', default: 'Baseclasif'), baseclasifInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'baseclasif.label', default: 'Baseclasif'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
