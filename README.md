# REST-API
Setting up our own Python API and database model setup for SQLAlchemy

Commands to run in the virtual environment before creating the Python API -<br />
(.venv) PS C:\FilePath\RESTAPI> pip3 install flask <br />
(.venv) PS C:\FilePath\RESTAPI> pip3 install requests <br />
(.venv) PS C:\FilePath\RESTAPI> pip3 install flask-sqlalchemy <br />
(.venv) PS C:\FilePath\RESTAPI> pip3 freeze > requirements.txt <br />
(.venv) PS C:\FilePath\RESTAPI> python -c "open('application.py', 'w').close()" <br />

Commands to run in powershell after creating the Python API -<br />
PS C:\FilePath\RESTAPI> $env:FLASK_APP = "application.py" <br />
PS C:\FilePath\RESTAPI> $env:FLASK_ENV = "development" <br />
PS C:\FilePath\RESTAPI> flask run <br />
 * Serving Flask app 'application.py' (lazy loading) <br />
 * Environment: development <br />
 * Debug mode: on <br />
 * Restarting with stat <br />
 * Debugger is active! <br />
 * Debugger PIN: ***-***-*** <br />
 * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit) <br />

Route to http://127.0.0.1:5000/ on your browser <br />

On POSTMAN - HTTP methods
1. Create a new POST request and add the drink in JSON format - 
POST http://127.0.0.1:5000/drinks/
2. Create a new GET request -
GET http://127.0.0.1:5000/drinks/4
3. Delete a drink
DELETE http://127.0.0.1:5000/drinks/4

test_api.robot - Created tests in Robot Framework to perform GET, POST and DELETE operations
