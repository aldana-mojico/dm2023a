LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202102_envios_s2`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202102/ZZ6917/pred_01_115_s211403_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202102_envios_s3`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202102/ZZ6917/pred_01_115_s311453_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202102_envios_s4`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202102/ZZ6917/pred_01_115_s411473_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202102_envios_s5`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202102/ZZ6917/pred_01_115_s511457_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202102_envios_s6`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202102/ZZ6917/pred_01_115_s611441_cortes.csv']  
)
;

----

create table `itba-am-my-project.itba_dm.m202102_envios_stotal` as
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202102' as modelo
  , 2 as semilla
FROM
  `itba-am-my-project.itba_dm.m202102_envios_s2`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202102' as modelo
  , 3 as semilla
FROM
  `itba-am-my-project.itba_dm.m202102_envios_s3`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202102' as modelo
  , 4 as semilla
FROM
  `itba-am-my-project.itba_dm.m202102_envios_s4`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202102' as modelo
  , 5 as semilla
FROM
  `itba-am-my-project.itba_dm.m202102_envios_s5`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202102' as modelo
  , 6 as semilla
FROM
  `itba-am-my-project.itba_dm.m202102_envios_s6`
group by 1,2
----
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202103_envios_s2`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202103/ZZ6917/pred_01_003_s211403_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202103_envios_s3`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202103/ZZ6917/pred_01_003_s311453_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202103_envios_s4`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202103/ZZ6917/pred_01_003_s411473_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202103_envios_s5`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202103/ZZ6917/pred_01_003_s511457_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202103_envios_s6`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202103/ZZ6917/pred_01_003_s611441_cortes.csv']  
)
;
----

create table `itba-am-my-project.itba_dm.m202103_envios_stotal` as
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202103' as modelo
  , 2 as semilla
FROM
  `itba-am-my-project.itba_dm.m202103_envios_s2`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202103' as modelo
  , 3 as semilla
FROM
  `itba-am-my-project.itba_dm.m202103_envios_s3`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202103' as modelo
  , 4 as semilla
FROM
  `itba-am-my-project.itba_dm.m202103_envios_s4`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202103' as modelo
  , 5 as semilla
FROM
  `itba-am-my-project.itba_dm.m202103_envios_s5`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202103' as modelo
  , 6 as semilla
FROM
  `itba-am-my-project.itba_dm.m202103_envios_s6`
group by 1,2

---

LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202104_envios_s2`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202104/ZZ6917/pred_01_081_s211403_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202104_envios_s3`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202104/ZZ6917/pred_01_081_s311453_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202104_envios_s4`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202104/ZZ6917/pred_01_081_s411473_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202104_envios_s5`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202104/ZZ6917/pred_01_081_s511457_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202104_envios_s6`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202104/ZZ6917/pred_01_081_s611441_cortes.csv']  
)
;
--
create table `itba-am-my-project.itba_dm.m202104_envios_stotal` as
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202104' as modelo
  , 2 as semilla
FROM
  `itba-am-my-project.itba_dm.m202104_envios_s2`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202104' as modelon_envio
  , 3 as semilla
FROM
  `itba-am-my-project.itba_dm.m202104_envios_s3`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202104' as modelo
  , 4 as semilla
FROM
  `itba-am-my-project.itba_dm.m202104_envios_s4`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202104' as modelo
  , 5 as semilla
FROM
  `itba-am-my-project.itba_dm.m202104_envios_s5`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202104' as modelo
  , 6 as semilla
FROM
  `itba-am-my-project.itba_dm.m202104_envios_s6`
group by 1,2

--

LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202103_envios_s2`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202103_HFijos/ZZ6917/pred_01_115_s211403_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202103_envios_s3`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202103_HFijos/ZZ6917/pred_01_115_s311453_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202103_envios_s4`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202103_HFijos/ZZ6917/pred_01_115_s411473_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202103_envios_s5`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202103_HFijos/ZZ6917/pred_01_115_s511457_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202103_envios_s6`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202103_HFijos/ZZ6917/pred_01_115_s611441_cortes.csv']  
)
;
---
create or replace table `itba-am-my-project.itba_dm.m202103_HFijos_envios_stotal` as
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202103_HF' as modelo
  , 2 as semilla
FROM
  `itba-am-my-project.itba_dm.m202103_envios_s2`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202103_HF' as modelon_envio
  , 3 as semilla
FROM
  `itba-am-my-project.itba_dm.m202103_envios_s3`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202103_HF' as modelo
  , 4 as semilla
FROM
  `itba-am-my-project.itba_dm.m202103_envios_s4`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202103_HF' as modelo
  , 5 as semilla
FROM
  `itba-am-my-project.itba_dm.m202103_envios_s5`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202103_HF' as modelo
  , 6 as semilla
FROM
  `itba-am-my-project.itba_dm.m202103_envios_s6`
group by 1,2

---
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202104_envios_s2`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202104_HFijos/ZZ6917/pred_01_115_s211403_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202104_envios_s3`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202104_HFijos/ZZ6917/pred_01_115_s311453_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202104_envios_s4`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202104_HFijos/ZZ6917/pred_01_115_s411473_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202104_envios_s5`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202104_HFijos/ZZ6917/pred_01_115_s511457_cortes.csv']  
)
;
LOAD DATA OVERWRITE `itba-am-my-project.itba_dm.m202104_envios_s6`
FROM FILES (
  field_delimiter = '\t',
  format = 'CSV',
  uris = ['gs://itba-aldanamojico/exp202104_HFijos/ZZ6917/pred_01_115_s611441_cortes.csv']  
)
;
---
create or replace table `itba-am-my-project.itba_dm.m202104_HFijos_envios_stotal` as
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202104_HF' as modelo
  , 2 as semilla
FROM
  `itba-am-my-project.itba_dm.m202104_envios_s2`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202104_HF' as modelon_envio
  , 3 as semilla
FROM
  `itba-am-my-project.itba_dm.m202104_envios_s3`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202104_HF' as modelo
  , 4 as semilla
FROM
  `itba-am-my-project.itba_dm.m202104_envios_s4`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202104_HF' as modelo
  , 5 as semilla
FROM
  `itba-am-my-project.itba_dm.m202104_envios_s5`
group by 1,2
UNION ALL
SELECT 
  foto_mes
  , n_envio
  , max(ganancia_acumulada) ganancia_acumulada
  , '202104_HF' as modelo
  , 6 as semilla
FROM
  `itba-am-my-project.itba_dm.m202104_envios_s6`
group by 1,2
;

create or replace table `itba-am-my-project.itba_dm.mtotal_envios_stotal` as
SELECT * FROM `itba-am-my-project.itba_dm.m202102_envios_stotal`
UNION ALL
SELECT * FROM `itba-am-my-project.itba_dm.m202103_envios_stotal`
UNION ALL
SELECT * FROM `itba-am-my-project.itba_dm.m202104_envios_stotal`
UNION ALL
SELECT * FROM `itba-am-my-project.itba_dm.m202103_HFijos_envios_stotal`
UNION ALL
SELECT * FROM `itba-am-my-project.itba_dm.m202104_HFijos_envios_stotal`


SELECT * FROM `itba-am-my-project.itba_dm.mtotal_envios_stotal`