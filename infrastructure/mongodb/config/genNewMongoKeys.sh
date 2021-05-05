#!/bin/bash
#####################################
#                PSA                #
#####################################
#  Breathe. Take a deep breath in    #
#  Hold For a  couple seconds       #
#  Tale a little more breath in     #
#  Hold for a comfortable time      #
#  Breath out                       #
#  -]:-)>                           #
#####################################

SECURITY_KEY_BIT_SIZE=8192
# WHy 8192? All the examples I was where 2048, so I thought value should be secure so... why not 1,073,741,824 ???? Too excessive for a Dev environment

# From example https://www.suse.com/support/kb/doc/?id=000018152
#
# Gen
openssl req -newkey rsa:${SECURITY_KEY_BIT_SIZE} -new -nodes -x509 -days 3650 -keyout key.pem -out cert.pem

CHECK_MONGO_KEY=`ls -alt ./key.pem`
CHECK_SUM_FOR_KEY_FILE=`cksum ./key.pem`

PWD=`pwd`
echo -e "Vault Key Generated\nDirectory=[${PWD}]\nFile Details=[${CHECK_VAULT_KEY}]\nFile Check Sum=[${CHECK_SUM_FOR_KEY_FILE}]"  # Make it easy to parse
echo -e "\nRegEx=[(?<trim1>.*=[)(?<workingDirectory>.*)(?<trim2>].*=[)(?<directoryListing>.*)(?<trim3>].*=[)(?<cksum>.*)(?<trim4>])"



# TODO: Generate and Registry Key with CA
#
#  We want to run this on every build to get a new cert for the new vault machine image
