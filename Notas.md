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
