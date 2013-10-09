package models

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)


type User struct {
	Id int `orm:"column(id);pk"`
	//Uid	int
	Name string `orm:"column(name);unique"`
	Pass string
	Mail string
	Theme string
	Signature string
	Signature_format string
	Created int
	Access int
	Login int
	Status int8
	Timezone string
	Language string
	Picture int
	Init string
}

// 自定义表名
func (u *User) TableName() string {
    return "users"
}

// 多字段索引
func (u *User) TableIndex() [][]string {
    return [][]string{
        []string{"Id"},
    }
}

// 多字段唯一键
func (u *User) TableUnique() [][]string {
    return [][]string{
        []string{"Name", "Mail"},
    }
}

func init() {

	dbdriver := beego.AppConfig.String("dbdriver")
	dbconn := beego.AppConfig.String("dbconn")
	
	// can extend other DB driver
	var ormDBDriver orm.DriverType
	if dbdriver == "mysql" {
		ormDBDriver = orm.DR_MySQL
	} else {
		ormDBDriver = orm.DR_MySQL
	}

	orm.RegisterDriver(dbdriver, ormDBDriver)
	orm.RegisterDataBase("default", dbdriver, dbconn)
	
	orm.RegisterModel(new(User))
	
}