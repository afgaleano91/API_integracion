FROM python:3

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

# ENV FLASK_APP="entrypoint:app"
# ENV FLASK_ENV="development"
# ENV APP_SETTINGS_MODULE="config.default"
# ENV DATABASE_URL="postgresql://postgres:postgres@localhost/postgres"

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]