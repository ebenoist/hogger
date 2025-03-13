#!/usr/bin/env bash

ARG=2#$1
BIN="$(($ARG))"
printf '%x\n' $BIN | tr '[:lower:]' '[:upper:]'
