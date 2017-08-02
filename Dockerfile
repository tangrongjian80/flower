FROM python:2.7.7

MAINTAINER tjsums<tjsums@qq.com>

ADD ./requirements.txt requirements.txt
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
ENV BROKER_URL='amqp://guest:guest@localhost:5672//' 
CMD flower --adress=0.0.0.0 --port=5555 --broker=$BROKER_URL

EXPOSE 5555
