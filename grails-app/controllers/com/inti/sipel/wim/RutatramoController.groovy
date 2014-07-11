package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RutatramoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Rutatramo.list(params), model:[rutatramoInstanceCount: Rutatramo.count()]
    }

    def show(Rutatramo rutatramoInstance) {
        respond rutatramoInstance
    }

    def create() {
        respond new Rutatramo(params)
    }

    @Transactional
    def save(Rutatramo rutatramoInstance) {
        if (rutatramoInstance == null) {
            notFound()
            return
        }

        if (rutatramoInstance.hasErrors()) {
            respond rutatramoInstance.errors, view:'create'
            return
        }

        rutatramoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'rutatramo.label', default: 'Rutatramo'), rutatramoInstance.id])
                redirect rutatramoInstance
            }
            '*' { respond rutatramoInstance, [status: CREATED] }
        }
    }

    def edit(Rutatramo rutatramoInstance) {
        respond rutatramoInstance
    }

    @Transactional
    def update(Rutatramo rutatramoInstance) {
        if (rutatramoInstance == null) {
            notFound()
            return
        }

        if (rutatramoInstance.hasErrors()) {
            respond rutatramoInstance.errors, view:'edit'
            return
        }

        rutatramoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Rutatramo.label', default: 'Rutatramo'), rutatramoInstance.id])
                redirect rutatramoInstance
            }
            '*'{ respond rutatramoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Rutatramo rutatramoInstance) {

        if (rutatramoInstance == null) {
            notFound()
            return
        }

        rutatramoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Rutatramo.label', default: 'Rutatramo'), rutatramoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'rutatramo.label', default: 'Rutatramo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
