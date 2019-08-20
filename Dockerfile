FROM ubuntu

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils && \
   apt-get -y --no-install-recommends install sudo git

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:/usr/bin/apt-get, /usr/bin/chsh' >> /etc/sudoers
   
COPY . /home/docker/setup
WORKDIR /home/docker/setup

USER docker
ENV HOME /home/docker
RUN ./setup.sh
RUN ./install/zsh.sh

WORKDIR /home/docker/
CMD /usr/bin/zsh

#VOLUME /tmp
#ADD @project.build.finalName@.jar app.jar

#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]
