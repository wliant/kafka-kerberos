#!/bin/bash

kadmin.local -q "addprinc -randkey host/kafka-kerberos-kafka-1.kafka-kerberos_default"
kadmin.local -q "addprinc -randkey host/kafka-kerberos-zookeeper-1.kafka-kerberos_default"
kadmin.local -q "addprinc -randkey kafka/kafka-kerberos-kafka-1.kafka-kerberos_default"
kadmin.local -q "addprinc -randkey zookeeper/kafka-kerberos-zookeeper-1.kafka-kerberos_default"

kadmin.local -q "ktadd host/kafka-kerberos-kafka-1.kafka-kerberos_default"
kadmin.local -q "ktadd host/kafka-kerberos-zookeeper-1.kafka-kerberos_default"
kadmin.local -q "ktadd kafka/kafka-kerberos-kafka-1.kafka-kerberos_default"
kadmin.local -q "ktadd zookeeper/kafka-kerberos-zookeeper-1.kafka-kerberos_default"

cp /etc/krb5.conf /krb5/krb5.conf
cp /etc/krb5.keytab /krb5/krb5.keytab