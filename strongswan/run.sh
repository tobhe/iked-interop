#!/bin/bash

if [ -f "/etc/ipsec.d/ipsec.secrets" ]; then
	echo "Overwriting standard /etc/ipsec.secrest with /etc/ipsec.d/ipsec.secrets"
	cp -f /etc/ipsec.d/ipsec.secrets /etc/ipsec.secrets
fi

if [ -f "/etc/ipsec.d/ipsec.conf" ]; then
	echo "Overwriting standard /etc/ipsec.conf with /etc/ipsec.d/ipsec.conf"
	cp -f /etc/ipsec.d/ipsec.conf /etc/ipsec.conf
fi

ipsec start --nofork --debug
