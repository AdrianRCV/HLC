#!/bin/bash
set -e

config_nginx(){
    nginx &
}

load_entrypoint_base(){
    /root/admin/start.sh
}

main(){

    config_nginx
    load_entrypoint_base

    tail -f /dev/null 
}

main