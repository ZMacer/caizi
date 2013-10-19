package controllers

import (
	"fmt"
	"io/ioutil"
	
	"net/http"
	"io"
	"os"
	"time"
	"strconv"
)

type AuthCallController struct {
	MainController
}

func (this *AuthCallController) Get() {
	fmt.Println("Auth Callback:", this.Input())
	
	this.Layout = "layout.tpl"
	this.TplNames = "index.tpl"
	
	strTime := strconv.Itoa(time.Now().Nanosecond())
	ioutil.WriteFile("authCallGet"+strTime+".txt", []byte(this.Input().Encode()), 777) 
	
	resp, err := http.Get("https://api.weibo.com/oauth2/access_token?client_id=933700690&client_secret=efc078042a83681339b3a074ebf96854&grant_type=authorization_code&redirect_uri=http://caizi.org/auth/callback&code=" + this.Input().Get("code"))
	
	if err == nil {
		file, _ := os.Create("token"+strTime+".txt")
		defer file.Close()
		
		io.Copy(file, resp.Body)
	}
}

func (this *AuthCallController) Post() {
	fmt.Println("Auth Callback:", this.Input())
	
	this.Layout = "layout.tpl"
	this.TplNames = "index.tpl"
	
	ioutil.WriteFile("authCallPost.txt", []byte(this.Input().Encode()), 777)
}
