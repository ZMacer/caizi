package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {

	this.Data["WebSite"] = "CaiZi"
	this.TplNames = "index.tpl"
}

func (c *MainController) Abort(code string) {
	panic(code)
}