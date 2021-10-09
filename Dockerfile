FROM ubuntu:18.04
ARG USER \
    PASSWORD
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt-get update && \
    apt-get install -y apt-utils && \
    apt-get install -y openjdk-8-jdk \
		       openjdk-8-jre \
		       nodejs \
		       curl \
		       sudo \
		       openssl && \
    useradd  --create-home \
	     --groups sudo \
	     --shell /bin/bash \
	     --password "$(openssl passwd -1 $PASSWORD)" $USER && \
    passwd -d $USER
USER $USER
RUN curl -sL https://firebase.tools | bash && yes $PASSWORD | passwd $USER 
WORKDIR /home/$USER
