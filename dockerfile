FROM python:3-alpine3.11

WORKDIR /app

#COPY etl.py /app/etl.py

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "etl.py" ]