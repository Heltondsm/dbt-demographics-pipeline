{{ config(materialized='view') }}

-- Population française de référence (INSEE 2023), par région, tranche d'âge et genre.
-- Sert de base de comparaison pour mesurer la sur/sous-représentation par région.

select
    region,
    age_group,
    gender,
    population
from {{ ref('population_insee') }}
