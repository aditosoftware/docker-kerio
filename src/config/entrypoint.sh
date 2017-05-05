#!/bin/bash
/etc/init.d/kerio-connect stop
/opt/kerio/mailserver/kmsrecover /backup/ -q
/opt/kerio/mailserver/mailserver /opt/kerio/mailserver
while :; do
  curl https://localhost:4040/admin/login/ -k
  if (($? == 0 )); then
    echo "Kerio Connect successfully started"
	break
  fi
  sleep 1
done

# Container laufen lassen
while :; do
  sleep 500  
done
