FROM Ubuntu

RUN sudo apt-get update -y
RUN sudo apt-get install -y python
RUN sudo apt intall -y python3-pip
RUN pip install flask
RUN pip install flask-mysql

COPY . /home/sakib/PycharmProjects/flaskProject2

ENTRYPOINT FLASK_APP=/home/sakib/PycharmProjects/flaskProject2/app.py flask run

EXPOSE 80
