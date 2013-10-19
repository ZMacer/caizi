package saetoauthv2

import (
	"fmt"
)

func NewAuthV2(ClientID, ClientSecret, AccessToken, RefreshToken string) (auth *AuthV2) {

	fmt.Println("NewAuthV2")

	auth = &AuthV2{
		ClientID:ClientID, 
		ClientSecret:ClientSecret, 
		AccessToken:AccessToken, 
		RefreshToken:RefreshToken,
		Host:"https://api.weibo.com/2/",
		TimeOut:30,
		ConnectTimeOut:30,
		SslVerifyPeer:false,
		Format:"json",
		DecodeJson:true,
		UserAgent:"Sae T OAuth2 v0.1",
	}
		
	return
}

func (this *AuthV2) AccessTokenURL() string {
	return "https://api.weibo.com/oauth2/access_token"
}

func (this *AuthV2) AuthorizeURL() string {
	return "https://api.weibo.com/oauth2/authorize"
}

func (this *AuthV2) GetAuthorizeURL( url, responseType, state, display string) string {
	
	if responseType == "" {
		responseType = "code"
	}
	
	return this.AuthorizeURL() + "?" + "client_id=" + this.ClientID + "&redirect_uri=" + url + "&response_type=" + responseType + "&state=" + state + "&display=" + display
} 