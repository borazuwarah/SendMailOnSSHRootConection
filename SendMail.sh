#Variables
#########################################
IP="$(echo $SSH_CONECTION | cut -d " " -f 1)"
H=$(hostname)
NOW=$(date +"%e %b %Y, %a %r")
TO="correodestino@dominio.tld"
#########################################


#Script
echo "Enviando correo a: $TO"
echo "Nuevo acceso al servidor: $H con IP: $IP" | mail -s "Conexion SSH $NOW" $TO