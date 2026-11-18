#!/bin/bash

echo "🏫 SAGE Education - Institutional Management"
echo "Version: 2.0.x"
echo "Module: AMS, SMS & EIS"  
echo "Author: Zacarias Juliano Capingala *Família Pequenino Capingala*"

# Path to the virtual environment
VENV_PATH="path/to/your/virtual/environment"

# Activate the virtual environment
source "$VENV_PATH/bin/activate"

# Start the Tryton server
trytond -c "$VENV_PATH/trytond.conf"