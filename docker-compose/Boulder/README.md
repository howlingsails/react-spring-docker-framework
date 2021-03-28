# Boulder ACME CA

[`This is an implementation of an ACME-based CA. The ACME protocol allows the CA to automatically verify that an applicant for a certificate actually controls an identifier, and allows domain holders to issue and revoke certificates for their domains. Boulder is the software that runs Let's Encrypt.`](https://porter.io/github.com/letsencrypt/boulder)


## Goals

To have an internal CA Server to have two point cert validation for securing the authorization and authentication.


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