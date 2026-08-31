# Problema

Proyecto Web
→ Servidor (Produccion) → Disponible para los clientes vo.2

- Base de datos
- Tecnologia
- Dependencias
- pruebas Crear - Mantener(actualizar) - ejecutar
- Actualizaciones

# jenkins

- Servidor de automatizacion
- Se encara de gestionar
- Compilacion del codigo fuente
- Ejecucion de pruebas automatizadas
  Despligues automaticos → de Pruebas o de Produccion
- Monitoreo del proceso de desarollo
- Compatible con multiples tecnologias

# Integración Continua (CI) y Entrega Continua (CD).

- Son praticas dentro de DS

1. Integracion continua CI

- Automatizar la integracion de codigo en un repo compartido
  Ejemplo:
  app web → un dev hace cambios en el codigo → Sube los cambios a github → Jenkins detecta los cambios ejecuta algo automaticamente (compilacion, pruebas unitarias, pruebas de integracion) → Si todo OK se
  integra en la rama principal
- PIPELINE

2. Entrega Continua CD

- Despliegue del software en entornos de prueba o produccion
- Lanzar nuevas versiones
- Reduce el tiempo de lanzamiento
- Mejora la estabilidad y calida del software
- PIPELINE

# Ventajas de usar Jenkins

- Codigo abierto
- Extensible
- Automatizacion del ciclo de vida de DS
- Compatible
- facilidad de configuracioon
- Soporte para contenedores y kubernetes
- Comunidad activa

# Comandos para Docker

- docker run -d --name jenkins -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts

User: admin
pass: admin123
http://localhost:8080/

- Proyecto con maven
  mvn archetype:generate -DgroupId=com.miempresa.proyecto -DartifactId=mi-app -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false

# Jobs

- Una tarea automatizada -> servidor jenkins
  - Podria compilar
  - Ejecutar pruebas
  - Despliegue
- Existen varios tipos de job
  - Freestyle Project -> el mas basico y facil de configurar
  - Pipeline -> usado para los flujos de CI/CD -> Es mas avanzado
  - Multibranch pipeline -> para proyectos con varias ramas en git
  - Maven project -> para proyectos en maven

# Buils

- Es una ejecucion de un job
- Cada vez q haga una ejecucion se va a generar un build
  - Obtener el codigo fuente
  - Ejecuta los pasas que has definido
  - Registra la salida en el console
  - Guardar los artefactos(opcional)
  - Muestra el resultado del build en el interfaz

# Disparadores automaticos(TRIGGER)

- Polling SCM -> revisar periodicamente si hay cambios en el repo git
- Webhook -> Dispara el job cuando hay algun cambio en el codigo
- Programacion cron -> Se ejecuta en intervalos de tiempo
- Disparo por otro job -> Un job podria ejecutar otro job cuando termine

# Variables

- BUILD_NUMBER: Numero del build actual
- JOB_NAME: Nombre del job q se esta ejecutando
- WORKSPACE: Directorio donde jenkins almacena los archivos del job
- GIT_COMMIT: Hash del commit si el job usa git

# Ejecutar un programa python desde jenkins

- docker exec -it --user root jenkins /bin/bash
- apt-get install -y python3 python3-pip
- apt-get update && apt-get install -y openjdk-21-jdk maven

# Pipelines

- Conjunto de etapas que nos dicen como se va a construir, probar y desplegar nuestra app
  Por que usarlo?
  - Automatizacion completa desde la compilacion -> Despliegue
  - Usamos un archivo jenkinsfile(define todos los pasos q va a seguir un pipeline)
  - Multiples agentes y nodos
- Pipeline Declarativa
  - Sencilla
  - Mas facil
  - pipeline{}
  - Config estandar y seguras
- Pipeline Scripted
  - Basada en groovy
  - Mas flexible y potente
  - node{}
  - Personalizacion avanzada y logica completa
