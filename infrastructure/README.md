# Application Infrastructure Build / Deploy

## Launching Infrastructure

```bash

docker compose up -d -V

```

### To Reset the Development Infrastructure
#### WARNING:
#### You will loose all current docker configuration and setup 

```bash 

docker-compose rm -s -v &&  docker volume prune

```

## First Run Setup

After the infrastructure is launched a few steps  

* *Step ?:** Create Certificates For Installations

Create Certificates For ALl Systems and copy them to the machines installation directories.

* *Step 1:** (command line option) : exec into one of the mongos:

Linux/MacOs
```bash
docker exec -it localmongo1 /bin/bash
```
windows
```bash 
winpty docker exec -it localmongo1 /bin/bash
```

Or User Docker Desktop CLI option on Mongo1

**Step 2:**

??

**Step 3:** access mongo console

```bash

mongo

```


**Step 4:** configure replica set by pasting the following into the mongo commandline


``` mongo script    
    
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
**Step 5:**

You can now interact with both Vault and Consul. 
View the UIs at 

**Vault**

[http://localhost:8200/ui](http://localhost:8200/ui) 

**Consol**

[http://localhost:8500/ui](http://localhost:8500/ui).



## Services and work todo

[x] Console ~high Available

[x] Vault Since Service

[x] MongoDB High Available

[  ] _Certificate Authority

[  ] _SpringBoot Service

[  ] _NextJS Web Framework

