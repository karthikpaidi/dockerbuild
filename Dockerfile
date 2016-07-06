FROM karthikpaidi/ubuntu:latest
MAINTAINER Karthik <karthik.paidi@gmail.com>

RUN git clone https://github.com/karthikpaidi/testrrepo1.git
RUN javac /testrrepo1/LogFileTest.java
RUN mv testrrepo1/* /
RUN java LogFileTest
RUN mv karthik.html /opt/tomcat/webapps/examples
RUN /opt/tomcat/bin/startup.sh
