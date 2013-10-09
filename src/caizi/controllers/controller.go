package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func init() {
	beego.SessionProvider = beego.AppConfig.String("sessProvider")
	beego.SessionSavePath = beego.AppConfig.String("sessSavePath")
}

/**
* 检测当前访问用户的登录状态,并根据开关(rSwitch)和跳转(redirectURL),进行不同的流程。
* 跳转不为空的前提下：如果rSwitch为true，用户登录的状态下调装；如果rSwitch为false，用户未登录状态下跳转；
* @param redirectURL string	跳转URL
* @param rSwitch	 bool   true - 登录跳转；false - 未登录跳转 
* @result			 bool
**/
func (this *MainController) LoginStatus(redirectURL string, rSwitch bool) bool {

	// check login status
	vId := this.GetSession("UserID")
	if vId != nil {
		
		this.Data["WebSite"] = "CaiZi"
		this.Data["Logedin"] = true
		this.Data["UserName"] = this.GetSession("UserName")
		
		if rSwitch && redirectURL != "" {
			this.Redirect(redirectURL, 302)
		}
		
		return true
	}
	
	if !rSwitch && redirectURL != "" {
		this.Redirect(redirectURL, 302)
	}
	
	return false
}