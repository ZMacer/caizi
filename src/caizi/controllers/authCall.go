package controllers

import (
	"fmt"
	"io/ioutil"
)

type AuthCallController struct {
	MainController
}

func (this *AuthCallController) Get() {
	fmt.Println("Auth Callback:", this.Input())
	
	this.Layout = "layout.tpl"
	this.TplNames = "index.tpl"
	
	ioutil.WriteFile("authCallGet.txt", []byte(this.Input().Encode()), 777) 
}

func (this *AuthCallController) Post() {
	fmt.Println("Auth Callback:", this.Input())
	
	this.Layout = "layout.tpl"
	this.TplNames = "index.tpl"
	
	ioutil.WriteFile("authCallPost.txt", []byte(this.Input().Encode()), 777)
}
