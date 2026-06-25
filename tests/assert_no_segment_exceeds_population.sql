-- Test métier : aucun segment ne peut compter plus d'étudiants que d'habitants.
-- S'il en existe un, c'est une incohérence (erreur de jointure ou de données).

select *
from {{ ref('mart_students_vs_population') }}
where nb_students > population
