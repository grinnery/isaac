#!/usr/bin/env bash
set -e

SECRET_INGREDIENT=$(python -c 'import os,base64; print base64.b64encode(os.urandom(16))')
# run oauth proxy in background (not really a docker way, but so much easier)
/proxy/oauth2_proxy -config="/etc/oauth2/oauth2_proxy.cfg" -cookie-domain=${FQDN} -cookie-name=achmed -cookie-secret=${SECRET_INGREDIENT} -set-xauthrequest=true &

source startup.sh