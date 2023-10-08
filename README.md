# Overview

In this project, we will build CI/CD pipeline, the resource was saved on Github Repository and create a scaffolding to perform CI and CD.
- Using az cloud shell for interacting with Github, az app service,...
- Enable Github Action to build application code with and init, lint, test. All command was saved in Makefile and requirement.txt
- Integrate this project with Azure Pipelines to enable CD to Azure App Service.
- Using locust - An open source load testing tool. Define user behaviour with Python code, and swarm your system with millions of simultaneous users.

## Project Plan

- [Trello board](https://trello.com/invite/b/NvLqlNlX/ATTI6b2897b01e11f5736a6786007701825430D9310F/udacity-project-2-board)
* A link to a spreadsheet that includes the original and final project plan>

## Instructions

<TODO:  
* Architectural Diagram 
![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/2ccc7913-e0ad-4c67-92d3-e7d450939d46)
This Architecture includes 4 main parts:
  - Source control: This place contains source code - GitHub
  - Continuous Integration(CI): Config Github Action and Testing/Linting
  - Continuous Delivery(CD): Setup Azure Pipeline for deployemnt to Azure App Service
  - Platform as service: Using Azure App service to host Flask app API

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

* Project cloned into Azure Cloud Shell
  Brief: For cloning project from GitHub to Cloud Shell, we must connect them by ssh-key. Follow steps as below:
  - Login to AZ Cloud Shell
  - Create a ssh-key with command: `ssh-keygen -t rsa -b 2048 -C "email was registered with github"`
    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/55d87c9b-b797-4755-8540-77cb50822f13)
    
  - Read ssh-key with command: `cat id_rsa.pub` - id_rsa is default name of key file
    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/f5c0d11d-f395-484d-8f97-55992d9d45f3)
    
  - Copy this key and pass to GitHub: Github Account -> Settings -> SSH and GPG keys
    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/0770e2c0-00c3-4031-af81-a11ca680af9e)

  - Then, in az cloud shell, run `git clone` to clone project
    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/deb2ee3d-f533-4021-b4ca-dca8147d1b68)

* Passing tests that are displayed after running the `make all` command from the `Makefile`
  - Create python VM with command:
     1. `python3 -m venv ~/flask-app-pj-2`
     2. `source ~/flask-app-pj-2/bin/activate`
  - Install all dependencies with command: `make all`
   ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/b42eca37-c3a4-4dc0-9971-114d81d001fa)

* Project running on Azure App Service

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>


