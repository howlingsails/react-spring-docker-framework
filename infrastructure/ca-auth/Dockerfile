# base image
FROM cfssl/cfssl:1.5.0


COPY ./*.json /app/cfssl/config/

#Following https://kinvolk.io/docs/flatcar-container-linux/latest/setup/security/generate-self-signed-certificates/

RUN cd /app/cfssl; \
echo "\n\ngencert\n"; \
cfssl gencert -initca /app/cfssl/config/ca-csr.json | cfssljson -bare ca;\
ls -altr ; \
echo "\ngencert"; \
cfssl print-defaults csr > server.json; \
echo "\nserver"; \
cat server.json; \
cfssl print-defaults csr > client.json; \
echo "\nclient" ;\
cat client.json; \
echo "\n\n*******************\nCONFIG DONE\n********************";

RUN cd /app/cfssl; \
cfssl gencert -ca=ca.pem \
    -ca-key=ca-client-key.pem \
    -config=ca-csr.json \
    -profile=client config_ca.json | cfssljson -bare client ; \
echo "gen client"; \
ls -altr ; \
openssl verify -CAfile ca.pem ca-client-key.pem; \
echo "\n\n*******************\gen client cert DONE\n********************";

RUN cd /app/cfssl; \
cfssl gencert \
    -ca=ca-web.pem \
    -ca-key=ca-web-key.pem \
    -config=server-csr.json \
    -profile=web-servers \
    server-csr.json | cfssljson -bare server; \
ls -altr ; \
openssl verify -CAfile ca-web.pem server.pem; \
echo "\n\n*******************\gen webserver cert DONE\n********************";

RUN cd /app/cfssl; \
cfssl bundle -cert ca.csr ; \
ls -altr ; \
echo "\n\n*******************\bundle DONE\n********************";


# TODO: Download bunle to install in other machines base images
#
#
EXPOSE 8888

ENTRYPOINT ["cfssl"]
CMD ["serve","-min-tls-version=1.2","-loglevel=0","-ca-key=/app/cfssl/ca-key.pem","-ca=/app/cfssl/ca.pem","-config=/app/cfssl/config/config_ca.json"]
