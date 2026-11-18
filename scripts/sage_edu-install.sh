#!/bin/bash

echo "🏫 SAGE Education - Institutional Management"
echo "Version: 2.0.x"
echo "Module: AMS, SMS & EIS"  
echo "Author: Zacarias Juliano Capingala *Família Pequenino Capingala*"

echo "🚀 Install SAGE Education"


# -----------------------------
# 1. Install Dependencies
# -----------------------------
echo "📦 Install Dependencies"
sudo apt update && sudo apt upgrade -y
sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
    libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl \
    libreoffice


# -----------------------------
# 2. Install PostgreSQL
# -----------------------------
echo "📦 Install PostgreSQL"
sudo apt install -y postgresql postgresql-contrib

echo "👤 Create de user profile and the data base"

sudo -u postgres createuser -s sage_edu
sudo -u postgres psql -c "ALTER ROLE sage_edu WITH PASSWORD sage_edu"
sudo -u postgres psql -c "DROP DATABASE IF EXISTS sage_edu;"
sudo -u postgres psql -c "CREATE DATABASE sage_edu WITH ENCODING 'UTF8' TEMPLATE template1;"


# -----------------------------
# 3. Install Python + Config Virtualenv
# -----------------------------
echo "🐍 Install Python + Config Virtualenv"
sudo apt install -y python3 python3-venv python3-pip

#cd ~
python3 -m venv sage_edu_v2
cd sage_edu_v2
source ./bin/activate


# -----------------------------
# 4. Install SAGE Edu
# -----------------------------
echo "📚 Install SAGE Edu"
pip install --upgrade pip
pip install psycopg-binary
pip install psycopg_pool
pip install psycopg
pip install psycopg2
pip install pyproject-toml
pip install pycountry
pip install pycurrency
# Tryton Server and Modules
pip install proteus==8.0.0
pip install trytond==8.0.0
pip install trytond-currency==8.0.0
pip install trytond-party-avatar==8.0.0
pip install trytond-account-product==8.0.0
pip install trytond-sale==8.0.0
pip install trytond-stock_supply==8.0.0
# SAGE Edu Modules
pip install akademy-party~=8.0.0
pip install akademy-company~=8.0.0
pip install akademy-classe~=8.0.0
pip install akademy-classe-evaluation~=8.0.0
pip install akademy-matriculation~=8.0.0
pip install akademy-matriculation-confirmation~=8.0.0
#pip install akademy-evaluation~=8.0.0
#pip install akademy-dashboard~=8.0.0


echo "📝 Create the file configuration trytond.conf..."
cat << EOF > trytond.conf

[database]
uri = postgresql://sage_education:sage_education@localhost:5432/sage_education
path = ~/sage_education


[web]
listen = 0.0.0.0:8000
root = /home/sage-edu/sage_education/package

EOF

chmod 600 trytond.conf

# --------------------
# 5. Install FrontEnd  
# --------------------
echo "📚 Install Tryton SAO"
wget https://downloads.tryton.org/8.0/tryton-sao-8.0.0.tgz
#mkdir frontend
tar -xvzf tryton-sao-8.0.0.tgz
#sudo mv package frontend
rm -r tryton-sao-8.0.0.tgz
cd package #frontend/package
#cp ./frontend/ .

sudo apt install npm -y
sudo apt install node-grunt-cli
sudo apt install --production --legacy-peer-deps

cd ..

# -----------------------------
# 6. Inicialize the data base
# -----------------------------
echo "🛠 Install Modules..."

sudo -u postgres psql -c "DROP DATABASE IF EXISTS sage_education;"
sudo -u postgres psql -c "CREATE DATABASE sage_education WITH ENCODING 'UTF8' TEMPLATE template1;"
trytond-admin -c trytond.conf -d sage_education --all #--email="admin@example.com" -p
#trytond_import_countries -d 'postgresql://sage_education:5432/comunidadedosaber' -c trytond.conf
#trytond_import_currencies -d 'postgresql://sage_education:5432/comunidadedosaber' -c trytond.conf

echo "🎉 Instalation finish!"
echo "The SAGE Education is running:"
trytond -c trytond.conf
