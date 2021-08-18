# BASH TEST



### WARNING: As mentioned in the exercise, this is a dangerous script.
### DO NOT EXECUTE IT.

### ATTENTION : Comme mentionné dans l'exercice, il s'agit d'un script dangereux.
### NE L'EXECUTEZ PAS.



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

### WARNING: As mentioned in the exercise, this is a dangerous script.
### DO NOT EXECUTE IT.

### ATTENTION : Comme mentionné dans l'exercice, il s'agit d'un script dangereux.
### NE L'EXECUTEZ PAS.

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


# SUBSIDIARY QUESTION

What would you reproach to this test ? 

# How to answer to this test

- put all your files in your local repository.
- Publish your answers on your own github/gitlab/bitbucket/other account.
- Send us a link to your git repository by mail.


