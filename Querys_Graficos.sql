

------------------------------------------------ QUERY UTILIZADAS EN LOS GRAFICOS ------------------------------------ 




---------------------------------------------------------Incidentes x ditrito------------------------------------------

select * from (

select 
dis.distrito
,count(ft.id_distrito)

from
ft_fire_incidents ft,
dim_distrito dis

where 
ft.id_distrito = dis.id_distrito
group by dis.distrito
order by count(ft.id_distrito) desc
) 
where rownum <= 10



---------------------------------------------------------Incidentes x año-----------------------------------------------

select 
dim.anho
,count(ft.id)

from
ft_fire_incidents ft,
dim_tiempo dim

where 
ft.id_tiempo = dim.id_tiempo
group by dim.anho


--------------------------------------------------------Distribucion del TOtal de Incdentes por Mes--------------------

select 
dim.descripcion_mes
,count(ft.id)

from
ft_fire_incidents ft,
dim_tiempo dim

where 
ft.id_tiempo = dim.id_tiempo
group by dim.descripcion_mes
order by count(ft.id) desc



--------------------------------------------------------Dantidad de incidentes por batallon----------------------------

select 
dim.battalion
,count(ft.id) as cantidad

from
ft_fire_incidents ft,
dim_battalion dim,
dim_tiempo tiempo

where 
ft.id_battalion = dim.id_battalion
and ft.id_tiempo = tiempo.id_tiempo
and tiempo.anho = 2023
group by dim.battalion
order by count(ft.id) desc



-------------------------------------------------------- 10 INCIDENTES CON MAYOR TIEMPO EN PROCEDIMIENTO------------------


SELECT 
T.ID_MES AS FECHA
,A.INCIDENT_NUMBER
,A.ADDRESS
,A.DISTRITO
,B.BATTALION
,A.ALARM_DTTM AS ALARMA
,A.ARRIVAL_DTTM AS ARRIVO
,A.CLOSE_DTTM AS TERMINO
,A.DIFERENCIA_HORAS AS HORAS
,A.DIFERENCIA_MINUTOS AS MINUTOS
,A.DIFERENCIA_SEGUNDOS AS SEGUNDOS

FROM
(
SELECT 
ID_TIEMPO
,ID_BATTALION
,INCIDENT_NUMBER
,ADDRESS
,NEIGHBORHOOD_DISTRICT AS DISTRITO
, ALARM_DTTM
, ARRIVAL_DTTM
, CLOSE_DTTM
,TRUNC(MOD((TO_DATE(CLOSE_DTTM, 'DD.MM.YYYY HH24:MI:SS')  - TO_DATE(ARRIVAL_DTTM, 'DD.MM.YYYY HH24:MI:SS')) * 24, 24)) DIFERENCIA_HORAS
,TRUNC(MOD((TO_DATE(CLOSE_DTTM, 'DD.MM.YYYY HH24:MI:SS')  - TO_DATE(ARRIVAL_DTTM, 'DD.MM.YYYY HH24:MI:SS')) * (60 * 24), 60)) DIFERENCIA_MINUTOS
,TRUNC(MOD((TO_DATE(CLOSE_DTTM, 'DD.MM.YYYY HH24:MI:SS')  - TO_DATE(ARRIVAL_DTTM, 'DD.MM.YYYY HH24:MI:SS')) * (60 * 60 * 24), 60)) DIFERENCIA_SEGUNDOS
FROM
FT_FIRE_INCIDENTS
WHERE 
ARRIVAL_DTTM IS NOT NULL
AND CLOSE_DTTM IS NOT NULL
order by DIFERENCIA_HORAS DESC, DIFERENCIA_MINUTOS DESC, DIFERENCIA_SEGUNDOS DESC
) A, DIM_TIEMPO T , DIM_BATTALION B
WHERE
A.ID_TIEMPO = T.ID_TIEMPO
AND A.ID_BATTALION = B.ID_BATTALION
AND rownum <= 10