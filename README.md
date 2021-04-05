# SendMailOnSSHRootConection
Enviar un Correo cuando conecte el usuario ROOT por SSH al servidor remoto

<pre>
:'######::'########::'######::'##::::'##:'########::'####:'########:'##:::'##:
'##... ##: ##.....::'##... ##: ##:::: ##: ##.... ##:. ##::... ##..::. ##:'##::
 ##:::..:: ##::::::: ##:::..:: ##:::: ##: ##:::: ##:: ##::::: ##:::::. ####:::
. ######:: ######::: ##::::::: ##:::: ##: ########::: ##::::: ##::::::. ##::::
:..... ##: ##...:::: ##::::::: ##:::: ##: ##.. ##:::: ##::::: ##::::::: ##::::
'##::: ##: ##::::::: ##::: ##: ##:::: ##: ##::. ##::: ##::::: ##::::::: ##::::
. ######:: ########:. ######::. #######:: ##:::. ##:'####:::: ##::::::: ##::::
:......:::........:::......::::.......:::..:::::..::....:::::..::::::::..:::::  

╔════════════════╗
|       100%     |
╚════════════════╝
</pre>

<h1>Explicacion del Script</h1>
Este Script captura la IP de la visita, y envia un correo informando de una nueva conexión con el usuario Root al servidor: H(Host Name) desde la IP (IP_CONNECTION), y a la hora X(NOW)
es muy sencillito y a mi me funciona, espero le sirva a alguien


<h1>COMO USAR</h1>
1 Modificar las variables del fichero SendMail.sh acorde a sus necesidades.
IMPORTANTE  variable TO -> pon tu correo

2 Dar permisos de eecucion al fichero.
<pre>
chmod +x SendMail.sh
</pre>

3 Probar.
se puede ejecutar directamente el fichero:
<pre>
./SendMail.sh
</pre>





Si deseamos que se ejecute cuando el usuario Root hace login mediante SSH haremos la llamada al fichero en el archivo .bash_profile en la carpeta /root
así pues el fichero nos quedaría tal que así:
debajo 
<pre>
# User specific enviroment and startup programs
export PATH

XXXXXXXXXXXXXXXXXXXXXXX

# aquí ponemos  la llamada al fichero, si por ejemplo se encuentra en la raiz (/) la llamada sería:
#sh /SendMail.sh

# si el fichero SendMail.sh se encuentra en la ruta /root la llamada sería
#sh /root/SendMail.sh
</pre>




<h2>
Funcion mail
</h2>
Este script hace uso de la función mail del servidor, si no está habilitada o instalada no funcionará.


