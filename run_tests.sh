#!/bin/bash

set -e

echo "======================================"
echo "Creando entorno virtual"
echo "======================================"

python3 -m venv .venv

echo "======================================"
echo "Activando entorno virtual"
echo "======================================"

source .venv/bin/activate

echo "======================================"
echo "Actualizando pip"
echo "======================================"

python -m pip install --upgrade pip

echo "======================================"
echo "Instalando dependencias"
echo "======================================"

pip install -r requirements.txt

echo "======================================"
echo "Ejecutando pruebas con pytest"
echo "======================================"

mkdir -p reports

pytest tests/ \
    --junitxml=reports/test-results.xml \
    --html=reports/test-report.html

echo "======================================"
echo "Pruebas finalizadas"
echo "Resultados disponibles en reports/"
echo "======================================"