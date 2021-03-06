## Opslyft assessmnet
<a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ"><img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif"></a>

### STEP ONE

* Create a directory using  **mkdir directory_name** 
* Add the app.py, requirements.txt, Dockerfile in it.
* Push the directory to git-hub repository using SSH authentication
![title](directory.png )

<a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ"><img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif"></a>
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
 ![title](AWS_ECR.png )
 <br>
 
 * Create the jenkins pipeline job and run the job to build and push images.
 
 * Add git-repo-url
 ![Add git-repo-url](pipeline-1.png)
 <br>
 
 * Build-Triggers
  ![Build-Triggers](build-trigger.png)
  <br>
  
  * Add-pipeline-script
  ![Add-pipeline-script](pipeline.png)
  <br>
  
  * Apply Jenkins Job
   ![Apply Jenkins Job](Jenkins-Pipeline.png)
   <br>
   
   * Image pushed to ECR successfully
   ![title](AWS-ECR-build.png )
  
  
  <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ"><img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif"></a>
 
 
