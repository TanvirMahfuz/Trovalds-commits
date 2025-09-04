
FROM python:3.12-alpine

WORKDIR /app

COPY prg.py .

RUN pip install requests

CMD ["python", "prg.py"]
