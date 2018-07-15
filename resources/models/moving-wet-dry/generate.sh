#!/bin/bash

echo "Generating test files..."
echo ""
hipims-mb --name="Sloshing Parabolic Bowl" \
          --source=analytical \
          --directory="model-data" \
          --resolution=10 \
          --time=3600s \
          --output-frequency=300s \
          --manning=0.00 \
          --scheme=muscl-hancock \
          --width=10000 \
          --height=10000 \
          --constants="a=3000,h0=10,B=5"

echo "Changing device number..."
echo ""
sed -i model-data/simulation.xml -e 's/deviceNumber="1"/deviceNumber="1"/g'

echo "Running test..."
echo ""
start /g/Doctorate/HiPims/hipims.exe --config-file=model-data/simulation.xml
