FROM python:3-alpine3.18
LABEL Author = "Bond"
ENV FLASK_ENV development
ENV FLASK_APP run.py
ENV FLASK_RUN_HOST 0.0.0.0
EXPOSE 5000
RUN mkdir /flask-soft-ui-dashboard
WORKDIR /flask-soft-ui-dashboard
ADD . /flask-soft-ui-dashboard
RUN python3 -m venv .venv && .venv/bin/pip install --upgrade pip && .venv/bin/pip install -r requirements.txt
CMD [".venv/bin/flask", "run"]