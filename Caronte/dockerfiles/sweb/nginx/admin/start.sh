#!/bin/bash
set -e


main(){
    bash /root/admin/start.sh

    tail -f /dev/null 
}

main