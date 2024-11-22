#!/bin/bash
set -e

source /root/admin/usuarios/usuarios.sh
source /root/admin/ssh/ssh.sh

chmod +x /root/admin/usuarios/usuarios.sh
chmod +x /root/admin/ssh/ssh.sh

main(){
   newUser 
   UserSudo 
   config_ssh

    tail -f /dev/null 
}

main