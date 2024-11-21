#!/bin/bash
set -e

source ./usuarios/usuarios.sh
surce ./ssh/ssh.sh

chmod +x /root/admin/usuarios/usuarios.sh
chmod +x /

main(){
   newUser  
   config_ssh
   # make_bienvenida

    tail -f /dev/null 
}

main