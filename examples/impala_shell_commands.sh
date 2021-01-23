## Connect to impala using LDAP credentials
export IMPALA_HOST=xxxxxx
export IMPALA_PORT=21000 
export IMPALA_USERNAME=xxxxxx
export IMPALA_PASSWORD=xxxxxx
export IMPALA_CA_PATH=/root/project/xxxxxx.pem
export IMPALA_DATABASE=default

impala-shell -V -i $IMPALA_HOST:$IMPALA_PORT \
-d $IMPALA_DATABASE -l -u $IMPALA_USERNAME --ssl --ca_cert $IMPALA_CA_PATH 

#--ldap_password_cmd='echo -n $IMPALA_PASSWORD' \