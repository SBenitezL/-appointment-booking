#!/bin/bash

# Array de carpetas del proyecto
projects=("configuration_server" "discovery_service")

# Iterar sobre cada carpeta del proyecto
for project in "${projects[@]}"; do
  echo "Eliminando imagen Docker para $project si existe"
  docker rmi -f "$project" || true

  echo "Ejecutando mvn clean package -DskipTests en $project"
  (cd "$project" && mvn clean package -DskipTests)

  echo "Construyendo imagen Docker para $project"
  (cd "$project" && docker build -t "$project" .)

  echo "Ruta actual: $(pwd)"
done