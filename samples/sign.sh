#!/usr/bin/env bash

echo -n "$1" | openssl dgst -binary -sha256 -hmac "$2" | openssl enc -base64