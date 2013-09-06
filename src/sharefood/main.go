package main

import (
	"sharefood/controllers"
	"github.com/astaxie/beego"
	"fmt"
)

func main() {
	fmt.Println(beego.AppPath)
	beego.Router("/", &controllers.MainController{})
	beego.Run()
}