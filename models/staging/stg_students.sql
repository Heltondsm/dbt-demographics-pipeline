{{ config(materialized='view') }}

-- Nettoyage des inscriptions.
-- Le genre manquant est gardé en 'Non renseigné' plutôt que supprimé (sinon on perd 27 % des lignes).
-- user_id est déjà pseudonymisé : je le garde ici juste pour tester la clé, jamais dans les marts.

with source as (
    select * from {{ ref('students_raw') }}
)

select
    user_id,
    age_group,
    coalesce(nullif(trim(gender), ''), 'Non renseigné') as gender,
    region,
    year_path_started
from source
