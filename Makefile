setup:
	python3 -m venv ~/flask-app-pj-2

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	pylint --disable=R,C,W1203,W0702 app.py
all: install lint test