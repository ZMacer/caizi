package controllers

import (
	//"github.com/astaxie/beego"
)

type DefaultController struct {
	MainController
}

func (this *DefaultController) Prepare() {
	this.LoginStatus("", true)
}

func (this *DefaultController) Get() {

	this.Data["Navhome"] = "active"
	this.Layout = "layout.tpl"
	this.TplNames = "index.tpl"
}

func (c *DefaultController) Abort(code string) {
	panic(code)
}