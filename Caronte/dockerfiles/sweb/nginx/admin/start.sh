#!/bin/bash
set -e


main(){
    bash /root/admin/start.sh

    nginx -g 'daemon off;'

    tail -f /dev/null 
}

main