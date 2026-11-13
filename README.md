# ⚙️ Pipeline dbt : profil des apprenants et représentativité territoriale

![dbt](https://img.shields.io/badge/dbt--core-1.11-FF694B?style=flat-square&logo=data:image/svg%2bxml;base64,PHN2ZyBmaWxsPSIjZmZmZmZmIiByb2xlPSJpbWciIHZpZXdCb3g9IjAgMCAyNCAyNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48dGl0bGU+ZGJ0PC90aXRsZT48cGF0aCBkPSJNMTcuOTAwNCA5LjM3NjNhOC4xNDg4IDguMTQ4OCAwIDAgMC0zLjA0MjEtMy4xMjA2bDEuNzcwOC44Mzg1YTEwLjI4NzQgMTAuMjg3NCAwIDAgMSAzLjc0IDMuMDAwN2wzLjIzNC01LjkyOTVhMi44NTQ2IDIuODU0NiAwIDAgMC0uMDYxMS0yLjk2MDRDMjIuNzU2Ni4wMzcxIDIxLjIxMTItLjM0MDkgMTkuOTc1NC4zMzI3bC01Ljg3NDkgMy4yMTAxYTQuMzYxMiA0LjM2MTIgMCAwIDEtNC4xNzYxIDBMNC4xNzY5LjQwOGEyLjg1NDUgMi44NTQ1IDAgMCAwLTIuOTU5Mi4wNjMyYy0xLjE2NzMuNzg1My0xLjU0NTIgMi4zMy0uODcyMyAzLjU2NTVMMy41NSA5LjkxMDZhNC4zNjEyIDQuMzYxMiAwIDAgMSAwIDQuMTc3MmwtMy4xMjcyIDUuNzQzYTIuODYgMi44NiAwIDAgMCAuMDg1IDIuOTk3NGMuNzk0IDEuMTQzOCAyLjMyMjUgMS41MDU0IDMuNTQ0OC44Mzg1bDYuMDU4MS0zLjMwNDlhMTAuMjg3NyAxMC4yODc3IDAgMCAxLTMuMDA1MS0zLjc0NTRsLS44Mzc0LTEuNzcwOGE4LjE0OCA4LjE0OCAwIDAgMCAzLjEyMDYgMy4wNDIxbDEwLjU4MzIgNS43NzljMS4yMjEzLjY2NiAyLjc0ODEuMzA1NSAzLjU0MjYtLjgzNjNhMi44Njk5IDIuODY5OSAwIDAgMCAuMDc5Ni0zLjAwMThMMTcuOTAwNCA5LjM3NjN6bTMuMzgwMS03LjczNTFjLjYwMjIgMCAxLjA5MDQuNDg4MiAxLjA5MDQgMS4wOTA0cy0uNDg4MiAxLjA5MDQtMS4wOTA0IDEuMDkwNC0xLjA5MDQtLjQ4ODItMS4wOTA0LTEuMDkwNC40ODgyLTEuMDkwNCAxLjA5MDQtMS4wOTA0ek0yLjc0NDIgMy44MjJjLS42MDIyIDAtMS4wOTA0LS40ODgyLTEuMDkwNC0xLjA5MDRzLjQ4ODItMS4wOTA0IDEuMDkwNC0xLjA5MDQgMS4wOTA0LjQ4ODIgMS4wOTA0IDEuMDkwNFMzLjM0NjQgMy44MjIgMi43NDQyIDMuODIyem0wIDE4LjUzNjNjLS42MDIyIDAtMS4wOTA0LS40ODgyLTEuMDkwNC0xLjA5MDQgMC0uNjAyMi40ODgyLTEuMDkwNCAxLjA5MDQtMS4wOTA0czEuMDkwNC40ODgyIDEuMDkwNCAxLjA5MDRjMCAuNjAyMi0uNDg4MiAxLjA5MDQtMS4wOTA0IDEuMDkwNHptMTAuMzU4NS0xMS40NDg5Yy0xLjIwMDgtLjAwMzUtMi4xNzcuOTY3Mi0yLjE4MDUgMi4xNjc5YTIuMTczOCAyLjE3MzggMCAwIDAgLjcwNTIgMS42MDkxYy0xLjQ4NzItLjIwOTEtMi41MjM0LTEuNTg0My0yLjMxNDItMy4wNzE2LjIwOTEtMS40ODcyIDEuNTg0My0yLjUyMzQgMy4wNzE2LTIuMzE0MmEyLjcxOTQgMi43MTk0IDAgMCAxIDIuMzE0MiAyLjMxNDIgMi4xNjIzIDIuMTYyMyAwIDAgMC0xLjU5NjMtLjcwNTR6bTguMTc3OCAxMS40NDg5Yy0uNjAyMiAwLTEuMDkwNC0uNDg4Mi0xLjA5MDQtMS4wOTA0IDAtLjYwMjIuNDg4Mi0xLjA5MDQgMS4wOTA0LTEuMDkwNHMxLjA5MDQuNDg4MiAxLjA5MDQgMS4wOTA0YzAgLjYwMjItLjQ4ODIgMS4wOTA0LTEuMDkwNCAxLjA5MDR6Ii8+PC9zdmc+)
![Snowflake](https://img.shields.io/badge/Snowflake-prod-29B5E8?style=flat-square&logo=snowflake&logoColor=white)
![DuckDB](https://img.shields.io/badge/DuckDB-local-FFF000?style=flat-square&logo=duckdb&logoColor=black)
![Tests](https://img.shields.io/badge/26_tests-passing-22c55e?style=flat-square)
![Status](https://img.shields.io/badge/Status-Completed-22c55e?style=flat-square)

Pipeline de transformation dbt qui analyse l'évolution du profil (âge, genre, région) des étudiants des parcours Data d'une plateforme de formation, sur 4 ans, et le compare à la population française (données INSEE). Conçu sur Snowflake, **reproductible en local avec DuckDB en une seule commande**.

---

## 📖 Contexte

Une plateforme de formation en ligne veut mieux connaître ses étudiants des parcours Data et suivre l'évolution de leur profil, pour nourrir sa réflexion sur l'accessibilité et l'égalité des chances.

**La mission :** préparer et fiabiliser les données internes, les enrichir avec une source publique (INSEE), et produire une table d'analyse exploitable et documentée.

---

## 🎯 Objectifs

- Nettoyer et structurer les inscriptions (couche staging)
- Agréger le profil par année, âge, genre et région (couche mart)
- Comparer les étudiants à la population française (taux pour 10 000 habitants)
- Garantir la fiabilité des données par des tests automatisés

---

## 🏗️ Architecture

```mermaid
flowchart LR
  R1[(students_raw)] --> S1[stg_students]
  R2[(population_insee)] --> S2[stg_population_insee]
  S1 --> M1[mart_students]
  M1 --> M2[mart_students_vs_population]
  S2 --> M2
  R1 -.audit.-> Q[audit_data_quality]
```

| Couche | Modèle | Rôle |
|---|---|---|
| staging | `stg_students` | nettoyage des inscriptions |
| staging | `stg_population_insee` | population INSEE de référence |
| marts | `mart_students` | agrégation par année / âge / genre / région |
| marts | `mart_students_vs_population` | croisement INSEE (taux pour 10 000 hab) |
| audit | `audit_data_quality` | contrôle de complétude source vers final |

---

## 🔍 Résultats clés

### 1️⃣ Volume
**4 647 inscriptions** sur 2022-2025 : une baisse jusqu'en 2024, puis une reprise en 2025.

### 2️⃣ Genre
**À peine 1 femme sur 3**, et c'est stable sur les 4 ans.

### 3️⃣ Âge
Public en reconversion : **6 inscrits sur 10 ont entre 25 et 39 ans**.

### 4️⃣ Région
Forte concentration : à population égale, l'**Île-de-France compte 2,3 fois plus d'étudiants** que le reste de la France.

---

## 🧪 Qualité et choix techniques

**Valeurs manquantes.** Le genre manque sur 27 % des lignes. Plutôt que de supprimer ces lignes et perdre un quart des données, je les conserve avec une valeur `Non renseigné`. Le modèle `audit_data_quality` mesure la complétude et confirme qu'aucune ligne n'est supprimée.

**Grain.** Un étudiant peut démarrer un parcours sur plusieurs années. La clé unique n'est donc pas l'identifiant seul, mais l'identifiant + l'année, vérifié par `unique_combination_of_columns`.

**Comparaison INSEE.** Je ne croise que les hommes et les femmes (l'INSEE ne distingue que ces deux modalités). Les `Non renseigné` restent dans l'analyse interne mais sortent du calcul de taux.

**RGPD.** Les identifiants sont pseudonymisés et n'apparaissent jamais dans les tables finales (tout est agrégé).

**Tests (26).** `not_null`, `accepted_values`, plages de valeurs, unicité de clé composite, et un test métier (aucun segment ne peut compter plus d'étudiants que d'habitants).

---

## ▶️ Reproduire en local

```bash
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
dbt deps
dbt build --profiles-dir .
```

Cela charge les données, construit les modèles et exécute les 26 tests. La base `demographics.duckdb` est générée localement, sans aucune infrastructure cloud.

---

## 📂 Structure du projet

```
models/
  staging/   stg_students · stg_population_insee
  marts/     mart_students · mart_students_vs_population
  audit/     audit_data_quality
seeds/       students_raw · population_insee
tests/       assert_no_segment_exceeds_population
```

---

## 🛠️ Technologies utilisées

- **dbt-core** : modèles SQL en couches, tests, documentation des modèles
- **Snowflake** : entrepôt de données cloud (production)
- **DuckDB** : exécution locale, sans infrastructure
- **dbt_utils** : tests d'unicité sur clé composite
- **SQL**

> Données pseudonymisées. Source de référence : INSEE, population 2023.

---

## 📈 Compétences démontrées

### Modélisation des données
- ✅ Architecture en couches staging, marts et audit, un rôle par modèle
- ✅ Grain défini et vérifié : la clé unique est l'identifiant + l'année, pas l'identifiant seul
- ✅ Tables et colonnes décrites dans les fichiers dbt (13 descriptions)

### Qualité des données
- ✅ 26 tests automatisés : `not_null`, `accepted_values`, plages, unicité, et un test métier
- ✅ Valeurs manquantes conservées et mesurées (27 % du genre), aucune ligne supprimée
- ✅ Modèle d'audit qui contrôle la complétude de la source au résultat

### Reproductibilité
- ✅ Conçu sur Snowflake, rejoué en local avec DuckDB en une commande : mêmes modèles, mêmes tests
- ✅ Identifiants pseudonymisés, tables finales agrégées (RGPD)

---

## 📧 Contact

**Helton Dos Santos Moreira**
Data Analyst | 10 ans d'expérience business (retail et e-commerce)

- 📧 Email : heltonmail8@gmail.com
- 💼 LinkedIn : [in/helton-dsm-data](https://linkedin.com/in/helton-dsm-data)
- 🐙 GitHub : [Heltondsm](https://github.com/Heltondsm)
- 🌐 Portfolio : [heltondsm.github.io](https://heltondsm.github.io/)

---

## 🔗 Autres projets

- [Pilotage financier d'une PME : trésorerie, impayés et comparaison au secteur](https://github.com/Heltondsm/pilotage-financier-pme), Airflow, dbt, BigQuery et Power BI, prévision de trésorerie à 4,8 % du réel à 30 jours, 72 contrôles dbt
- [CRM data et agents IA : centraliser opportunités, contacts et échanges](https://github.com/Heltondsm/crm-data-agents-ia), PostgreSQL alimenté par des API, collecte Python planifiée, opportunités notées par IA, testé automatiquement à chaque push
- [Étude de marché par clustering : choisir les pays où exporter de la volaille bio](https://github.com/Heltondsm/python-etude-marche-clustering-pays), ACP, CAH et k-means sur 170 pays, 4 familles, 3 marchés prioritaires
- [Tableau de bord Power BI : portefeuille de projets](https://github.com/Heltondsm/powerbi-portefeuille-projets-rls), 104 projets dans 52 pays, sécurité au niveau des lignes sur 3 rôles, 25 mesures DAX
- [Audit de la qualité des données d'un catalogue e-commerce](https://github.com/Heltondsm/python-audit-donnees-catalogue), 3 sources réconciliées, 9 anomalies, 276 859 € de stock valorisé
- [Tendances du streaming musical : tests statistiques et Prophet](https://github.com/Heltondsm/analyse-streaming-musical), 114 000 morceaux, 3 tests avec leur taille d'effet, prévision à 6 mois

---

**Projet réalisé en juin 2026**

