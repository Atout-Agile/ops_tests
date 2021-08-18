# BASH TEST


:warning: **WARNING**  As mentioned in the exercise, this is a DANGEROUS script.

:warning: DO NOT EXECUTE IT. 

:warning: ATTENTION : Comme mentionné dans l'exercice, il s'agit d'un script dangereux.

:warning: NE L'EXECUTEZ PAS.



## Installation 

- clone this repository
- execute the following
~~~
cd <repo folder>
cp bash/sample.env bash/.env
pwd 
~~~

- Edit the `.env` file 
- Copy the output of the previous command as `CC_SCRIPT_PATH` value.
- save your `.env` file

## FIX THE BASH BUG
Files of this exercise are in the /bash folder.

When I last executed this script, I lost all my home folders.

Since then, I tried to fix it. Here is latest version.
Obviously, it still has a bug.

Your task is to fix and make it production ready.




:warning: **WARNING**  As mentioned in the exercise, this is a DANGEROUS script.

:warning: DO NOT EXECUTE IT. 

:warning: ATTENTION : Comme mentionné dans l'exercice, il s'agit d'un script dangereux.

:warning: NE L'EXECUTEZ PAS.

To start the script : 

~~~
cd <repo folder>
./menu
~~~


# TOMCAT DEPLOYMENT

The goal of this exercise is to automate the deployment of tomcat with Ansible 
and test the deployment in a container.
 
 - Write an ansible tomcat_deploy.yml playbook to install a tomcat server with 
   the following parameters :
   - Tomcat version : 8
   - JVM Max heap size depending on environment :
   ~~~
   DEV: 256Mo
   PROD: 512Mo
   ~~~
 - Deploy "sample.war"
 - Write a short "tomcat_deploy.sh" (less than 10 lines) to test 
   ansible configuration in a docker container. This script should :
   - build the test container from the Dockerfile contained in /tomcat_deploy
   - launch the container and execute it from tomcat_test.sh (already present)
     to execute the playbook and launch a set of tests.
	
  :warning: **WARNING** :warning: To avoid issues when starting the service inside a container, you must use option ```--privileged=true```

## Some useful points :
- The ```tomcat_deploy``` folder must be mounted as ```/data``` of the docker container to be able to launch the test script.
- The environnement (DEV/PROD) is passed as a parameter to the ansible command with  ```--extra-vars="env=${ENVIRONMENT}"``` in order to configure the maximum heap of the JVM accordingly.
- Tomcat installation, war deployment and heap parameteres are the only expected parameters expected in Ansible configuration (make it as simple as possible).

# SUBSIDIARY QUESTION

What would you reproach to this test ? 

# How to answer to this test
- This excercise has been tested with docker **1.13.1**. If you use different version, do make it clear.
- put all your files in your local repository.
- Publish your answers on your own github/gitlab/bitbucket/other account.
- Send us a link to your git repository by mail.


