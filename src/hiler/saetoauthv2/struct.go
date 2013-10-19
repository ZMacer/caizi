package saetoauthv2

import (

)

//结构体
type AuthV2 struct {
	ClientID		string
	ClientSecret	string
	AccessToken		string
	RefreshToken	string
	URL				string
	Host			string
	TimeOut			int
	ConnectTimeOut	int
	SslVerifyPeer	bool
	Format			string
	DecodeJson		bool
	HttpInfo		string
	UserAgent		string
	Debug			bool
	Boundary		string
}
