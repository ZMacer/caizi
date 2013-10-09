package controllers

import (
	"github.com/astaxie/beego"
	
	"caizi/models"
)

type AdminIndexController struct {
	beego.Controller
}

func (this *AdminIndexController) Prepare() {
	// check login status
	vId := this.GetSession("UserID")
	if vId == nil || vId == 0 {
		this.Redirect("/admin/login", 302)
		return
	}

	this.Data["WebSite"] = "CaiZi"
	this.Layout = "layout.tpl"
}

func (this *AdminIndexController) Get() {
	this.TplNames = "admin/index.tpl"
	
	var user models.User
	user.Id = this.GetSession("UserID").(int)
	user.Mail = this.GetSession("UserMail").(string)
	user.Name = this.GetSession("UserName").(string)
	
	this.Data["UserName"] = user.Name
	this.Data["UserMail"] = user.Mail
	
}
