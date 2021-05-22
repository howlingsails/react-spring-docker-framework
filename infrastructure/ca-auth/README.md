# Cloud Foundry SSL CA Server and key automation

## Goals

To have an internal CA Server to have two point cert validation for securing the authorization and authentication.

## Configure your secure environment     





## Notes


[Build your own public key infrastructure with CFSSL](https://blog.cloudflare.com/how-to-build-your-own-public-key
-infrastructure/)

[cfssl on github](https://github.com/cloudflare/cfssl)

[CFSSL introduction](https://blog.cloudflare.com/introducing-cfssl/)

[CFSSL DockerHub](https://hub.docker.com/r/cfssl/cfssl/)

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