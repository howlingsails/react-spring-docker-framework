#!/bin/bash
#####################################
#                PSA                #
#####################################
#  Breath, Take a deep breath in    #
#  Hold For a  couple seconds       #
#  Tale a little more breath in     #
#  Hold for a comfortable time      #
#  Breath out                       #
#  -]:-)>                           #
#####################################

SECURITY_KEY_BIT_SIZE=8192
# WHy 8192? All the examples I was where 2048, so I thought value should be secure so... why not 1,073,741,824 ???? Too excessive for a Dev environment

# From example https://www.vaultproject.io/docs/platform/k8s/helm/examples/standalone-tls
#
# Gen
openssl genrsa -out ./vault-key.pom ${SECURITY_KEY_BIT_SIZE}

CHECK_VAULT_KEY=`ls -alt ./vault-key.pem`
CHECK_SUM_FOR_KEY_FILE=`cksum ./vault-key.pem`
PWD=`pwd`
echo -e "Vault Key Generated\nDirectory=[${PWD}]\nFile Details=[${CHECK_VAULT_KEY}]\nFile Check Sum=[${CHECK_SUM_FOR_KEY_FILE}]"  # Make it easy to parse
echo -e "\nRegEx=[(?<trim1>.*=[)(?<workingDirectory>.*)(?<trim2>].*=[)(?<directoryListing>.*)(?<trim3>].*=[)(?<cksum>.*)(?<trim4>])"



# TODO: Generate and Registry Key with CA
#
#  We want to run this on every build to get a new cert for the new vault machine image
