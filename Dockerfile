FROM python:3.8
LABEL maintainer="Oil_semi"

WORKDIR /app

COPY ./techtrends/requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY ./techtrends/init_db.py /app/init_db.py

COPY ./techtrends /app

EXPOSE 3111

CMD ["python", "app.py"]
