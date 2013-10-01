package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {

	this.Data["WebSite"] = "CaiZi"
	this.Data["Navhome"] = "active"
	this.Layout = "layout.tpl"
	this.TplNames = "index.tpl"
}

func (c *MainController) Abort(code string) {
	panic(code)
}