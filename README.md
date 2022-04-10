# OPSLYFT ASSESSMENT 

![images (1)](https://4axofn288etdd2o6u15iv8h7-wpengine.netdna-ssl.com/wp-content/uploads/2020/04/Apr.-10-Formative-vs-Summative-Assessment-Whats-the-Difference-1536x801.jpg )

***

### DOCKERIZATION 

This is the first stage of the assessment. It includes the dockerization of a Flask App. A flask app code is written in [**app.py**](https://github.com/divyanshuss/opslyft/blob/main/app.py). The [**Dockerfile**](https://github.com/divyanshuss/opslyft/blob/main/Dockerfile) is created for the corresponding flask app by exposing it to port 5001. The Environment variable is also set up which can be changed as per the need.


![images (1)](https://predictivehacks.com/wp-content/uploads/2020/10/docker-python-api-1536x800.jpg)
***

### BUILDING IMAGE USING CI/CD

The Dockerfile is build using Jenkins pipeline script. 
Create the jenkins server and also install docker and git.Give docker permission to use jenkins by adding it into the jenkins group. Reload the daemons before building a jenkins job. Jenkins server is configured and a new [**pipeline**](https://github.com/divyanshuss/opslyft/blob/main/Jenkins-Pipeline) job has been created which builds the docker image and pushes it to the  AWS ECR. Jenkins-pipeline contains the pipeline script that needs to be written while creating a jenkins job. It fetches the Dockerfile from github and builds the image and pushes it to Amazon ECR.


![image (1)](https://i0.wp.com/foxutech.com/wp-content/uploads/2018/12/Setup-Jenkins-with-Amazon-Elastic-Container-Registry.png?resize=696%2C382&ssl=1)


```
Pre- requisites:
- Install the AWS, DOCKER plugins in Jenkins.
- Create AWS ECR repository and keep a note of the repository name, region , aws-account-id which are used as environment variables.

```


***

### CREATING WORKFLOW FOR DEPLOYING IMAGE OVER ECS

The Elastic Container Service is used to deploy the ECR image to the container. For this a [**workflow**](https://github.com/divyanshuss/opslyft/blob/main/workflow.yaml) has been setup. It deploys the build image to ECS. 

```
Pre-requisite:
- Create a service , task description , cluster in the ECS in AWS.
- Create a IAM user assigning the powers of ECS and ECR and add the credentials in the Github secrets file.
- Change the environment variable by the respective names of ecr repository , ecs service name , task-description file , cluster-name that you created.

```
