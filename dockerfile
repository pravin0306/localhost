FROM python:3.7
WORKDIR /
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY app.py ./
EXPOSE 8080
ENTRYPOINT [ "python","./app.py" ]