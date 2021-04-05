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


<h1>COMO USAR</h1>
1 dar permisos de eecucion al fichero
chmod +x SendMail.sh

2 Probar
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


# si el ficheor SendMail.sh se encuentra en la ruta /root la llamada sería
#sh /root/SendMail.sh
</pre>


ya tan solo nos quedaría probarlo

<h2>
Funcion mail
</h2>
Este script hace uso de la función mail del servidor, si no está habilitada o instalada no funcionará


