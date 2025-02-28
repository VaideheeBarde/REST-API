# REST-API
Setting up our own Python API and database model setup for SQLAlchemy

Commands to run in the virtual environment before creating the Python API -
(.venv) PS C:\FilePath\RESTAPI> pip3 install flask
(.venv) PS C:\FilePath\RESTAPI> pip3 install requests
(.venv) PS C:\FilePath\RESTAPI> pip3 install flask-sqlalchemy
(.venv) PS C:\FilePath\RESTAPI> pip3 freeze > requirements.txt
(.venv) PS C:\FilePath\RESTAPI> python -c "open('application.py', 'w').close()"

Commands to run in powershell after creating the Python API -
PS C:\FilePath\RESTAPI> $env:FLASK_APP = "application.py"
PS C:\FilePath\RESTAPI> $env:FLASK_ENV = "development"
PS C:\FilePath\RESTAPI> flask run
 * Serving Flask app 'application.py' (lazy loading)
 * Environment: development
 * Debug mode: on
 * Restarting with stat
 * Debugger is active!
 * Debugger PIN: ***-***-***
 * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)

Route to http://127.0.0.1:5000/ on your browser 

On POSTMAN - HTTP methods
1. Create a new POST request and add the drink in JSON format - 
POST http://127.0.0.1:5000/drinks/
2. Create a new GET request -
GET http://127.0.0.1:5000/drinks/4
3. Delete a drink
DELETE http://127.0.0.1:5000/drinks/4

test_api.robot - Created tests in Robot Framework to perform GET, POST and DELETE operations
