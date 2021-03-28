# Application Infrastructure Build / Deploy

## Services and work todo

[x] Console ~high Available

[x] Vault Since Service

[  ] MongoDB High Available

[  ] _Certificate Authority

[  ] _SpringBoot Service

[  ] _NextJS Web Framework

## Launching Infrastructure

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


# MongoDB

## Goals

[x] Replica set

[ ] Set and Store Admin Password in Vault

[ ] Vault plugin for user/password rotation

[ ] Utilize in SpringBoot

## First Run Setup

After the infrastructure is launched a few steps  

Step 1 (command line option) : exec into one of the mongos:

```bash
docker exec -it localmongo1 /bin/bash
```
Step 2 ()


Step 3: access mongo console

```bash
mongo
```


Step 4: configure replica set by pasting the following into the mongo commandline

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
Step 5:

You can now interact with both Vault and Consul. View the UIs at http://localhost:8200/ui and http://localhost:8500/ui.
