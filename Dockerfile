
FROM python:3.12-alpine

WORKDIR /app

COPY fetch_commits.py .

RUN pip install requests

CMD ["python", "prg.py"]
