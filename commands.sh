#!/bin/bash

APP_NAME=flask-app-api-2
RESOURCE_GROUP=azure-devops-udacity

RUNTIME=PYTHON:3.9

#Create app service plan in free tier
echo "webapp name: " $APP_NAME
az webapp up --name $APP_NAME --resource-group $RESOURCE_GROUP --sku FREE

echo "create web app successfully"

site=https://$APP_NAME.azurewebsites.net
echo $site
curl "$site"
