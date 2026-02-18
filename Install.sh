#!/bin/bash
# install.sh - The "All-in-One" Recon Tool Installer

echo "--- Initializing Recon Tool Environment ---"

# 1. System-level tools (Nmap and Python Venv)
sudo apt update
sudo apt install -y nmap python3-venv python3-pip

# 2. Virtual Environment (To keep your system clean)
python3 -m venv venv

# 3. Python libraries (Rich)
./venv/bin/pip install --upgrade pip
./venv/bin/pip install -r requirements.txt

echo "--- Setup Complete ---"
echo "Run your tool with: sudo ./venv/bin/python main.py"
