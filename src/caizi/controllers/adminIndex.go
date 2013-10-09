package controllers

import (
	//"github.com/astaxie/beego"
	
	"caizi/models"
)

type AdminIndexController struct {
	MainController
}

func (this *AdminIndexController) Prepare() {

	this.LoginStatus("/admin/login/", false)

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
