package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RegejeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Regeje.list(params), model:[regejeInstanceCount: Regeje.count()]
    }

    def show(Regeje regejeInstance) {
        respond regejeInstance
    }

    def create() {
        respond new Regeje(params)
    }

    @Transactional
    def save(Regeje regejeInstance) {
        if (regejeInstance == null) {
            notFound()
            return
        }

        if (regejeInstance.hasErrors()) {
            respond regejeInstance.errors, view:'create'
            return
        }

        regejeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'regeje.label', default: 'Regeje'), regejeInstance.id])
                redirect regejeInstance
            }
            '*' { respond regejeInstance, [status: CREATED] }
        }
    }

    def edit(Regeje regejeInstance) {
        respond regejeInstance
    }

    @Transactional
    def update(Regeje regejeInstance) {
        if (regejeInstance == null) {
            notFound()
            return
        }

        if (regejeInstance.hasErrors()) {
            respond regejeInstance.errors, view:'edit'
            return
        }

        regejeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Regeje.label', default: 'Regeje'), regejeInstance.id])
                redirect regejeInstance
            }
            '*'{ respond regejeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Regeje regejeInstance) {

        if (regejeInstance == null) {
            notFound()
            return
        }

        regejeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Regeje.label', default: 'Regeje'), regejeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'regeje.label', default: 'Regeje'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
