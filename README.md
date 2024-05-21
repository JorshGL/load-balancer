# load-balancer
Para iniciar el proyecto, simplemente ejecute el comando `vagrant up` en la raíz del proyecto. Esto creará:
- 2 webservers
- 1 servidor de base de datos
- 1 servidor de balanceo de carga

Por defecto, el balanceador de carga se ejecutará en la ip `192.168.60.7` y puerto `80`. Para acceder a la aplicación, simplemente abra un navegador y acceda a `http://192.168.60.7`.

Para agregar más servidores web, agregue una nueva configuración en el archivo `Vagrantfile`, añada su ip al archivo `load-balancer-conf/load-balancer.conf` y ejecute `vagrant up` nuevamente.