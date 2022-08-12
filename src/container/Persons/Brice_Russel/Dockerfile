FROM ubuntu
USER root

# System Stuff
RUN apt update
RUN apt upgrade -y 

# Install

RUN apt install iproute2 sudo -y

# User

RUN useradd -ms /bin/bash Brice 
RUN echo 'Brice:password' | chpasswd
RUN usermod -aG sudo Brice
## User Stuff
USER Brice
WORKDIR /home/Brice




## Create Directorys
RUN mkdir Documents
RUN mkdir Desktop
RUN mkdir Downloads
RUN mkdir Music
RUN mkdir Pictures
RUN mkdir Public
RUN mkdir Templates
RUN mkdir Videos

WORKDIR /home/Brice/Documents
RUN mkdir -p Work/HighHill-IT/Pentests/



# End
USER Brice
WORKDIR /home/Brice