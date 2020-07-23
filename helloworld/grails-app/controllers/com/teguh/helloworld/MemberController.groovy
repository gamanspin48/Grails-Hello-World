package com.teguh.helloworld

class MemberController {
    MemberService memberService
    def index(){
        def response = memberService.list(params)
        [member: response.list, total: response.count]
    }
    def details(Integer id){
        def response = memberService.getById(id)
        if (!response){
            redirect(controller: "member", action: "index")
        }else{
            [member: response]
        }
    }
    def create(){
        [member: flash.redirectParams]
    }
    def save(){
        def response = memberService.save(params)
        if(!response.isSuccess){
            flash.redirectParams = response.model
            redirect(controller: "member", action: "create")
        }else{
            redirect(controller: "member", action: "index")
        }
    }
    def edit(Integer id){
        if (flash.redirectParams){
            [member: flash.redirectParams]
        }else{
            def response = memberService.getById(id)
            if (!response){
                redirect(controller: "member", action: "index")
            }else{
                [member: response]
            }
        }
    }
}
