## Opslyft assessmnet
<a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ"><img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif"></a>

### STEP ONE

* Create a directory using  **mkdir directory_name** 
* Add the app.py, requirements.txt, Dockerfile in it.
* Push the directory to git-hub repository using SSH authentication

<br>

### STEP TWO

* Create an AWS instance. Configure it with AWS instance.
* Install Jenkins, Docker and Git.
* Add jenkins user to Docker group using 
 ```
 usermod -a -G docker jenkins
 
 ```
 * Reload the daemons and restart docker and jenkins services
 
 ```
 * systemctl daemon-reload
 * systemctl jenkins restart
 * systemctl docker restart
 
 ```
 
 * Create an AWS-ECR repository 
 ![Add git-repo-url](AWS_ECR.png = 100x100)
 
 * Create the jenkins pipeline job and run the job to build and push images.
 
 ![Add git-repo-url](pipeline-1.png = 100x100)
 <br>
 
  ![Build-Triggers](build-trigger.png =100x100)
  <br>
  
  ![Add-pipeline-script](pipeline.png =100x100)
  <br>
  
   ![Apply Jenkins Job](Jenkins-pipeline.png =100x100)
   <br>
  
  
  
 
 
