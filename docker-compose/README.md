Step 1: start the mongo databases

```bash
docker-compose up
or
```bash
docker-compose up -d
```

Step 2 (command lineoption) : exec into one of the mongos:

```bash
docker exec -it localmongo1 /bin/bash
```
Step 2 ()


Step 3: access mongo console

```bash
mongo
```


Step 4: configure replica set by pasting the following

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
