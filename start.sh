export FLASK_APP="entrypoint:app"
export FLASK_ENV="development"
export APP_SETTINGS_MODULE="config.default"
export DATABASE_URL="postgresql:///postgres"

flask db init
flask db migrate -m "Initial_db"
flask db upgrade
flask run
