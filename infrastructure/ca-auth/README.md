# Cloud Foundry SSL CA Server and key automation

## Goals

To have an internal CA Server to have two point cert validation for securing the authorization and authentication.

## Configure your secure environment     

## Commands

```
# Example Sample clis for running cfssl server like entrypoint below.
cfssl serve -min-tls-version=1.2 -loglevel 0 -ca-key=/app/cfssl/ca-key.pem -ca=/app/cfssl/ca.pem -config=/app/cfssl/config/config_ca.json

# Example to get server command line
cfssl server server --help

# Example Generate self sign key
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=client client.json | cfssljson -bare client

# Example Bulding cert  TODO: Still not sure this works.    
cfssl bundle -cert ca.csr
    
```



## Notes


[Build your own public key infrastructure with CFSSL](https://blog.cloudflare.com/how-to-build-your-own-public-key
-infrastructure/)

[cfssl on github](https://github.com/cloudflare/cfssl)

[CFSSL introduction](https://blog.cloudflare.com/introducing-cfssl/)

[CFSSL DockerHub](https://hub.docker.com/r/cfssl/cfssl/)

https://dev.to/stjohnjohnson/bring-your-own-certificate-authority-3gle

[Generate Self Signed certificates](https://kinvolk.io/docs/flatcar-container-linux/latest/setup/security/generate-self
-signed-certificates/)

PAL secrets

[pal-a-container-identity-bootstrapping-tool](https://blog.cloudflare.com/pal-a-container-identity-bootstrapping-tool/)

## Open Items

[ ] Figure out Error Starting Boulder using 

`docker-compose up -d -V`

```bash
Attaching to boulder_netaccess_1, boulder_boulder_1, boulder_bmysql_1
boulder_1    | standard_init_linux.go:219: exec user process caused: no such file or directory
netaccess_1  | standard_init_linux.go:219: exec user process caused: no such file or directory
```

[ ] Configure Boulder 

[ ] Add Consol Certs/Keys

[ ] Add Vault Certs/Keys

[ ] Add MongoDB Certs/Keys

[ ] Add MySQL Encryption