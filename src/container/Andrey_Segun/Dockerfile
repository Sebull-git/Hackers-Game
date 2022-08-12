FROM ubuntu
USER root

# System Stuff
RUN apt update
RUN apt upgrade -y 

# Install

RUN apt install openssh-server sudo -y
RUN apt install iproute2 -y

# User

RUN useradd -ms /bin/bash Andrey 
RUN echo 'Andrey:password' | chpasswd
RUN usermod -aG sudo Andrey
## User Stuff
USER Andrey
WORKDIR /home/Andrey




## Create Directorys
RUN mkdir Documents
RUN mkdir Desktop
RUN mkdir Downloads
RUN mkdir Music
RUN mkdir Pictures
RUN mkdir Public
RUN mkdir Templates
RUN mkdir Videos

WORKDIR /home/Andrey/Documents
RUN mkdir -p Work/HighHill-IT/Pentests
WORKDIR /home/Andrey/Documents/HighHill-IT/Pentests


# SSH
USER root
RUN mkdir /home/Andrey/.ssh
## Copy the ssh public key in the authorized_keys file. The idkey.pub below is a public key file you get from ssh-keygen. They are under ~/.ssh directory by default.
COPY src/ssh/id_rsa.pub /home/Andrey/.ssh/authorized_keys
## change ownership of the key file. 
RUN chown Andrey:Andrey /home/Andrey/.ssh/authorized_keys && chmod 600 /home/Andrey/.ssh/authorized_keys
## Start SSH service
RUN service ssh start
## Expose docker port 22
EXPOSE 22

WORKDIR /etc/ssh
RUN ssh-keygen -A
RUN /etc/init.d/ssh start

# End
USER Andrey
WORKDIR /home/Andrey