# Prueba_DE
Prueba Data Engineer

- La solucion proporcionada, se realizo en un entorno local configurado en una Maquina virtual como servidor con un sistema operativo Linux y base de datos Oracle.
- Esta solucion fue desarrollada mediante programacion PLSQL
- Se debe descargar el archivo Fire_incidents_20231020.csv (el nombre del archivo varia segun el dia de descarga) desde https://data.sfgov.org/Public-Safety/Fire-Incidents/wr8u-xric
- Una vez descargado el archivo ejecutar el Script contenido en Script_solucion.sql el cual creara los objetos necesarios para el desarrollo de la solucion
- Cuando el Script se haya ejecutado correctamente se deben cargar los datos del archivo Fire_incidents_20231020.csv en la tabla FIRE_INCIDENTES para simular el conjunto de datos inicial
- Una vez cargado los datos en la tabla FIRE_INCIDENTES se debe ejecutar el JOB CARGA_MODELO , este JOB es el encargado de ejecutar los procedimientos de llenado para las dimensiones y FT. Si desea realizar una carga 
  individual se pueden ejecutar los procedmimientos DIMENSIONES y FT_FIRE_INCIDENTS que se encuentran en el paquete de carga llamado CARGA.
- Puede Comprobar los datos con las querys creadas para los analisis en el archivo Querys_Graficos.sql
- Cualquier duda consultar el Informe Prueba Tecnica.pdf
