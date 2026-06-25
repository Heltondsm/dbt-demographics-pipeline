{{ config(materialized='table') }}

-- Croisement avec l'INSEE pour mesurer la représentation par région,
-- à population égale (taux pour 10 000 habitants).
-- Choix assumé : on ne garde que M / F, car l'INSEE ne distingue que ces deux
-- modalités. Les 'Non renseigné' restent dans mart_students (analyse interne)
-- mais ne peuvent pas être rapportés à une population de référence.

with students as (
    select * from {{ ref('mart_students') }}
    where gender in ('M', 'F')
),

insee as (
    select * from {{ ref('stg_population_insee') }}
)

select
    s.year_path_started,
    s.age_group,
    s.gender,
    s.region,
    s.nb_students,
    p.population,
    round(s.nb_students * 10000.0 / p.population, 2) as taux_pour_10000_hab
from students s
left join insee p
    on  s.age_group = p.age_group
    and s.gender    = p.gender
    and s.region    = p.region
