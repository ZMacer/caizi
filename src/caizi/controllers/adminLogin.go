package controllers

import (
	"github.com/astaxie/beego"
	"fmt"
)

type AdminLoginController struct {
	beego.Controller
}

func (this *AdminLoginController) Get() {

	this.Data["WebSite"] = "CaiZi"
	this.Data["LoginCSS"] = true
	this.Layout = "layout.tpl"
	this.TplNames = "admin/login.tpl"
}

func (this *AdminLoginController) Post() {

	this.Data["WebSite"] = "CaiZi"
	this.Data["LoginCSS"] = true
	this.Layout = "layout.tpl"
	this.TplNames = "admin/login.tpl"

	inputValues := this.Input()
	
	fmt.Println(inputValues)
}

func (c *AdminLoginController) Abort(code string) {
	panic(code)
}