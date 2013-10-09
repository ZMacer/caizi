package controllers

import (
	//"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	
	"caizi/models"
)

type AdminLoginController struct {
	MainController
}

func (this *AdminLoginController) Prepare() {

	this.LoginStatus("/admin/index", true)

	this.Data["WebSite"] = "CaiZi"
	this.Data["LoginCSS"] = true
	this.Data["Navlogin"] = "active"
	
	this.Layout = "layout.tpl"
}

func (this *AdminLoginController) Get() {
	this.TplNames = "admin/login.tpl"
	
}

func (this *AdminLoginController) Post() {
	this.TplNames = "admin/login.tpl"

	inputValues := this.Input()
	pass := inputValues.Get("password")
	username := inputValues.Get("username")
	
	if username == "" {
		this.Data["message"] = "用户名不能为空"
		return
	} else if pass == "" {
		this.Data["message"] = "密码不能为空"
		return
	}
	
	
	user, err := models.GetUserByName(username)
	if err == orm.ErrNoRows {
		this.Data["message"] = "用户不存在"
		return	
	} else if err == orm.ErrMissPK {
		this.Data["message"] = "用户不存在"
		return
	}
	
	if pass == user.Pass {
		this.Redirect("/admin/index", 302)
		this.SetSession("UserName", user.Name)
		this.SetSession("UserID", user.Id)
		this.SetSession("UserMail", user.Mail)

	} else {
		this.Data["message"] = "密码不正确"
	}
	
}

func (c *AdminLoginController) Abort(code string) {
	panic(code)
}