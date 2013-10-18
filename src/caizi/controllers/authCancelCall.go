package controllers

import (
	"fmt"
	"io/ioutil"
)

type AuthCancelCallController struct {
	MainController
}

func (this *AuthCancelCallController) Get() {
	fmt.Println("Auth Cancel Callback:", this.Input())
	
	this.Layout = "layout.tpl"
	this.TplNames = "index.tpl"
	
	ioutil.WriteFile("authCancelCallGet.txt", []byte(this.Input().Encode()), 777)
}

func (this *AuthCancelCallController) Post() {
	fmt.Println("Auth Cancel Callback:", this.Input())
	
	this.Layout = "layout.tpl"
	this.TplNames = "index.tpl"
	
	ioutil.WriteFile("authCancelCallPost.txt", []byte(this.Input().Encode()), 777)
}
