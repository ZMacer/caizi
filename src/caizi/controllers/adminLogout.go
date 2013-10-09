package controllers

import (
	
)

type AdminLogoutController struct {
	MainController
}

func (this *AdminLogoutController) Get() {
	this.DestroySession()
	this.Redirect("/", 302)
}