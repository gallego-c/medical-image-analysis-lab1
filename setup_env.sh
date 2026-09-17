#!/usr/bin/env bash
set -euo pipefail

# Creates a local virtual environment in .venv and installs requirements
if [ -d ".venv" ]; then
  echo "Virtual environment .venv already exists. Activate with: source .venv/bin/activate"
  exit 0
fi

python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt

echo
echo "Virtual environment created at .venv"
echo "Activate it with: source .venv/bin/activate"
echo "If you want to use this env as a Jupyter kernel, inside the activated env run:" 
echo "  pip install ipykernel"
echo "  python -m ipykernel install --user --name=medical-env --display-name='Medical Env'"
