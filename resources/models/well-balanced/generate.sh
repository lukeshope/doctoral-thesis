#!/bin/bash

echo "Generating test files..."
echo ""
hipims-mb --name="Lake at rest" \
          --source=analytical \
          --directory="model-data/" \
          --resolution=2 \
          --time="10 minutes" \
          --output-frequency="10 minutes" \
          --manning=0.00 \
          --scheme=godunov \
          --width=1000 \
          --height=1000 \
          --constants="a=2000,b=5000,n=0.0,i=100,s=50"

echo "Changing device number..."
echo ""
sed -i model-data/simulation.xml -e 's/deviceNumber="1"/deviceNumber="1"/g'

echo "Running test..."
echo ""
start /g/Doctorate/HiPims/hipims.exe --config-file=model-data/simulation.xml
