Le fichier `universe.sql` est un script de dump PostgreSQL pour une base de données appelée `universe`. Voici un résumé de son contenu :

### Métadonnées :
- **Version PostgreSQL** : 12.17
- **Propriétaire** : `freecodecamp`

### Structure de la base de données :
1. **Tables principales :**
   - `blackhole` : Contient des informations sur les trous noirs (id, nom, distance de la Terre, âge, etc.).
   - `galaxy` : Contient des informations sur les galaxies (id, nom, distance de la Terre, âge, etc.).
   - `moon` : Contient des informations sur les lunes (id, nom, distance de la Terre, âge, etc.).
   - `planet` : Contient des informations sur les planètes (id, nom, distance de la Terre, âge, présence de vie, etc.).
   - `star` : Contient des informations sur les étoiles (id, nom, distance de la Terre, âge, etc.).

2. **Contraintes et relations :**
   - Chaque table a des clés primaires et des contraintes d'unicité sur les noms.
   - Des relations existent entre :
     - `blackhole` et `galaxy` (via `galaxy_id`).
     - `moon` et `planet` (via `planet_id`).
     - `planet` et `star` (via `star_id`).
     - `star` et `galaxy` (via `galaxy_id`).

3. **Séquences :**
   - Une séquence est associée à chaque table pour la génération automatique des ID.

### Données pré-remplies :
- Des données initiales sont insérées dans chaque table, comme :
  - `blackhole` : `Sagittarius A*`, `V616 Monocerotis`, `Cygnus X-1`.
  - `galaxy` : `Milky Way`, `Andromeda`, `Triangulum`.
  - `moon` : `Moon`, `Phobos`, `Deimos`.
  - `planet` : `Earth`, `Mars`, `Jupiter`.
  - `star` : `Sun`, `Proxima Centauri`, `Sirius`.

Ce fichier peut être utilisé pour recréer une base de données avec une structure et des données initiales sur des entités astronomiques.
