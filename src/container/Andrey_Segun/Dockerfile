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

# End
USER Andrey
WORKDIR /home/Andrey