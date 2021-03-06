#!/bin/sh

myAzureUser="http://yoichika-app"
myAzurePass="<service principal password>"
myAzureTenant="<service principal tenant name>"

myResourceGroup="RG-yoichika-demo"
myLocation="southeastasia"
mySKU="S1"                           #F1,FREE,D1,SHARED,B1,B2,B3,S1,S2,S3,P1,P2,P3
myAppServicePlan="appslinuxplan"
myAppName="yoichikadjangodemo01"
myAppName="djangoappdemo01"

az login --service-principal -u $myAzureUser -p $myAzurePass --tenant $myAzureTenant
az webapp create --name $myAppName --resource-group $myResourceGroup --plan $myAppServicePlan
