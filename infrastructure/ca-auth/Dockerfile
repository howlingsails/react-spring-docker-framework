# base image
FROM cfssl/cfssl:1.5.0


COPY ./*.json /app/cfssl/config/

#Following https://kinvolk.io/docs/flatcar-container-linux/latest/setup/security/generate-self-signed-certificates/

RUN cd /app/cfssl; \
cfssl gencert -initca /app/cfssl/config/ca-config.json | cfssljson -bare ca;\
ls -altr ; \
cfssl print-defaults csr > server.json; \
echo "server" \
cat server.json; \
cfssl print-defaults csr > client.json; \
echo "client" \
cat client.json; \

RUN cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=client client.json | cfssljson -bare client

RUN cd /app/cfssl; \
cfssl bundle -cert ca.csr ;


# TODO: Download bunle to install in other machines base images
#
#
EXPOSE 8888

ENTRYPOINT ["cfssl"]
CMD ["serve","-min-tls-version=1.2","-ca-key=/app/cfssl/ca-key.pem","-ca=/app/cfssl/ca.pem","-config=/app/cfssl/config/config_ca.json"]
#MD ["serve","-min-tls-version=1.2","-ca-key=/app/cfssl/ca-key.pem","-ca=/app/cfssl/ca.pem"]
