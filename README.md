# SliwDocker 1.0

SliwDocker contiene los scripts necesarios para el despliegue de Sliw usando Docker.

Los servicios pueden ser gestionados manualmente o automáticamente, de forma individual o en conjunto.

**Importante:** si se usan los servicios de forma individual, hay tener en cuenta las dependencias que tienen entre ellos.

Esta versión incluye los siguientes servicios:

* Apache Apollo 1.7.1
* Elasticsearch 1.7.5
* Kibana 4.1
* SliwServer 1.0
* SliwWebManager 1.0

Cada servicio tiene su propia carpeta que contiene:

* Opcionalmente, un fichero Dockerfile que define como construir la imagen.
* Opcionalmente, ficheros de configuración extra usados al construir la imagen.
* Opcionalmente, un script build-image.sh para construir la imagen.
* Opcionalmente, un script create-data-volume.sh para crear un contenedor con un volumen para datos.
* Opcionalmente, un script destroy-data-volume.sh para eliminar el contenedor de datos.
* Un script run-instance.sh para crear y arrancar el contenedor.
* Un script start-instance.sh para arrancar el contenedor creado y detenido.
* Un script stop-instance.sh para detener el contenedor creado y en ejecución.
* Un script remove-instance.sh para eliminar el contenedor creado.

La carpeta raíz contiene:

* Un fichero docker-compose.yml que declara como construir y arrancar todos los servicios en conjunto.
* Un script run.sh que crea y arranca todos los servicios.
* Un script start.sh que arranca todos los servicios detenidos.
* Un script stop.sh que detiene todos los servicios en ejecución.
* Un script rm.sh que elimina todos los servicios creados.

Si se desea utilizar un servicio de forma individual, el orden de ejecución de los scripts es:

* build-image.sh -> create-data-volume.sh -> run-instance.sh
* stop-instance.sh <-> start-instance.sh
* remove-instance.sh -> destroy-data-volume.sh

Si se desea utilizar todos los servicios en conjunto, el orden de ejecución de los scripts es:

* run.sh
* stop.sh <-> start.sh
* rm.sh
