#!/bin/bash

# Copy files or perform setup tasks
cp /krb5/krb5.keytab /home/appuser/krb5.keytab

# Start ZooKeeper
/etc/confluent/docker/run
