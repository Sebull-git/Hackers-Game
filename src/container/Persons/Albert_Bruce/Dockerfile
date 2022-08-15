FROM ubuntu
USER root

# System Stuff
RUN apt update
RUN apt upgrade -y 

# Install


RUN apt install iproute2 sudo -y

# User

RUN useradd -ms /bin/bash Albert 
RUN echo 'Albert:password' | chpasswd
RUN usermod -aG sudo Albert
## User Stuff
USER Albert
WORKDIR /home/Albert


## Create Directorys
RUN mkdir Documents
RUN mkdir Desktop
RUN mkdir Downloads
RUN mkdir Music
RUN mkdir Pictures
RUN mkdir Public
RUN mkdir Templates
RUN mkdir Videos

WORKDIR /home/Albert/Documents
RUN mkdir -p work/support/incidents/
WORKDIR /home/Albert/Documents/work/support/incidents




# End
USER Albert
WORKDIR /home/Albert