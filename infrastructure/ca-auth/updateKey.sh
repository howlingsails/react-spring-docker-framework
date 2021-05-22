#!/usr/bin/env bash

# Generate a pseudo UUID
uuid()
{
    local N B T

    for (( N=0; N < 16; ++N ))
    do
        B=$(( $RANDOM%255 ))

        if (( N == 6 ))
        then
            printf '4%x' $(( B%15 ))
        elif (( N == 8 ))
        then
            local C='89ab'
            printf '%c%x' ${C:$(( $RANDOM%${#C} )):1} $(( B%15 ))
        else
            printf '%02x' $B
        fi

        for T in 3 5 7 9
        do
            if (( T == N ))
            then
                break
            fi
        done
    done

    echo
}

UUID=`uuid`
echo "${UUID}"

# stream config to new file replacing the auth key with newly generated UUID
cat config_ca.json | sed 's/key\":\".*\"/key\":\"'"$UUID"'\"/' > config_ca.json.new

# overwrite old file
cp config_ca.json.new config_ca.json

# delete new file
rm  config_ca.json.new
