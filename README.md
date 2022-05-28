# DEMOAPP

This application can be used for demonstration or testing.

## Technical specifications:

- Developed in  Flask(Python)

- Can be installed and used in Mac, Windows or Linux.

## Preview

[Live Preview](http://demo-appx.herokuapp.com)

## How to deploy

### Option 1 - Install using python

1. Install git, python and pip on your system.

2. Run `git clone https://github.com/kamal2k89/demoapp.git` and `cd demoapp`

3. `pip install -r requirements.txt`

4. `python run.py`

5. You can now open this application on browser `http://localhost/`


### Option 2 - Run on docker container

1. Install docker on your system.

2. Run `docker run -p 8080:80 kamalk8s/demo-app:latest`

3. Now you can launch this application on your browser at `http://localhost:8080`.


Happy learning.