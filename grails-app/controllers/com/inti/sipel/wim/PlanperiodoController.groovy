package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PlanperiodoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Planperiodo.list(params), model:[planperiodoInstanceCount: Planperiodo.count()]
    }

    def show(Planperiodo planperiodoInstance) {
        respond planperiodoInstance
    }

    def create() {
        respond new Planperiodo(params)
    }

    @Transactional
    def save(Planperiodo planperiodoInstance) {
        if (planperiodoInstance == null) {
            notFound()
            return
        }

        if (planperiodoInstance.hasErrors()) {
            respond planperiodoInstance.errors, view:'create'
            return
        }

        planperiodoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'planperiodo.label', default: 'Planperiodo'), planperiodoInstance.id])
                redirect planperiodoInstance
            }
            '*' { respond planperiodoInstance, [status: CREATED] }
        }
    }

    def edit(Planperiodo planperiodoInstance) {
        respond planperiodoInstance
    }

    @Transactional
    def update(Planperiodo planperiodoInstance) {
        if (planperiodoInstance == null) {
            notFound()
            return
        }

        if (planperiodoInstance.hasErrors()) {
            respond planperiodoInstance.errors, view:'edit'
            return
        }

        planperiodoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Planperiodo.label', default: 'Planperiodo'), planperiodoInstance.id])
                redirect planperiodoInstance
            }
            '*'{ respond planperiodoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Planperiodo planperiodoInstance) {

        if (planperiodoInstance == null) {
            notFound()
            return
        }

        planperiodoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Planperiodo.label', default: 'Planperiodo'), planperiodoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'planperiodo.label', default: 'Planperiodo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
