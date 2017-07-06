FROM centos:7

RUN yum install -y git docker make
RUN curl -sSL https://github.com/openshift/source-to-image/releases/download/v1.1.2/source-to-image-v1.1.2-5732fdd-linux-amd64.tar.gz | tar vxz && \
  chmod +x s2i && \
  mv ../s2i /usr/bin/
  
ENV DOCKER_API_VERSION 1.23

CMD sleep infinity
