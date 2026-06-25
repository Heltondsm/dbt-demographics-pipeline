{{ config(materialized='table') }}

-- Table d'analyse : nombre d'inscriptions par profil sociodémographique et par année.
-- Le genre 'Non renseigné' est conservé ici (vision interne complète).

select
    year_path_started,
    age_group,
    gender,
    region,
    count(*) as nb_students
from {{ ref('stg_students') }}
group by
    year_path_started,
    age_group,
    gender,
    region
