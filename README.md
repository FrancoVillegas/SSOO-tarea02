Autor: Franco Villegas Correo: franco.villegas@alumnos.uv.cl

Como primer punto se buscó buscó información sobre el funcionamiento de los comandos cURL [1] y jq [2]. Luego, utlizando el comando cURL se descargó el archivo solicitado y con jq se realizo la manipulación de los datos.

Mediante el uso de pipes se unió la función del comando cURL y el comando jq, además, se utilizó redireccionamiento para crear el archivo solicitado. Todo esto con el comando:

- curl https://api.warframe.market/v1/items | jq 'del(.payload.items[].thumb, .payload.items[].url_name)' > items.json

El cual descarga, procesa, manipula y redirecciona los datos hacia un archivo llamado items.json.

1. [https://www.hostinger.es/tutoriales/comando-curl]()
2. [https://www.baeldung.com/linux/jq-command-json]()
