package com.inti.sipel.wim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SysdiagramsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Sysdiagrams.list(params), model:[sysdiagramsInstanceCount: Sysdiagrams.count()]
    }

    def show(Sysdiagrams sysdiagramsInstance) {
        respond sysdiagramsInstance
    }

    def create() {
        respond new Sysdiagrams(params)
    }

    @Transactional
    def save(Sysdiagrams sysdiagramsInstance) {
        if (sysdiagramsInstance == null) {
            notFound()
            return
        }

        if (sysdiagramsInstance.hasErrors()) {
            respond sysdiagramsInstance.errors, view:'create'
            return
        }

        sysdiagramsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sysdiagrams.label', default: 'Sysdiagrams'), sysdiagramsInstance.id])
                redirect sysdiagramsInstance
            }
            '*' { respond sysdiagramsInstance, [status: CREATED] }
        }
    }

    def edit(Sysdiagrams sysdiagramsInstance) {
        respond sysdiagramsInstance
    }

    @Transactional
    def update(Sysdiagrams sysdiagramsInstance) {
        if (sysdiagramsInstance == null) {
            notFound()
            return
        }

        if (sysdiagramsInstance.hasErrors()) {
            respond sysdiagramsInstance.errors, view:'edit'
            return
        }

        sysdiagramsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Sysdiagrams.label', default: 'Sysdiagrams'), sysdiagramsInstance.id])
                redirect sysdiagramsInstance
            }
            '*'{ respond sysdiagramsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Sysdiagrams sysdiagramsInstance) {

        if (sysdiagramsInstance == null) {
            notFound()
            return
        }

        sysdiagramsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Sysdiagrams.label', default: 'Sysdiagrams'), sysdiagramsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sysdiagrams.label', default: 'Sysdiagrams'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
