[![Python application](https://github.com/thanhgiaazure/flask-app-pj-2/actions/workflows/python-app.yml/badge.svg)](https://github.com/thanhgiaazure/flask-app-pj-2/actions/workflows/python-app.yml)
# Overview

In this project, we will build CI/CD pipeline, the resource was saved on Github Repository and create a scaffolding to perform CI and CD.
- Using az cloud shell for interacting with Github, az app service,...
- Enable Github Action to build application code with and init, lint, test. All command was saved in Makefile and requirement.txt
- Integrate this project with Azure Pipelines to enable CD to Azure App Service.
- Using locust - An open source load testing tool. Define user behaviour with Python code, and swarm your system with millions of simultaneous users.

## Project Plan

- [Trello board](https://trello.com/invite/b/NvLqlNlX/ATTI6b2897b01e11f5736a6786007701825430D9310F/udacity-project-2-board)
- [Original project plan](https://github.com/thanhgiaazure/flask-app-pj-2/blob/b1e43114272497a656aa9eccc8486f8eff810402/Original%20Project%20Plan.xlsx)
- [Final project plan](https://github.com/thanhgiaazure/flask-app-pj-2/blob/b1e43114272497a656aa9eccc8486f8eff810402/Final%20Project%20Plan.xlsx)

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
  - Run App with command:
    1. `export FLASK_APP=app.py`
    2. `flask run`
   
   ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/2f7f735d-67ba-4e3a-9c99-e4171e9f92a3)
  
  - Open new az cloud shell session for testing flask app
    Run command: `sh make_prediction.sh`
    
    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/9767585e-3938-4f54-a8d1-4386cd5dc627)
    
* Project running on Azure App Service
  - Create commands.sh script as below:
    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/466dfa18-68ca-4f32-a944-c686bd3c4a20)

  - Run commands.sh in az cloud shell: `sh commands.sh `
    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/c954b0a7-19b8-45b4-a3bb-1d4cf48f9f28)
    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/2d66b197-38d6-49c6-af4b-3077fd7aec05)

    **Azure app service in portal**
    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/e174ff6b-d45f-4031-9091-7d72386e5635)

    **Deployment center using push deployment**
    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/8009b627-7a9b-4419-adda-c7ea5708a035)

  - Run: `sh make_predict_azure_app.sh `

    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/8c4f3ce8-30ad-481d-a000-00d74e79485d)

* Output of a test run:
  **Load test an app using Locust**
  - Create locustflie.py as below
    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/905baf35-d73a-4373-90f9-1000e2928c49)
  - Create python VM on local machine and install locust with command:
    1. Create Python's enviroment: `py -m venv env`
    2. Activate the enviroment on WINDOWS: `env\Scripts\activate`
    3. Install locust: `pip3 install locust`
   
    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/8c7bfbcf-7d9e-483a-9406-fbdf2e59f004)

    [Locust's Document](https://docs.locust.io/en/stable/what-is-locust.html)
  - Run `locust`
    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/225b36e8-b01a-47c1-beeb-ba8ca8592af1)

  - Open locust in `http://localhost:8089` and config as below
    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/4052ebfc-ebfd-446c-bb66-962c67be0bc4)
    
  - Click Start Swarming and verify result
    ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/2a64ffa9-d845-4a6c-98d4-4dfe37e05aff)

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).
  ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/c3966af5-cb54-4a60-860a-7ff5bd4ff633)

* Running Azure App Service from Azure Pipelines automatic deployment
  - Configure azure-pipelines.yml to auto deployment, following this file on github repos
   ![image](https://github.com/thanhgiaazure/flask-app-pj-2/assets/146719378/a397634a-a5c5-48d7-a242-230d4ecd0b7b)

* Output of streamed log files from deployed application

> 2023-10-09T16:16:23.2363435Z ##[section]Starting: DeploymentJob
2023-10-09T16:16:24.3389221Z ##[section]Starting: Initialize job
2023-10-09T16:16:24.3391697Z Agent name: 'Local'
2023-10-09T16:16:24.3391872Z Agent machine name: 'LAPTOP-1OASCM84'
2023-10-09T16:16:24.3391955Z Current agent version: '3.227.1'
2023-10-09T16:16:24.3406217Z Agent running as: 'USER'
2023-10-09T16:16:24.3430582Z Prepare build directory.
2023-10-09T16:16:24.3778460Z Set build variables.
2023-10-09T16:16:24.3803395Z Download all required tasks.
2023-10-09T16:16:24.3929081Z Checking job knob settings.
2023-10-09T16:16:24.3937372Z    Knob: AgentEnablePipelineArtifactLargeChunkSize = true Source: $(AGENT_ENABLE_PIPELINEARTIFACT_LARGE_CHUNK_SIZE) 
2023-10-09T16:16:24.3938607Z    Knob: ProcessHandlerTelemetry = true Source: $(AZP_75787_ENABLE_COLLECT) 
2023-10-09T16:16:24.3938984Z Finished checking job knob settings.
2023-10-09T16:16:24.4159441Z Start tracking orphan processes.
2023-10-09T16:16:24.4256951Z ##[section]Finishing: Initialize job
2023-10-09T16:16:24.4411870Z ##[section]Async Command Start: DetectDockerContainer
2023-10-09T16:16:24.4412091Z ##[section]Async Command End: DetectDockerContainer
2023-10-09T16:16:24.4412610Z ##[section]Async Command Start: DetectDockerContainer
2023-10-09T16:16:24.4412763Z ##[section]Async Command End: DetectDockerContainer
2023-10-09T16:16:24.4542516Z ##[section]Starting: Download Artifact
2023-10-09T16:16:24.4979329Z ==============================================================================
2023-10-09T16:16:24.4979722Z Task         : Download pipeline artifact
2023-10-09T16:16:24.4980133Z Description  : Download a named artifact from a pipeline to a local path
2023-10-09T16:16:24.4980261Z Version      : 1.198.0
2023-10-09T16:16:24.4980402Z Author       : Microsoft Corporation
2023-10-09T16:16:24.4980596Z Help         : Download a named artifact from a pipeline to a local path
2023-10-09T16:16:24.4980681Z ==============================================================================
2023-10-09T16:16:24.8367458Z Download from the specified build: #15
2023-10-09T16:16:24.8367847Z Download artifact to: C:\agent\_work\1/
2023-10-09T16:16:24.8767362Z Using default max parallelism.
2023-10-09T16:16:24.8784590Z Max dedup parallelism: 192
2023-10-09T16:16:27.3963831Z ApplicationInsightsTelemetrySender will correlate events with X-TFS-Session cea53251-16d2-450b-8036-8307b2ebb3bd
2023-10-09T16:16:27.3969177Z Hashtype: Dedup64K
2023-10-09T16:16:27.7644588Z Downloading 1 pipeline artifacts...
2023-10-09T16:16:27.7760710Z DedupManifestArtifactClient will correlate http requests with X-TFS-Session cea53251-16d2-450b-8036-8307b2ebb3bd
2023-10-09T16:16:27.7761361Z Start downloading artifact - drop
2023-10-09T16:16:27.7769822Z Minimatch patterns: [**]
2023-10-09T16:16:30.3684680Z Filtered 1 files from the Minimatch filters supplied.
2023-10-09T16:16:30.3893254Z Downloaded 0.0 MB out of 6.9 MB (0%).
2023-10-09T16:16:35.3986028Z Downloaded 4.3 MB out of 6.9 MB (62%).
2023-10-09T16:16:40.4020914Z Downloaded 4.3 MB out of 6.9 MB (63%).
2023-10-09T16:16:40.8863302Z Downloaded 6.9 MB out of 6.9 MB (100%).
2023-10-09T16:16:40.8866263Z 
2023-10-09T16:16:40.8867130Z Download statistics:
2023-10-09T16:16:40.8867513Z Total Content: 6.9 MB
2023-10-09T16:16:40.8867903Z Physical Content Downloaded: 6.7 MB
2023-10-09T16:16:40.8868227Z Compression Saved: 0.2 MB
2023-10-09T16:16:40.8868508Z Local Caching Saved: 0.0 MB
2023-10-09T16:16:40.8868792Z Chunks Downloaded: 86
2023-10-09T16:16:40.8869086Z Nodes Downloaded: 0
2023-10-09T16:16:40.8869204Z 
2023-10-09T16:16:40.8895065Z Download completed.
2023-10-09T16:16:41.3980140Z ApplicationInsightsTelemetrySender correlated 2 events with X-TFS-Session cea53251-16d2-450b-8036-8307b2ebb3bd
2023-10-09T16:16:41.3982393Z Downloading artifact finished.
2023-10-09T16:16:41.4200727Z ##[section]Finishing: Download Artifact
2023-10-09T16:16:41.4217560Z ##[section]Starting: Use Python version
2023-10-09T16:16:41.4321843Z ==============================================================================
2023-10-09T16:16:41.4322935Z Task         : Use Python version
2023-10-09T16:16:41.4322988Z Description  : Use the specified version of Python from the tool cache, optionally adding it to the PATH
2023-10-09T16:16:41.4323064Z Version      : 0.220.0
2023-10-09T16:16:41.4323111Z Author       : Microsoft Corporation
2023-10-09T16:16:41.4323157Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/tool/use-python-version
2023-10-09T16:16:41.4323222Z ==============================================================================
2023-10-09T16:16:41.6975293Z Found tool in cache: Python 3.9.13 x64
2023-10-09T16:16:41.7108396Z Prepending PATH environment variable with directory: C:\agent\_work\_tool\Python\3.9.13\x64
2023-10-09T16:16:41.7111506Z Prepending PATH environment variable with directory: C:\agent\_work\_tool\Python\3.9.13\x64\Scripts
2023-10-09T16:16:41.7112775Z Prepending PATH environment variable with directory: C:\Users\USER\AppData\Roaming\Python\Python39\Scripts
2023-10-09T16:16:41.7343767Z ##[section]Finishing: Use Python version
2023-10-09T16:16:41.7356388Z ##[section]Starting: Deploy Azure Web App : flask-app-thanh-gia
2023-10-09T16:16:41.7465721Z ==============================================================================
2023-10-09T16:16:41.7465803Z Task         : Azure Web App
2023-10-09T16:16:41.7465847Z Description  : Deploy an Azure Web App for Linux or Windows
2023-10-09T16:16:41.7465913Z Version      : 1.227.0
2023-10-09T16:16:41.7465953Z Author       : Microsoft Corporation
2023-10-09T16:16:41.7466014Z Help         : https://aka.ms/azurewebapptroubleshooting
2023-10-09T16:16:41.7466072Z ==============================================================================
2023-10-09T16:16:42.3541718Z Got service connection details for Azure App Service:'flask-app-thanh-gia'
2023-10-09T16:16:47.8524952Z Package deployment using ZIP Deploy initiated.
2023-10-09T16:18:51.6921418Z Deploy logs can be viewed at https://flask-app-thanh-gia.scm.azurewebsites.net/api/deployments/4f88cc08-6309-4312-9241-896dda422698/log
2023-10-09T16:18:51.6930463Z Successfully deployed web package to App Service.
2023-10-09T16:19:02.0450825Z Successfully updated deployment History at https://flask-app-thanh-gia.scm.azurewebsites.net/api/deployments/151696868339263
2023-10-09T16:19:03.9409483Z App Service Application URL: https://flask-app-thanh-gia.azurewebsites.net
2023-10-09T16:19:05.3523342Z ##[section]Finishing: Deploy Azure Web App : flask-app-thanh-gia
2023-10-09T16:19:05.3598447Z ##[section]Starting: Finalize Job
2023-10-09T16:19:05.3621121Z Cleaning up task key
2023-10-09T16:19:05.3622999Z Start cleaning up orphan processes.
2023-10-09T16:19:05.3980923Z ##[section]Finishing: Finalize Job
2023-10-09T16:19:05.4028844Z ##[section]Finishing: DeploymentJob


## Enhancements

- Separate mulltiple environment when deployeying app: Development, Testing, Production
- Integrate with App Insight Service to alert user about error, warning,...

## Demo 

[Google Drive](https://drive.google.com/file/d/1Bc6eO0FiVBl1xjJrz4c3g3qTxqiC0skZ/view?usp=sharing)


