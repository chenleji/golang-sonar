FROM golang:1.10
MAINTAINER chenleji@gmail.com

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
 apt-get update -y &&\
 apt-get install default-jre -y &&\
 apt-get install unzip -y &&\
 wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.2.0.1227-linux.zip &&\
 unzip sonar-scanner-cli-3.2.0.1227-linux.zip &&\
 mv sonar-scanner-3.2.0.1227-linux/ /opt/sonar/ &&\
 rm -rf sonar-scanner-cli-3.2.0.1227-linux.zip &&\
 go get -u gopkg.in/alecthomas/gometalinter.v2 &&\
 gometalinter.v2 --install

ENV PATH /opt/sonar/bin:$PATH
CMD sonar-runner -h
