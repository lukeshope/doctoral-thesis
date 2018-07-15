#!/bin/bash

echo "Generating test files..."
echo ""
hipims-mb --name="Dam break against an obstacle" \
          --source=laboratory \
          --directory="model-data" \
          --resolution=0.02 \
          --time="30 seconds" \
          --output-frequency="0.2 second" \
          --scheme=muscl-hancock

echo "Changing device number..."
echo ""
sed -i model-data/simulation.xml -e 's/deviceNumber="1"/deviceNumber="1"/g'

echo "Running test..."
echo ""
start /g/Doctorate/HiPims/hipims.exe --config-file=model-data/simulation.xml
