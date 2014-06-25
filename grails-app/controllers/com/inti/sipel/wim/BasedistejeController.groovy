package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BasedistejeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Basedisteje.list(params), model:[basedistejeInstanceCount: Basedisteje.count()]
    }

    def show(Basedisteje basedistejeInstance) {
        respond basedistejeInstance
    }

    def create() {
        respond new Basedisteje(params)
    }

    @Transactional
    def save(Basedisteje basedistejeInstance) {
        if (basedistejeInstance == null) {
            notFound()
            return
        }

        if (basedistejeInstance.hasErrors()) {
            respond basedistejeInstance.errors, view:'create'
            return
        }

        basedistejeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'basedisteje.label', default: 'Basedisteje'), basedistejeInstance.id])
                redirect basedistejeInstance
            }
            '*' { respond basedistejeInstance, [status: CREATED] }
        }
    }

    def edit(Basedisteje basedistejeInstance) {
        respond basedistejeInstance
    }

    @Transactional
    def update(Basedisteje basedistejeInstance) {
        if (basedistejeInstance == null) {
            notFound()
            return
        }

        if (basedistejeInstance.hasErrors()) {
            respond basedistejeInstance.errors, view:'edit'
            return
        }

        basedistejeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Basedisteje.label', default: 'Basedisteje'), basedistejeInstance.id])
                redirect basedistejeInstance
            }
            '*'{ respond basedistejeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Basedisteje basedistejeInstance) {

        if (basedistejeInstance == null) {
            notFound()
            return
        }

        basedistejeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Basedisteje.label', default: 'Basedisteje'), basedistejeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'basedisteje.label', default: 'Basedisteje'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
