FROM docker.io/centos:7

MAINTAINER Danillo Lisboa <danillosl@gmail.com>

RUN yum update -y

RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm > jdk-8u45-linux-x64.rpm \
&& yum install -y jdk-8u45-linux-x64.rpm \
&& rm jdk-8u45-linux-x64.rpm \
&& yum clean all
