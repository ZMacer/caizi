package controllers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	//"fmt"
	
	"caizi/models"
)

type AdminLoginController struct {
	beego.Controller
}

func (this *AdminLoginController) Prepare() {

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
		
	} else {
		this.Data["message"] = "密码不正确"
	}
	
}

func (c *AdminLoginController) Abort(code string) {
	panic(code)
}