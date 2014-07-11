package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Ta.list(params), model:[taInstanceCount: Ta.count()]
    }

    def show(Ta taInstance) {
        respond taInstance
    }

    def create() {
        respond new Ta(params)
    }

    @Transactional
    def save(Ta taInstance) {
        if (taInstance == null) {
            notFound()
            return
        }

        if (taInstance.hasErrors()) {
            respond taInstance.errors, view:'create'
            return
        }

        taInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ta.label', default: 'Ta'), taInstance.id])
                redirect taInstance
            }
            '*' { respond taInstance, [status: CREATED] }
        }
    }

    def edit(Ta taInstance) {
        respond taInstance
    }

    @Transactional
    def update(Ta taInstance) {
        if (taInstance == null) {
            notFound()
            return
        }

        if (taInstance.hasErrors()) {
            respond taInstance.errors, view:'edit'
            return
        }

        taInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Ta.label', default: 'Ta'), taInstance.id])
                redirect taInstance
            }
            '*'{ respond taInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Ta taInstance) {

        if (taInstance == null) {
            notFound()
            return
        }

        taInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Ta.label', default: 'Ta'), taInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'ta.label', default: 'Ta'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
