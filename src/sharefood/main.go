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
	data["Content"] = template.HTML("<br>你所访问的页面不存在。肯能由如下原因造成:" +
		"<br><ul>" +
		"<br>页面已经迁移" +
		"<br>页面不存在" +
		"<br>正在寻找你丢失的小狗" +
		"<br>你喜欢404页面" +
		"</ul>")
		
	rw.WriteHeader(http.StatusNotFound)
	t.ExecuteTemplate(rw, "err404.tpl", data)
	
}

func main() {
	
	beego.Errorhandler("404",page_not_found)
	
	beego.Router("/", &controllers.MainController{})
	beego.Run()
}