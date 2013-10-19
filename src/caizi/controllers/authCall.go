package controllers

import (
	"fmt"
	"io/ioutil"
	
	"net/http"
	"io"
	"os"
	"time"
	"strconv"
	"net/url"
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
	
	data := url.Values{}
	data.Set("client_id", "933700690")
	data.Set("client_secret", "efc078042a83681339b3a074ebf96854")
	data.Set("grant_type", "authorization_code")
	data.Set("redirect_uri", "http://caizi.org/auth/callback/")
	data.Set("code", this.Input().Get("code"))
	
	resp, err := http.PostForm("https://api.weibo.com/oauth2/access_token", data)
	//resp, err := http.Get("https://api.weibo.com/oauth2/access_token?client_id=933700690&client_secret=efc078042a83681339b3a074ebf96854&grant_type=authorization_code&redirect_uri=http://caizi.org/auth/callback&code=" + this.Input().Get("code"))
	
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
