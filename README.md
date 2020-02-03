# react-spring-docker-framework

Prototype implementation of a framework
using reactui, java springboot back end
docker-compose local development
mongo (app data)
vault (security)

# To Run Development Infrastructure

```bash
cd docker-compose
docker-compose up -d
```
add alias -]:-) use any alias you like..
```.bash_profile => .bash_command
alias buildLocalCloud="cd docker-compose;docker-compose up -d"
``` 
# To Reset the Development Infrastructure
## WARNING: You will loose all docker configuration 
```bash 
docker-compose rm -s -v
docker volume prune
```


## Setup Development Infrastructure


###  Step #1, Setup Security platform

#### Vault

Vault security encrypts all data in the system to we can story "Secrets". 
Secrets such as username and passwords to databases, 
which you want to be able to change on a regular bases automatically.
Addtionally, you don't what the encryption key be known by only one person.
Vault provides a way to split the key so you might have 10 key but require 3,5,9 or 10 to unlock. 
  

##### Setting up Vault Security First Time 

Vault requires a split key for auth  // TODO: figure out a production implementation automation
 
 ![](images/vaultStartSetup.png)
 
 #### Setup mongo databases
  
 access mongo console
 
 ```bash
 mongo
 ```
 
 
 #### Configure replica
 Run in mongo Console
 ```mongo command        
 rs.initiate(
   {
     _id : 'rs0',
     members: [
       { _id : 0, host : "mongo1:27017" },
       { _id : 1, host : "mongo2:27017" },
       { _id : 2, host : "mongo3:27017" }
     ]
   }
 )
 ```

 