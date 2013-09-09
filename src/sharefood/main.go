package main

import (
	"sharefood/controllers"
	"github.com/astaxie/beego"
	//"github.com/emicklei/hopwatch"
	"net/http"
	"html/template"
	//"fmt"
	//"path/filepath"
	//"io/ioutil"
)


//404
func page_not_found(rw http.ResponseWriter, r *http.Request) {

	
	t, _ := template.New("err404.tpl").ParseFiles(beego.ViewsPath + "/err404.tpl", beego.ViewsPath + "/header.tpl", beego.ViewsPath + "/footer.tpl")
	
	data := make(map[string]interface{})
	data["Title"] = "页面未找到"
	data["Content"] = template.HTML("<br>The Page You have requested flown the coop." +
		"<br>Perhaps you are here because:" +
		"<br><br><ul>" +
		"<br>The page has moved" +
		"<br>The page no longer exists" +
		"<br>You were looking for your puppy and got lost" +
		"<br>You like 404 pages" +
		"</ul>")
	data["BeegoVersion"] = "xx"
	
	t.ExecuteTemplate(rw, "err404.tpl", data)
	
}

func main() {
	
	beego.Errorhandler("404",page_not_found)
	
	beego.Router("/", &controllers.MainController{})
	beego.Run()
}