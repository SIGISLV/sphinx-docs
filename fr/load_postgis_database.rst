*******************************************************************
Alimenter la base de données PostGIS avec des données géographiques
*******************************************************************

Il y a plusieurs manières d'alimenter la base de données. Choisir
une des façons suivantes:

- Fichier OpenStreetMap "Planet"
  
  Le fichier OpenStreetMap "Planet" est une copie de la base de données mondiale.
  Ce fichier est volumineux et peut par conséquent engendrer quelques problèmes informatiques (également pour les nouveaux utilisateurs).

- Fichier OpenStreetMap "Extract"

  Les fichiers OpenStreetMap "Extract" contiennent les données OpenStreetMap
  pour une région donnée, souvent un pays, un état ou une région. Ils sont
  plsu simple d'utilisation que le fichier "Planet".

- OpenStreetMap API Bounding Box

  De plus petites zones géographiques, à l'échelle d'une ville par exemple, peuvent 
  être obtenues l'API OpenStreetMap.

- Postgresql dump file

  
OpenStreetMap Planet File
=========================

Aquire the complete OpenStreetMap database, also called the "planet
file" and load it in to the PostGIS database.

Aquire the Planet File
----------------------

A new "planet" file is published approximately each week. The mirror
and archives of the "planet" files are found at
http://planet.openstreetmap.org/ . In July 2010 the planet file was
about 10GB in length. If you are not interested in the entire planet
you can choose to download an extract file instead.

Install the Planet File
-----------------------

Using osm2pgsql or another tool.


OpenStreetMap Extract File
==========================

OpenStreetMap Extract files typically include a single country, state
or province.  They are published periodically by various sites
including

- http://download.geofabrik.de/osm/
- http://download.cloudmade.com/
- others

Aquire the Extract File
-----------------------







