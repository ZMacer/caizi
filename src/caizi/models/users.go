package models

import (
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
	
	//"fmt"
	//"github.com/davecgh/go-spew/spew"
	//"io/ioutil"
)

func init() {
	
}

func GetUserByName(name string) (user User, err error) {
	o := orm.NewOrm()
	o.Using("default")
	
	user = User{Name:name}
	err = o.Read(&user, "Name")
	
	//export data to file
	//ioutil.WriteFile("raw.txt", []byte(spew.Sdump(r)), 0777)
	
	return
}

