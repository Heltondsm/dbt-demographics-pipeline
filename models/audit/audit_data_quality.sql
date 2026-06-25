{{ config(materialized='view') }}

-- Contrôle de qualité source -> final, sans rien supprimer : on mesure la complétude.
-- Permet de quantifier précisément l'impact des valeurs manquantes (transparence).

with raw as (
    select * from {{ ref('students_raw') }}
)

select
    count(*)                                                            as lignes_source,
    count(distinct user_id)                                            as etudiants_distincts,
    count(*) filter (where gender is not null and trim(gender) <> '')  as genre_renseigne,
    count(*) filter (where gender is null or trim(gender) = '')        as genre_non_renseigne,
    round(100.0 * count(*) filter (where gender is null or trim(gender) = '') / count(*), 1)
                                                                       as pct_genre_non_renseigne,
    0                                                                  as lignes_supprimees
from raw
