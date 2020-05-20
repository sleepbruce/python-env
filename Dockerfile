FROM python:3.6.8-slim-stretch
#ADD jdk-8u191-linux-x64.tar.gz /usr/java
ENV TZ Asia/Shanghai
RUN set -ex \
        && apt-get update \
        && apt-get install -y gcc g++ \
	&& pip install requests==2.18.4 \
	&& pip install flask==1.0.2 \
	&& pip install flask_cors==3.0.6 \
	&& pip install pymysql==0.8.1 \
	&& pip install pyyaml==3.13 \
	&& pip install xlrd==1.1.0 \
	&& pip install xlwt==1.3.0 \
	&& pip install schedule==0.5.0 \
	&& pip install JPype1==0.6.3 \
	&& pip install numpy==1.15.4 \
	&& pip install JayDeBeApi==1.1.1 \
	&& pip install pandas==0.24.2 \
	&& pip install openpyxl==2.6.2 \
	&& pip install APScheduler==3.6.0 \
	&& pip install configparser==3.7.3 \
	&& pip install matplotlib==3.2.0
#RUN set -ex \
#        && rm -rf /usr/java/jdk1.8.0_191/*src.zip
#ENV JAVA_HOME /usr/java/jdk1.8.0_191
#ENV PATH $PATH:$JAVA_HOME/bin
