FROM java
MAINTAINER neollin
RUN apt-get update
RUN apt-get install -y wget

RUN cd /

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz

RUN tar zxvf apache-tomcat-9.0.7.tar.gz

CMD ["/apache-tomcat-9.0.7/bin/catalina.sh", "run"]

EXPOSE 8080
