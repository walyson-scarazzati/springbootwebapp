FROM centos

RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
#RUN yum install -y java
RUN yum install -y java-11-openjdk

VOLUME /tmp

ADD /target/spring-boot-web-0.0.1-SNAPSHOT.jar myapp.jar
RUN sh -c 'touch / myapp.jar'
ENTRYPOINT [ "java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/myapp.jar" ]