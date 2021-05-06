# Boulder ACME CA

[`This is an implementation of an ACME-based CA. The ACME protocol allows the CA to automatically verify that an applicant for a certificate actually controls an identifier, and allows domain holders to issue and revoke certificates for their domains. Boulder is the software that runs Let's Encrypt.`](https://porter.io/github.com/letsencrypt/boulder)


## Goals

To have an internal CA Server to have two point cert validation for securing the authorization and authentication.

## Notes

Info I found on running Boulder

[Running Boulder inside your organization](https://community.letsencrypt.org/t/run-boulder-inside-your-organization/23784/2)
[Deploying Boulder in Production](https://community.letsencrypt.org/t/deploying-boulder-in-production/66486/6)

Saw suggestion to not use Boulder but to use CFSSL 

[Build your own public key infrastructure with CFSSL](https://blog.cloudflare.com/how-to-build-your-own-public-key
-infrastructure/)

[cfssl on github](https://github.com/cloudflare/cfssl)

[CFSSL introduction](https://blog.cloudflare.com/introducing-cfssl/)

[CFSSL DockerHub](https://hub.docker.com/r/cfssl/cfssl/)


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