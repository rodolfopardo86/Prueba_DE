--------------------------------------------------------
-- Archivo creado  - s�bado-octubre-21-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SQ_BATTALION
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SQ_BATTALION"  MINVALUE 1 MAXVALUE 1000 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SQ_DISTRITO
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SQ_DISTRITO"  MINVALUE 1 MAXVALUE 1000 INCREMENT BY 1 START WITH 43 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table DIM_BATTALION
--------------------------------------------------------

  CREATE TABLE "HR"."DIM_BATTALION" 
   (	"ID_BATTALION" NUMBER, 
	"BATTALION" VARCHAR2(30 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DIM_DISTRITO
--------------------------------------------------------

  CREATE TABLE "HR"."DIM_DISTRITO" 
   (	"ID_DISTRITO" NUMBER, 
	"DISTRITO" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DIM_TIEMPO
--------------------------------------------------------

  CREATE TABLE "HR"."DIM_TIEMPO" 
   (	"ID_TIEMPO" NUMBER, 
	"FECHA" DATE, 
	"DECRIPCION_DIA" VARCHAR2(36 BYTE) COLLATE "USING_NLS_COMP", 
	"NUMERO_DIA_SEMANA" VARCHAR2(1 BYTE) COLLATE "USING_NLS_COMP", 
	"DIA" VARCHAR2(2 BYTE) COLLATE "USING_NLS_COMP", 
	"ID_MES" VARCHAR2(17 BYTE) COLLATE "USING_NLS_COMP", 
	"DIAS_DEL_MES" NUMBER, 
	"TERMINO_MES" DATE, 
	"MES_A�O" VARCHAR2(45 BYTE) COLLATE "USING_NLS_COMP", 
	"DESCRIPCION_MES" VARCHAR2(40 BYTE) COLLATE "USING_NLS_COMP", 
	"MES" VARCHAR2(2 BYTE) COLLATE "USING_NLS_COMP", 
	"SEMESTRE_ID" VARCHAR2(7 BYTE) COLLATE "USING_NLS_COMP", 
	"DURACION_DIAS_SEMESTRE" NUMBER, 
	"FECHA_TERMINO_SEMESTRE" DATE, 
	"NUMERO_SEMSTRE" NUMBER, 
	"ANHO" VARCHAR2(4 BYTE) COLLATE "USING_NLS_COMP", 
	"CANT_DIAS_ANHO" NUMBER, 
	"FECHA_TERMINO_ANHO" DATE
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FT_FIRE_INCIDENTS
--------------------------------------------------------

  CREATE TABLE "HR"."FT_FIRE_INCIDENTS" 
   (	"ID" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ID_TIEMPO" NUMBER, 
	"ID_DISTRITO" NUMBER, 
	"ID_BATTALION" NUMBER, 
	"INCIDENT_NUMBER" NUMBER, 
	"EXPOSURE_NUMBER" NUMBER, 
	"ADDRESS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"CALL_NUMBER" NUMBER, 
	"ALARM_DTTM" VARCHAR2(19 BYTE) COLLATE "USING_NLS_COMP", 
	"ARRIVAL_DTTM" VARCHAR2(19 BYTE) COLLATE "USING_NLS_COMP", 
	"CLOSE_DTTM" VARCHAR2(19 BYTE) COLLATE "USING_NLS_COMP", 
	"ZIPCODE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"STATION_AREA" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"BOX" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"SUPPRESSION_UNITS" NUMBER, 
	"SUPPRESSION_PERSONNEL" NUMBER, 
	"EMS_UNITS" NUMBER, 
	"EMS_PERSONNEL" NUMBER, 
	"OTHER_UNITS" NUMBER, 
	"OTHER_PERSONNEL" NUMBER, 
	"FIRST_UNIT_ON_SCENE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ESTIMATED_PROPERTY_LOSS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ESTIMATED_CONTENTS_LOSS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"FIRE_FATALITIES" NUMBER, 
	"FIRE_INJURIES" NUMBER, 
	"CIVILIAN_FATALITIES" NUMBER, 
	"CIVILIAN_INJURIES" NUMBER, 
	"NUMBER_OF_ALARMS" NUMBER, 
	"PRIMARY_SITUATION" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"MUTUAL_AID" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ACTION_TAKEN_PRIMARY" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ACTION_TAKEN_SECONDARY" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ACTION_TAKEN_OTHERR" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"DETECTOR_ALERTED_OCCUPANTS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"PROPERTY_USE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"AREA_OF_FIRE_ORIGIN" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"IGNITION_CAUSE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"IGNITION_FACTOR_PRIMARY" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"IGNITION_FACTOR_SECONDARY" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"HEAT_SOURCE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ITEM_FIRST_IGNITED" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"HUMAN_FACTORS_ASSOCIATED_WITH_IGNITION" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"STRUCTURE_TYPE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"STRUCTURE_STATUS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"FLOOR_OF_FIRE_ORIGIN" NUMBER, 
	"FIRE_SPREAD" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"NO_FLAME_SPEAD" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"NUMBER_OF_FLOORS_WITH_MINIMUM_DAMAGE" NUMBER, 
	"NUMBER_OF_FLOORS_WITH_SIGNIFICANT_DAMAGE" NUMBER, 
	"NUMBER_OF_FLOORS_WITH_HEAVY_DAMAGE" NUMBER, 
	"NUMBER_OF_FLOORS_WITH_EXTREME_DAMAGE" NUMBER, 
	"DETECTORS_PRESENT" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"DETECTOR_TYPE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"DETECTOR_OPERATION" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"DETECTOR_EFFECTIVENESS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"DETECTOR_FAILURE_REASON" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"AUTOMATIC_EXTINGUISHING_SYSTEM_PRESENT" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"AUTOMATIC_EXTINGUISHING_SYTEM_TYPE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"AUTOMATIC_EXTINGUISHING_SYTEM_PERFOMANCE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"AUTOMATIC_EXTINGUISHING_SYTEM_FAILURE_REASON" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"NUMBER_OF_SPRINKLER_HEADS_OPERATING" NUMBER, 
	"SUPERVISOR_DISTRICT" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"NEIGHBORHOOD_DISTRICT" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"POINT" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FIRE_INCIDENTS
--------------------------------------------------------

  CREATE TABLE "HR"."FIRE_INCIDENTS" 
   (	"INCIDENT_NUMBER" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"EXPOSURE_NUMBER" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ID" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ADDRESS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"INCIDENT_DATE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"CALL_NUMBER" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ALARM_DTTM" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ARRIVAL_DTTM" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"CLOSE_DTTM" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"CITY" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ZIPCODE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"BATTALION" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"STATION_AREA" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"BOX" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"SUPPRESSION_UNITS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"SUPPRESSION_PERSONNEL" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"EMS_UNITS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"EMS_PERSONNEL" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"OTHER_UNITS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"OTHER_PERSONNEL" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"FIRST_UNIT_ON_SCENE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ESTIMATED_PROPERTY_LOSS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ESTIMATED_CONTENTS_LOSS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"FIRE_FATALITIES" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"FIRE_INJURIES" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"CIVILIAN_FATALITIES" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"CIVILIAN_INJURIES" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"NUMBER_OF_ALARMS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"PRIMARY_SITUATION" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"MUTUAL_AID" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ACTION_TAKEN_PRIMARY" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ACTION_TAKEN_SECONDARY" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ACTION_TAKEN_OTHERR" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"DETECTOR_ALERTED_OCCUPANTS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"PROPERTY_USE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"AREA_OF_FIRE_ORIGIN" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"IGNITION_CAUSE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"IGNITION_FACTOR_PRIMARY" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"IGNITION_FACTOR_SECONDARY" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"HEAT_SOURCE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"ITEM_FIRST_IGNITED" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"HUMAN_FACTORS_ASSOCIATED_WITH_IGNITION" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"STRUCTURE_TYPE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"STRUCTURE_STATUS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"FLOOR_OF_FIRE_ORIGIN" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"FIRE_SPREAD" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"NO_FLAME_SPEAD" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"NUMBER_OF_FLOORS_WITH_MINIMUM_DAMAGE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"NUMBER_OF_FLOORS_WITH_SIGNIFICANT_DAMAGE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"NUMBER_OF_FLOORS_WITH_HEAVY_DAMAGE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"NUMBER_OF_FLOORS_WITH_EXTREME_DAMAGE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"DETECTORS_PRESENT" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"DETECTOR_TYPE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"DETECTOR_OPERATION" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"DETECTOR_EFFECTIVENESS" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"DETECTOR_FAILURE_REASON" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"AUTOMATIC_EXTINGUISHING_SYSTEM_PRESENT" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"AUTOMATIC_EXTINGUISHING_SYTEM_TYPE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"AUTOMATIC_EXTINGUISHING_SYTEM_PERFOMANCE" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"AUTOMATIC_EXTINGUISHING_SYTEM_FAILURE_REASON" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"NUMBER_OF_SPRINKLER_HEADS_OPERATING" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"SUPERVISOR_DISTRICT" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"NEIGHBORHOOD_DISTRICT" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP", 
	"POINT" VARCHAR2(300 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

--------------------------------------------------------
--  DDL for Index DIM_BATTALION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."DIM_BATTALION_PK" ON "HR"."DIM_BATTALION" ("ID_BATTALION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DIM_DISTRITO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."DIM_DISTRITO_PK" ON "HR"."DIM_DISTRITO" ("ID_DISTRITO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DIM_BATTALION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."DIM_BATTALION_PK" ON "HR"."DIM_BATTALION" ("ID_BATTALION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DIM_DISTRITO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."DIM_DISTRITO_PK" ON "HR"."DIM_DISTRITO" ("ID_DISTRITO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

--------------------------------------------------------
--  DDL for Package CARGA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "HR"."CARGA" AS 
    PROCEDURE DIMENSIONES;
    PROCEDURE FT_FIRE_INCIDENTS;
  /* TODO enter package declarations (types, exceptions, methods etc) here */ 

END CARGA;

/
--------------------------------------------------------
--  DDL for Package Body CARGA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "HR"."CARGA" AS

  PROCEDURE DIMENSIONES AS
  BEGIN  
  ---------------- DIM TIEMPO -----------
  
  EXECUTE IMMEDIATE 'TRUNCATE TABLE DIM_TIEMPO';
 
  EXECUTE IMMEDIATE 'INSERT INTO DIM_TIEMPO

    SELECT 
    TO_NUMBER(TO_CHAR(CurrDate,''YYYY'')||TO_CHAR(CurrDate,''MM'')||TO_CHAR(CurrDate,''DD'')) AS ID_TIEMPO,
    TO_DATE(TO_CHAR(CurrDate,''DD/MM/YYYY'')) AS FECHA,
    TO_CHAR(CurrDate,''Day'') AS DECRIPCION_DIA,
    TO_CHAR(CurrDate,''D'') AS NUMERO_DIA_SEMANA,
    TO_CHAR(CurrDate,''DD'') AS DIA,
    UPPER(TO_CHAR(CurrDate,''Mon'') || ''-'' || TO_CHAR(CurrDate,''YYYY'')) AS ID_MES,
    MAX(TO_NUMBER(TO_CHAR(CurrDate, ''DD''))) OVER (PARTITION BY TO_CHAR(CurrDate,''Mon'')) AS DIAS_DEL_MES,
    MAX(TO_DATE(TO_CHAR(CurrDate,''DD/MM/YYYY''))) OVER (PARTITION BY TO_DATE(TO_CHAR(CurrDate,''DD/MM/YYYY''))) as TERMINO_MES,
    RTRIM(TO_CHAR(CurrDate,''Month'')) || '' '' || TO_CHAR(CurrDate,''YYYY'') AS MES_A�O,
    TO_CHAR(CurrDate,''Month'') AS DESCRIPCION_MES,
    TO_CHAR(CurrDate,''MM'') AS MES,
    (''Q'' || UPPER(TO_CHAR(CurrDate,''Q'') || ''-'' || TO_CHAR(CurrDate,''YYYY''))) AS SEMESTRE_ID,
    COUNT(*) OVER (PARTITION BY TO_CHAR(CurrDate,''Q'')) AS DURACION_DIAS_SEMESTRE,
    MAX(CurrDate) OVER (PARTITION BY TO_CHAR(CurrDate,''QY'')) AS FECHA_TERMINO_SEMESTRE,
    TO_NUMBER(TO_CHAR(CurrDate,''Q'')) AS NUMERO_SEMSTRE,
    TO_CHAR(CurrDate,''YYYY'') AS ANHO,
    COUNT(*) OVER (PARTITION BY TO_CHAR(CurrDate,''YYYY'')) AS CANT_DIAS_ANHO,
    MAX(CurrDate) OVER (PARTITION BY TO_CHAR(CurrDate,''YYYY'')) as FECHA_TERMINO_ANHO
    FROM
    (SELECT level n,
    TO_DATE(''31/12/2002'',''DD/MM/YYYY'') + NUMTODSINTERVAL(level,''day'') CurrDate
    FROM dual
    CONNECT BY level <= 7700)
    ORDER BY CurrDate
  
    ';
 
  --------------DIM_BATTALION----------------
  
    EXECUTE IMMEDIATE '
     
     INSERT INTO DIM_BATTALION (id_battalion, battalion)
        WITH DATA AS 
    (
    SELECT DISTINCT 
    NVL(BATTALION,''SIN INFORMACION'') AS BATTALION
    FROM FIRE_INCIDENTS
    WHERE NVL(BATTALION,''SIN INFORMACION'') NOT IN (SELECT BATTALION FROM dim_battalion)
    )
    SELECT SQ_BATTALION.NEXTVAL, BATTALION
    FROM DATA
    ';
    
    --------------------- DIM DISTRITO ------------------
    
    EXECUTE IMMEDIATE '
    
    INSERT INTO DIM_DISTRITO (ID_DISTRITO, DISTRITO)
    WITH DATA AS 
    (
    SELECT DISTINCT 
    NVL(NEIGHBORHOOD_DISTRICT,''SIN INFORMACION'') AS NEIGHBORHOOD_DISTRICT
    FROM FIRE_INCIDENTS
    WHERE NVL(NEIGHBORHOOD_DISTRICT,''SIN INFORMACION'') NOT IN (SELECT DISTRITO FROM DIM_DISTRITO)
    )
    SELECT SQ_DISTRITO.NEXTVAL, NEIGHBORHOOD_DISTRICT
    FROM DATA
    ';
   
  COMMIT;  
  
  END DIMENSIONES;
  
  ----------------------- FT FIRE INCIDENTS ------------------

  PROCEDURE FT_FIRE_INCIDENTS AS
  BEGIN
  
    EXECUTE IMMEDIATE 'TRUNCATE TABLE FT_FIRE_INCIDENTS';
    
    EXECUTE IMMEDIATE '
  
    INSERT INTO FT_FIRE_INCIDENTS( 
    SELECT
    AUX.ID
    ,TIM.ID_TIEMPO AS ID_TIEMPO
    ,DIS.ID_DISTRITO
    ,BAT.ID_BATTALION
    ,TO_NUMBER(AUX.INCIDENT_NUMBER) AS INCIDENT_NUMBER
    ,TO_NUMBER(AUX.EXPOSURE_NUMBER) AS EXPOSURE_NUMBER
    ,AUX.ADDRESS
    ,TO_NUMBER(AUX.CALL_NUMBER) AS CALL_NUMBER
    ,TO_CHAR(TO_DATE(REPLACE(AUX.ALARM_DTTM,''T'','' ''),''YYYY-MM-DD HH24:MI:SS''), ''DD/MM/YYYY HH24:MI:SS'') AS ALARM_DTTM
    ,TO_CHAR(TO_DATE(REPLACE(AUX.ARRIVAL_DTTM,''T'','' ''),''YYYY-MM-DD HH24:MI:SS''), ''DD/MM/YYYY HH24:MI:SS'') AS ARRIVAL_DTTM
    ,TO_CHAR(TO_DATE(REPLACE(AUX.CLOSE_DTTM,''T'','' ''),''YYYY-MM-DD HH24:MI:SS''), ''DD/MM/YYYY HH24:MI:SS'') AS CLOSE_DTTM
    ,AUX.ZIPCODE
    ,AUX.STATION_AREA 
    ,AUX.BOX
    ,TO_NUMBER(SUPPRESSION_UNITS) AS SUPPRESSION_UNITS
    ,TO_NUMBER(SUPPRESSION_PERSONNEL) AS SUPPRESSION_PERSONNEL
    ,TO_NUMBER(EMS_UNITS) AS EMS_UNITS
    ,TO_NUMBER(EMS_PERSONNEL) AS EMS_PERSONNEL
    ,TO_NUMBER(OTHER_UNITS) AS OTHER_UNITS
    ,TO_NUMBER(OTHER_PERSONNEL) AS OTHER_PERSONNEL
    ,AUX.FIRST_UNIT_ON_SCENE
    ,NVL(REPLACE(ESTIMATED_PROPERTY_LOSS,''.'','',''),0) AS ESTIMATED_PROPERTY_LOSS
    ,NVL(REPLACE(ESTIMATED_CONTENTS_LOSS,''.'','',''),0) AS ESTIMATED_CONTENTS_LOSS
    ,NVL(TO_NUMBER(FIRE_FATALITIES),0) AS FIRE_FATALITIES
    ,NVL(TO_NUMBER(FIRE_INJURIES),0) AS FIRE_INJURIES
    ,NVL(TO_NUMBER(CIVILIAN_FATALITIES),0) AS CIVILIAN_FATALITIES
    ,NVL(TO_NUMBER(CIVILIAN_INJURIES),0) AS CIVILIAN_INJURIES
    ,NVL(TO_NUMBER(NUMBER_OF_ALARMS),0) AS NUMBER_OF_ALARMS
    ,AUX.PRIMARY_SITUATION
    ,AUX.MUTUAL_AID
    ,AUX.ACTION_TAKEN_PRIMARY
    ,AUX.ACTION_TAKEN_SECONDARY
    ,AUX.ACTION_TAKEN_OTHERR
    ,AUX.DETECTOR_ALERTED_OCCUPANTS
    ,AUX.PROPERTY_USE
    ,AUX.AREA_OF_FIRE_ORIGIN
    ,AUX.IGNITION_CAUSE
    ,AUX.IGNITION_FACTOR_PRIMARY
    ,AUX.IGNITION_FACTOR_SECONDARY
    ,AUX.HEAT_SOURCE
    ,AUX.ITEM_FIRST_IGNITED
    ,AUX.HUMAN_FACTORS_ASSOCIATED_WITH_IGNITION
    ,AUX.STRUCTURE_TYPE
    ,AUX.STRUCTURE_STATUS
    ,TO_NUMBER(AUX.FLOOR_OF_FIRE_ORIGIN) AS FLOOR_OF_FIRE_ORIGIN
    ,AUX.FIRE_SPREAD
    ,AUX.NO_FLAME_SPEAD
    ,TO_NUMBER(AUX.NUMBER_OF_FLOORS_WITH_MINIMUM_DAMAGE) AS NUMBER_OF_FLOORS_WITH_MINIMUM_DAMAGE
    ,TO_NUMBER(AUX.NUMBER_OF_FLOORS_WITH_SIGNIFICANT_DAMAGE) AS NUMBER_OF_FLOORS_WITH_SIGNIFICANT_DAMAGE
    ,TO_NUMBER(AUX.NUMBER_OF_FLOORS_WITH_HEAVY_DAMAGE) AS NUMBER_OF_FLOORS_WITH_HEAVY_DAMAGE
    ,TO_NUMBER(AUX.NUMBER_OF_FLOORS_WITH_EXTREME_DAMAGE) AS NUMBER_OF_FLOORS_WITH_EXTREME_DAMAGE
    ,AUX.DETECTORS_PRESENT
    ,AUX.DETECTOR_TYPE
    ,AUX.DETECTOR_OPERATION
    ,AUX.DETECTOR_EFFECTIVENESS
    ,AUX.DETECTOR_FAILURE_REASON
    ,AUX.AUTOMATIC_EXTINGUISHING_SYSTEM_PRESENT
    ,AUX.AUTOMATIC_EXTINGUISHING_SYTEM_TYPE
    ,AUX.AUTOMATIC_EXTINGUISHING_SYTEM_PERFOMANCE
    ,AUX.AUTOMATIC_EXTINGUISHING_SYTEM_FAILURE_REASON
    ,TO_NUMBER(AUX.NUMBER_OF_SPRINKLER_HEADS_OPERATING) AS NUMBER_OF_SPRINKLER_HEADS_OPERATING
    ,AUX.SUPERVISOR_DISTRICT
    ,AUX.NEIGHBORHOOD_DISTRICT
    ,AUX.POINT
FROM
    FIRE_INCIDENTS AUX,
    DIM_TIEMPO TIM,
    DIM_DISTRITO DIS,
    DIM_BATTALION BAT
WHERE
    TO_NUMBER(SUBSTR(AUX.INCIDENT_DATE,0,4)||SUBSTR(AUX.INCIDENT_DATE,6,2)||SUBSTR(AUX.INCIDENT_DATE,9,2)) = TIM.ID_TIEMPO
    AND NVL(AUX.NEIGHBORHOOD_DISTRICT,''SIN INFORMACION'') = dis.distrito
    AND NVL(AUX.BATTALION,''SIN INFORMACION'') = BAT.BATTALION
    
    )';
    
  COMMIT;
  END FT_FIRE_INCIDENTS;

END CARGA;

/
--------------------------------------------------------
--  Constraints for Table DIM_BATTALION
--------------------------------------------------------

  ALTER TABLE "HR"."DIM_BATTALION" MODIFY ("ID_BATTALION" NOT NULL ENABLE);
  ALTER TABLE "HR"."DIM_BATTALION" ADD CONSTRAINT "DIM_BATTALION_PK" PRIMARY KEY ("ID_BATTALION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIM_DISTRITO
--------------------------------------------------------

  ALTER TABLE "HR"."DIM_DISTRITO" MODIFY ("ID_DISTRITO" NOT NULL ENABLE);
  ALTER TABLE "HR"."DIM_DISTRITO" ADD CONSTRAINT "DIM_DISTRITO_PK" PRIMARY KEY ("ID_DISTRITO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FT_FIRE_INCIDENTS
--------------------------------------------------------

  ALTER TABLE "HR"."FT_FIRE_INCIDENTS" MODIFY ("ID_DISTRITO" NOT NULL ENABLE);
  ALTER TABLE "HR"."FT_FIRE_INCIDENTS" MODIFY ("ID_BATTALION" NOT NULL ENABLE);
  
  
  
  
  
  ---------------------------------------------------------------------
--  JOB DE CARGA PROGRAMADO PARA EJECUCION TODOS LOS DIAS 06:00 AM
-----------------------------------------------------------------------


DECLARE

BEGIN
    DBMS_SCHEDULER.CREATE_JOB (
            job_name => '"HR"."CARGA_MODELO"',
            job_type => 'PLSQL_BLOCK',
            job_action => 'BEGIN

CARGA.DIMENSIONES();
CARGA.FT_FIRE_INCIDENTS();

END;',
            number_of_arguments => 0,
            start_date => TO_TIMESTAMP_TZ('2023-10-22 06:00:00.000000000 AMERICA/SANTIAGO','YYYY-MM-DD HH24:MI:SS.FF TZR'),
            repeat_interval => 'FREQ=DAILY;BYTIME=060000;BYDAY=MON,TUE,WED,THU,FRI,SAT,SUN',
            end_date => NULL,
            enabled => FALSE,
            auto_drop => FALSE,
            comments => '');

         
     
 
    DBMS_SCHEDULER.SET_ATTRIBUTE( 
             name => '"HR"."CARGA_MODELO"', 
             attribute => 'store_output', value => TRUE);
    DBMS_SCHEDULER.SET_ATTRIBUTE( 
             name => '"HR"."CARGA_MODELO"', 
             attribute => 'logging_level', value => DBMS_SCHEDULER.LOGGING_OFF);
             
END;

