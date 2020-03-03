# First Dockerfile Implementaion using Sample.sh
ARG version="18.04"
FROM ubuntu:$version
RUN echo "version is "$version
ARG ENCRYPTION_KEY="99$"
LABEL MAINTAINER jballal@devops.com
#since below command has to execute on image so give RUN
RUN mkdir /code
COPY Sample.sh /code/Sample.sh
RUN chmod +x /code/Sample.sh
#since below line has to execute dudring container start do give CMD not RUN command
#CMD /code/Sample.sh /etc/hosts
#MOdified above line as below
RUN echo "encription key is "$ENCRYPTION_KEY
ENTRYPOINT ["sh","/code/Sample.sh"]
CMD ["/etc/hosts"]
