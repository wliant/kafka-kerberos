#!/bin/bash

# Check if krb5-kdc is running
if ! ps aux | grep -q '[k]rb5kdc'; then
  echo "krb5kdc is not running"
  exit 1  # Unhealthy
fi

# Check if krb5-admin-server is running
if ! ps aux | grep -q '[k]admind'; then
  echo "kadmin is not running"
  exit 1  # Unhealthy
fi

echo "Both krb5kdc and kadmind are running"
exit 0  # Healthy