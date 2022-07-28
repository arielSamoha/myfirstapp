FROM python

RUN pip install flask

WORKDIR /home/arielweb/k8s/nginx  

COPY ./app.py .

CMD [ "python","./app.py" ]