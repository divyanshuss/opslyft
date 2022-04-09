FROM python:alpine3.7

COPY . /app

WORKDIR /app

ENV msg="The stage one is completed"

RUN pip install -r requirements.txt

EXPOSE 5001

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

