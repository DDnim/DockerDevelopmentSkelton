If not Exist .local_env python -m venv .local_env
call .env/Scripts/activate.bat
pip install poetry
poetry install
