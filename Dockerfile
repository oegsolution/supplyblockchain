FROM ubuntu

WORKDIR /usr/src/app
ENV FLASK_APP node_server.py

#COPY 

RUN apt-get update
RUN apt-get install -y python python-pip
RUN pip install flask requests
RUN export FLASK_APP=node_server.py
RUN flask run --port 8000 &
RUN python run_app.py &

#CMD ["bash"]

EXPOSE 5000
EXPOSE 8000
EXPOSE 8001

ENTRYPOINT ["/bin/bash"]
