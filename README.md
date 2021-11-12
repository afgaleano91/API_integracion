# API_integracion

## Ejecución local sin docker en ambiente linux

### Ambiente
- Se ejecuta source enviroment/bin/activate en la carpeta base

### Instalación de dependencias
- Se ejecuta pip install -r requirements.txt en la carpeta base

### Ejecución
- Se debe ejecutar el comando ./start.sh

### Rutas
- POST: http://127.0.0.1:5000/api/v1.0/films/
- GET All: http://127.0.0.1:5000/api/v1.0/films/
- GET By id: http://127.0.0.1:5000/api/v1.0/films/<id>
 
## Ejecución docker
- Se ejecuta el comando *docker-compose up -d --build* para construir
- Luego de construir si se necesita levantar se usa *docker-compose up -d*
