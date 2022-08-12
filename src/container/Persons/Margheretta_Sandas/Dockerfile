FROM ubuntu
USER root

# System Stuff
RUN apt update
RUN apt upgrade -y 

# Install


RUN apt install iproute2 sudo -y

# User

RUN useradd -ms /bin/bash Margheretta 
RUN echo 'Margheretta:password' | chpasswd
RUN usermod -aG sudo Margheretta
## User Stuff
USER Margheretta
WORKDIR /home/Margheretta




## Create Directorys
RUN mkdir Documents
RUN mkdir Desktop
RUN mkdir Downloads
RUN mkdir Music
RUN mkdir Pictures
RUN mkdir Public
RUN mkdir Templates
RUN mkdir Videos

WORKDIR /home/Margheretta/Documents
RUN mkdir -p work/Andrey/Documents
RUN mkdir -p work/personal/finances
RUN mkdir -p work/personal/informations



# End
USER Margheretta
WORKDIR /home/Margheretta