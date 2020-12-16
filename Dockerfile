FROM python:3.9.1-slim

ENV APP_HOME /app
WORKDIR $APP_HOME
ADD . $APP_HOME
CMD [ "python", "main.py" ]
